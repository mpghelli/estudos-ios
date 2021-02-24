//
//  CollectionViewControllerAlfabeto.swift
//  CollectionViewCell
//
//  Created by MAC on 13/01/21.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewControllerAlfabeto: UICollectionViewController {
    var alfabeto = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        
        for i in str {
            alfabeto.append(String(i))
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        
        // Do any additional setup after loading the view.
    }

 

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // 1
        // return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 2
        // return the number of items
        return alfabeto.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // 3
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! AlfabetoCell
        
        // Configure the cell
        cell.alfabetoLabel.text = alfabeto[indexPath.row]
    
        return cell
        
    }

    // MARK: UICollectionViewDelegate

    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let temp = alfabeto.remove(at: sourceIndexPath.item)
        alfabeto.insert(temp, at: destinationIndexPath.item)
    }

}
