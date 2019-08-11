//
//  Degrade.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 11/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//


import UIKit

class Degrade: CAGradientLayer {
    
    override init(layer: Any) {
        super.init(layer: layer)
        miseEnPlace()
    }
    
    override init() {
        super.init()
        miseEnPlace()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        miseEnPlace()
    }
    
    func miseEnPlace() {
        frame = UIScreen.main.bounds
        colors = [NOIR.cgColor, GRIS_TRES_FONCE.cgColor]
        startPoint = CGPoint(x: 0, y: 0)
        endPoint = CGPoint(x: 1, y: 1)
        // si on avait mis 0 et 0.5 le dégradé se serait mis en place sur la moitié puis le reste en GRIS_TRES_FONCE
        locations = [0, 1]
    }
    
    
}
