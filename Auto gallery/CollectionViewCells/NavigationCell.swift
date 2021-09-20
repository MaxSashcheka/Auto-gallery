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
        
    }
    
    func configure(withGroup group: Group) {
        nameLabel.text = group.name
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CarCell", bundle: nil)
    }

}
