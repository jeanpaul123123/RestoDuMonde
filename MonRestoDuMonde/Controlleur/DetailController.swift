//
//  DetailController.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 13/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(Degrade())
        view.bringSubviewToFront(scroll)
        
        // #clicmenu
        guard menu != nil else {return}
        miseEnPlace(menu: menu!)
        
    }
    // #clicmenu
    func miseEnPlace(menu: Menu){
        print("Ca marche on a le menu : \(menu.pays)")
    }


}
