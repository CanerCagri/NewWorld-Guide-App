//
//  UICollectionViewCell+Ext.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 28.09.2022.
//

import UIKit

extension UICollectionViewCell {
    func addShadow() {
        layer.cornerRadius = 15.0
        layer.borderWidth = 0.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 5.0
        layer.shadowOpacity = 1
        layer.masksToBounds = false
    }
}
