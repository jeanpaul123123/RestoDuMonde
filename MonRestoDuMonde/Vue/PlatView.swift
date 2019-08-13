//
//  PlatView.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 13/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

// #contenu
class PlatView: UIView {

    var typeDePlat: UILabel?
    var imageDuPlat: UIImageView?
    var descriptionDuPlat: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func miseEnPlace(plat: Plat) {
        typeDePlat = UILabel(frame: CGRect(x: 20, y: 0, width: frame.width - 40, height: 50))
        typeDePlat?.text = convertirTypeEnPlat(type: plat.type)
        typeDePlat?.textAlignment = .left
        typeDePlat?.font = FONT_DE_BASE
        typeDePlat?.textColor = GRIS_TRES_CLAIR
        guard typeDePlat != nil else { return }
        addSubview(typeDePlat!)
        var maxY = typeDePlat!.frame.maxY
        
        imageDuPlat = UIImageView(frame: CGRect(x: 0, y: maxY, width: frame.width, height: 200))
        imageDuPlat?.image = plat.image
        imageDuPlat?.contentMode = .scaleAspectFill
        imageDuPlat?.clipsToBounds = true
        guard imageDuPlat != nil else { return }
        addSubview(imageDuPlat!)
        maxY = imageDuPlat!.frame.maxY
        
        descriptionDuPlat = UILabel(frame: CGRect(x: 20, y: maxY, width: frame.width - 40, height: 100))
        descriptionDuPlat?.numberOfLines = 0
        descriptionDuPlat?.text = plat.desc
        descriptionDuPlat?.font = FONT_DE_BASE
        descriptionDuPlat?.textColor = GRIS_TRES_CLAIR
        descriptionDuPlat?.textAlignment = .center
        guard descriptionDuPlat != nil else { return }
        addSubview(descriptionDuPlat!)
    }
    
    func convertirTypeEnPlat(type: Type) -> String {
        switch type {
        case .entree: return "Entrée"
        case .platPrincipal: return "Plat principal"
        case .dessert: return "Dessert"
        }
    }

}
