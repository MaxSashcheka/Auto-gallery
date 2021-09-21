//
//  CarCell.swift
//  Auto gallery
//
//  Created by Max Sashcheka on 9/21/21.
//

import UIKit

class CarCell: UICollectionViewCell {

    static let reuseIdentifier = "CarCell"
    
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var carCostLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4).cgColor
        setup(withCornerRadius: 30, shadowRadius: 8, shadowColor: shadowColor)
    }
    
    func configure(withCar car: Car) {
        carImageView.image = car.image
        carNameLabel.text = car.name
        carCostLabel.text = car.cost
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CarCell", bundle: nil)
    }

}
