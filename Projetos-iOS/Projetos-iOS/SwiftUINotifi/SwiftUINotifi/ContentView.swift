//
//  ContentView.swift
//  SwiftUINotifi
//
//  Created by MAC on 14/01/21.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        Button("Enviar Notificação") {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound])  {
                success, error in
                    if success {
                        print("autorização garantida")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
            }
            
            let content = UNMutableNotificationContent()
                content.title = "SwiftUI Notification App"
                content.subtitle = "enviada a partir do meu app"
                content.body = " Notificação Disparada"
                content.sound = UNNotificationSound.default
                   
            // 2
            let imageName = "applelogo"
            guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }
            
            let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
            
            content.attachments = [attachment]
                   
            // 3
           let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
    
           let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
           
           // 4
           UNUserNotificationCenter.current().add(request)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
