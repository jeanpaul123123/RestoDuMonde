//
//  AlaCarte.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 11/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import Foundation

class ALaCarte {
    
    private var _type: Type
    private var _plats: [Plat]
    
    var type: Type {
        return _type
    }
    
    var plats: [Plat] {
        return _plats
    }
    
    init(type: Type) {
        self._type = type
        self._plats = [Plat]()
    }
}
