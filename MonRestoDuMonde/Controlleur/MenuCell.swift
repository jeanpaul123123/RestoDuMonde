//
//  MenuCell.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 10/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    @IBOutlet weak var vue: UIView!
    @IBOutlet weak var nomDuMenu: UILabel!

    @IBOutlet weak var imageDuMenu: UIImageView!
    
    var menu: Menu!
    
    func miseEnPlace(menu: Menu) {
        self.menu = menu
        
        vue.layer.cornerRadius = 10
        vue.layer.borderColor = NOIR.cgColor
        vue.layer.borderWidth = 1
        
        imageDuMenu.image = self.menu.image
        imageDuMenu.contentMode = .scaleAspectFill
        // A Boolean value that determines whether subviews are confined to the bounds of the view.
        imageDuMenu.clipsToBounds = true
        // pour que l'image du menu soit ronde
        imageDuMenu.layer.cornerRadius = imageDuMenu.frame.width / 2
        imageDuMenu.layer.borderWidth = 2
        imageDuMenu.layer.borderColor = GRIS_TRES_CLAIR.cgColor
        
        nomDuMenu.text = "Menu " + self.menu.pays
        nomDuMenu.textColor = GRIS_TRES_FONCE
        nomDuMenu.font = FONT_DE_BASE
        // A Boolean value indicating whether the font size should be reduced in order to fit the title string into the label’s bounding rectangle.
        nomDuMenu.adjustsFontSizeToFitWidth = true
        nomDuMenu.textAlignment = .center
    }
    

}
