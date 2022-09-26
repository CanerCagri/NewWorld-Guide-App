//
//  UIHelper.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 20.09.2022.
//

import UIKit

enum UIHelper {
    
    static func createColumnFlowLayout(view: UIView, columnCount: CGFloat) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpace: CGFloat = 10
        let availableWidth = width - (padding * columnCount - 1) - (minimumItemSpace * columnCount - 1)
        let itemWidth = availableWidth / columnCount
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
     
        return flowLayout
    }
}

enum Section {
    case main
}
