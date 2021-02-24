//
//  TableViewController.swift
//  SwipeViewCell
//
//  Created by MAC on 12/01/21.
//

import UIKit

class TableViewController: UITableViewController {
    let jogos = ["Enduro","Frogger", "FrostBite","Pitfall","River Raid"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // 1
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 2
        return jogos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 3
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = jogos[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    {
        // 1
        let shareAction = UIContextualAction(style: .normal, title: "Share" , handler: { (contextualAction, view, boolValue) -> Void in
            // 2
            let shareMenu = UIAlertController(title: nil, message: "Share using", preferredStyle: .actionSheet)
            
            let twitterAction = UIAlertAction(title: "Twitter", style: .default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            shareMenu.addAction(twitterAction)
            shareMenu.addAction(cancelAction)
            
            self.present(shareMenu, animated: true, completion: nil)
        })
        
        
        
        // 3
        let rateAction = UIContextualAction(style: .normal, title: "Rate" , handler: { (contextualAction, view, boolValue) -> Void in
            // 4
            let rateMenu = UIAlertController(title: nil, message: "Rate this App", preferredStyle: .actionSheet)
            
            let appRateAction = UIAlertAction(title: "Rate", style: .default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            rateMenu.addAction(appRateAction)
            rateMenu.addAction(cancelAction)
            
            self.present(rateMenu, animated: true, completion: nil)
        })
        // 5
        
        let swipeActions = UISwipeActionsConfiguration(actions: [shareAction,rateAction])

            return swipeActions

        
    }


}
