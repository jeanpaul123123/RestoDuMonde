//
//  MonTabBar.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 10/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class MonTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = GRIS_TRES_FONCE
        // item de la tab bar en bas
        tabBar.tintColor = GRIS_TRES_CLAIR
    }
}
