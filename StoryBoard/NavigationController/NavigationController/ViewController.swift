//
//  ViewController.swift
//  NavigationController
//
//  Created by Trainning on 30/01/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Root View"
        
    }


    @IBAction func SeguePrimerVC(_ sender: Any) {
        performSegue(withIdentifier: "SegueParaPrimerVC", sender: self)
    }
}

