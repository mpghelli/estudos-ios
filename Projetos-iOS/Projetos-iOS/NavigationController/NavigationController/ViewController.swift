//
//  ViewController.swift
//  NavigationController
//
//  Created by MAC on 11/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func mostrarPrimerVC(_ sender: Any) {
        performSegue(withIdentifier: "SeguePrimerVC", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Root View"
    }


}

