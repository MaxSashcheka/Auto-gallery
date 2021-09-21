//
//  MainCell.swift
//  Auto gallery
//
//  Created by Max Sashcheka on 9/21/21.
//

import UIKit

class MainCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let reuseIdentifier = "MainCell"
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = layer.frame.height / 9
        backgroundColor = .white
        
    }
    
    func configure(withGroupCollection groupCollection: GroupCollection) {
        imageView.image = groupCollection.image
        nameLabel.text = groupCollection.name
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "MainCell", bundle: nil)
    }

}
