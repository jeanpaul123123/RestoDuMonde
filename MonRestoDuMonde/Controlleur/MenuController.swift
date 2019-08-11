//
//  MenuController.swift
//  MonRestoDuMonde
//
//  Created by Jean-Paul Berthelot on 10/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class MenuController:  UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let cellID = "MenuCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Les menus du monde" // c'est dans le navigation controller (MonNav) que l'on définie la police
        
        collectionView.delegate = self
        collectionView.dataSource = self

    }
    // différence avec la table view : ici on a numberOfItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // voyant cela on va créer une classe héritant de UICollectionView
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? MenuCell {
            cell.backgroundColor = GRIS_TRES_FONCE
            return cell
        }
        return UICollectionViewCell()
    }
    
    // Le layout pour redimmensionner les cells
    // comme on l'a fait hériter de UICollectionViewDelegateFlowLayout, on a les fonctions layout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largeur = collectionView.frame.width / 2 - 10
        return CGSize(width: largeur, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

}
