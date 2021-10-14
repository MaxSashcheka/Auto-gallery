//
//  Extensions.swift
//  Auto gallery
//
//  Created by Max Sashcheka on 9/20/21.
//

import UIKit

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: fontAttributes)
        return ceil(size.width)
    }
}

extension UIColor {
    static let lightGreenSea: UIColor = UIColor(red: 33.0 / 255.0, green: 176.0 / 255.0, blue: 142.0 / 255.0, alpha: 1.0)
    static let chillSky: UIColor = UIColor(red: .zero, green: 178.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    static let quarterBlack: UIColor = UIColor(red: .zero, green: .zero, blue: .zero, alpha: 0.25)
}

extension UIView {
    func setup(withCornerRadius cornerRadius: CGFloat, shadowRadius: CGFloat, shadowColor: CGColor) {
        layer.masksToBounds = false
        backgroundColor = .white
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = 1.0
        layer.shadowOffset = .zero
    }
    
    func changeShadowColor(isSelected: Bool) {
        if isSelected {
            layer.shadowColor = UIColor.red.cgColor
        } else {
            layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        }
    }
}

