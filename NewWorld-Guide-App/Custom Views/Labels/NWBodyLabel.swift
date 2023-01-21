//
//  NWBodyLabel.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 21.01.2023.
//

import UIKit

class NWBodyLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)
        configure()
        self.textAlignment = textAlignment
        self.font = UIFont(name: "GillSans-SemiBold", size: fontSize)
        self.textColor = .label
        self.minimumScaleFactor = 0.9
    }
    
    init(text: String, textAlignment: NSTextAlignment, fontSize: CGFloat, textColor: UIColor, minimumScale: CGFloat) {
        super.init(frame: .zero)
        configure()
        self.textAlignment = textAlignment
        self.font = UIFont(name: "GillSans-SemiBold", size: fontSize)
        self.textColor = textColor
        self.text = text
        self.minimumScaleFactor = minimumScale
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        adjustsFontSizeToFitWidth = true
        lineBreakMode = .byTruncatingTail
    }
}
