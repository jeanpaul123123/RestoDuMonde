//
//  Menu.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 11/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class Menu {
    
    private var _pays: String
    private var _image: UIImage
    private var _plats: [Plat]
    
    var pays: String {
        return _pays
    }
    
    var image: UIImage {
        return _image
    }
    
    var plats: [Plat] {
        return _plats
    }
    
    init(pays: String, image: UIImage) {
        self._pays = pays
        self._image = image
        // avant la fonction ajouterPlatAuMenu
        //self._plats = [Plat]()
        self._plats = LesPlats.obtenir.ajouterPlatAuMenu(pays: self._pays)
    }
    
}
