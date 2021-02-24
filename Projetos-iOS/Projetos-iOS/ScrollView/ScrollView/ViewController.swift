//
//  ViewController.swift
//  ScrollView
//
//  Created by MAC on 13/01/21.
//

import UIKit

class ViewController: UIViewController {

    let colors = [UIColor.purple, UIColor.brown, UIColor.orange, UIColor.systemPink]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for index in 0..<colors.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let subView = UIView(frame: frame)
            subView.backgroundColor = colors[index]
            scrollView.addSubview(subView)
        }
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width * CGFloat(colors.count), height: scrollView.frame.size.height)
    }
    

    

}

