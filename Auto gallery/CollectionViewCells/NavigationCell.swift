//
//  NavigationCell.swift
//  Auto gallery
//
//  Created by Max Sashcheka on 9/21/21.
//

import UIKit

class NavigationCell: UICollectionViewCell {
    
    static let reuseIdentifier = "NavigationCell"
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1).cgColor
        layer.cornerRadius = 15
        backgroundColor = .white
 
    }
    
    func isSelectedSetup(_ isSelected: Bool) {
        if isSelected {
            backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            nameLabel.textColor = .white
        } else {
            backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            nameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)

        }
    }
    
    func configure(withGroup group: Group) {
        nameLabel.text = group.name
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "NavigationCell", bundle: nil)
    }

}
