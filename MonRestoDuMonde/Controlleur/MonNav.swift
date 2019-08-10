//
//  MonNav.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 10/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class MonNav: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.barTintColor = NOIR
        // item de la tab bar en bas
        navigationBar.tintColor = GRIS_TRES_CLAIR
        navigationBar.titleTextAttributes = [.font: FONT_DE_BASE,.foregroundColor: GRIS_TRES_CLAIR]

    }
    



}
