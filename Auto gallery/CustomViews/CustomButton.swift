//
//  HeaderViewButton.swift
//  Contacts
//
//  Created by Max Sashcheka on 9/17/21.
//

import UIKit

class CustomButton: UIButton {
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        setTitleColor(.lightGreenSea, for: .normal)
        backgroundColor = .white
        layer.shadowColor = UIColor.quarterBlack.cgColor
        layer.shadowRadius = 3
        layer.shadowOpacity = 1.0
        layer.shadowOffset = .zero
        layer.cornerRadius = 15
    }

    override var isHighlighted: Bool {
        didSet {
            UIView.transition(with: self, duration: 0.2, options: [.transitionCrossDissolve]) { [self] in
                if isHighlighted {
                    layer.shadowRadius = 4.0
                    layer.shadowColor = UIColor.lightGreenSea.cgColor
                } else {
                    layer.shadowRadius = 3.0
                    layer.shadowColor = UIColor.quarterBlack.cgColor
                }
            }
        }
    }
}
