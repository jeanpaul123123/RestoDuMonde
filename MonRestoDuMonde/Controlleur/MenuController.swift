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
    
    var menus = [Menu]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Les menus du monde" // c'est dans le navigation controller (MonNav) que l'on définie la police
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // utilisaiton de la fonction static obtenir pour ramener tous les menus
        // permet en fait de ne pas utiliser new et la fonction Menus ... plus simple
        menus = LesPlats.obtenir.lesMenus()
        
        // pour recharger les données si c'est un peu long .. .on fait
        // reloadData will discard any uncommitted updates :
        // se débarassera de toutes mises à jour non faîtes = assure la mise à jour
        collectionView.reloadData()
        
        

    }
    // différence avec la table view : ici on a numberOfItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // voyant cela on va créer une classe héritant de UICollectionView
        
        // on va parcourir tous les items (et non les rows comme pour une table view)
        // c'est cela qui va faire une boucle pour tous les items
        let menu = menus[indexPath.item]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? MenuCell {
            // Solution avant de ramener la cellulle
            //cell.backgroundColor = GRIS_TRES_FONCE
            cell.miseEnPlace(menu: menu)
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
