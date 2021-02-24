//
//  ContentView.swift
//  SwiftUILocalNotif
//
//  Created by MAC on 14/01/21.
//

import Foundation
import SwiftUI

class LocalNotificationManager: ObservableObject {
    var notifications = [Notification]()
    
    
    init() {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
                if granted == true && error == nil {
                    print("Notifications permitted")
                } else {
                    print("Notifications not permitted")
                }
            }
        }
    
    func sendNotification(title: String, subtitle: String?, body: String, launchIn: Double){
            
            let content = UNMutableNotificationContent()
            content.title = title
            if let subtitle = subtitle {
                content.subtitle = subtitle
            }
            content.body = body
               
            let imageName = "logo"
            guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }
            let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
            content.attachments = [attachment]
        
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: launchIn, repeats: false)
            let request = UNNotificationRequest(identifier: "demoNotification", content: content, trigger: trigger)
        
            
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
            
            }
            
    }



struct ContentView: View {
    
    //8. Observe the notification manager in your SwiftUI view
    @ObservedObject var notificationManager = LocalNotificationManager()
    
    @State var showFootnote = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    withAnimation {
                        self.showFootnote.toggle()
                        //9. Use the send notification function
                        self.notificationManager.sendNotification(title: "Hurray!", subtitle: nil, body: "If you see this text, launching the local notification worked!", launchIn: 5)
                    }
                }) {
                    Text("Launch Local Notification 🚀")
                        .font(.title)
                }
                if showFootnote {
                    Text("Notification Arrives in 5 seconds")
                        .font(.footnote)
                }
            }
                .navigationBarTitle("Local Notification Demo", displayMode: .inline)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
