//
//  ALaCarteController.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 10/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class ALaCarteController: UITableViewController {
    
    let cellID = "PlatCell"
    var tousLesPlats = [ALaCarte]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "A la carte"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    // il y a 3 sections ...
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tousLesPlats.count
    }
    
    // ... et autant de plats par section ...
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tousLesPlats[section].plats.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // on récupère (c'est une BOUCLE) tous les plats par section et par rows (lignes de chaque section)
        let plat = tousLesPlats[indexPath.section].plats[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PlatCell {
            cell.miseEnPlace(plat: plat)
            return cell
        }
        return UITableViewCell()

        // Configure the cell...

        //return cell
    }
    
    

}
