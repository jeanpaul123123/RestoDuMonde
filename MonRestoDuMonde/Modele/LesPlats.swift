//
//  LesPlats.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 11/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import Foundation

// Class qui permet d'accéder à tous les plats pour composer les Alacarte et les menus

// elle ramène l'ensemble des menus
class LesPlats {
    static let obtenir = LesPlats()

    func lesMenus() -> [Menu] {
        var menus = [Menu]()
        let it = Menu(pays: ITALIE, image: #imageLiteral(resourceName: "pizza"))
        let jap = Menu(pays: JAPON, image: #imageLiteral(resourceName: "sushis"))
        let chi = Menu(pays: CHINE, image: #imageLiteral(resourceName: "crevette aigre doux"))
        let usa = Menu(pays: USA, image: #imageLiteral(resourceName: "burger"))
        let mex = Menu(pays: MEXIQUE, image: #imageLiteral(resourceName: "fajitas"))
        let esp = Menu(pays: ESPAGNE, image: #imageLiteral(resourceName: "paella"))
        let sui = Menu(pays: SUISSE, image: #imageLiteral(resourceName: "fondue"))
        menus.append(contentsOf: [it, jap, chi, usa, mex, esp, sui])
        return menus
    }
}
