//
//  UIHelper.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 20.09.2022.
//

import UIKit

enum UIHelper {
    
    static func createThreeColumnFlowLayout(view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpace: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpace * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
     
        return flowLayout
    }
    
    static func createFourColumnFlowLayout(view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 24
        let minimumItemSpace: CGFloat = 20
        let availableWidth = width - (padding * 3) - (minimumItemSpace * 3)
        let itemWidth = availableWidth / 4
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 180)
     
        return flowLayout
    }
}

enum Section {
    case main
}
