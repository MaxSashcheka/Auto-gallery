//
//  ConfigureMainScreenViewController.swift
//  Auto gallery
//
//  Created by Max Sashcheka on 9/21/21.
//

import UIKit

protocol MainScreenConfigurationDelegate {
    func setup(withItemsPerRow itemsPerRow: CGFloat, collectionViewScrollDirection scrollDirection: UICollectionView.ScrollDirection)
}

class ConfigureMainScreenViewController: UIViewController, SBCardPopupContent {
    
    var popupDismisser: SBCardPopupDismisser?
    var allowsTapToDismissPopupCard = false
    var allowsSwipeToDismissPopupCard = false
    var properti: String!
    
    var delegate: MainScreenConfigurationDelegate?
    
    @IBOutlet var labels: [UILabel]!
    
    @IBOutlet weak var numberOfItemsSegmentedControl: UISegmentedControl!
    var numberOfItemsSegmentedControlInitialValue: Int!
    @IBOutlet weak var scrollDirectionSegmentedControl: UISegmentedControl!
    var scrollDirectionSegmentedControlInitialValue: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labels.forEach { $0.textColor = .lightGreenSea }
        configureSegmentedControls()
    }
    
    private func configureSegmentedControls() {
        numberOfItemsSegmentedControl.selectedSegmentTintColor = .lightGreenSea
        scrollDirectionSegmentedControl.selectedSegmentTintColor = .lightGreenSea
        numberOfItemsSegmentedControl.layer.borderWidth = 1
        numberOfItemsSegmentedControl.layer.borderColor = UIColor.gray.cgColor
        
        scrollDirectionSegmentedControl.layer.borderWidth = 1
        scrollDirectionSegmentedControl.layer.borderColor = UIColor.gray.cgColor
        
        numberOfItemsSegmentedControl.selectedSegmentIndex = numberOfItemsSegmentedControlInitialValue
        scrollDirectionSegmentedControl.selectedSegmentIndex = scrollDirectionSegmentedControlInitialValue
    }
    
    static func create(withDelegate delegate: MainScreenConfigurationDelegate, itemsPerRow: CGFloat, scrollDirection: UICollectionView.ScrollDirection) -> UIViewController {
        guard let popUpViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ConfigureMainScreenViewController") as? ConfigureMainScreenViewController else { return UIViewController() }
        popUpViewController.delegate = delegate
        popUpViewController.configure(itemsPerRow: itemsPerRow, scrollDirection: scrollDirection)
        
        return popUpViewController
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        let numberOfItemsPerRow = numberOfItemsSegmentedControl.selectedSegmentIndex + 1
        
        let direction = (scrollDirectionSegmentedControl.selectedSegmentIndex == 0) ? UICollectionView.ScrollDirection.vertical : UICollectionView.ScrollDirection.horizontal
        
        delegate?.setup(withItemsPerRow: CGFloat(numberOfItemsPerRow), collectionViewScrollDirection: direction)
        popupDismisser?.dismiss()
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        popupDismisser?.dismiss()
    }
    
    func configure(itemsPerRow: CGFloat, scrollDirection: UICollectionView.ScrollDirection) {
        numberOfItemsSegmentedControlInitialValue = Int(itemsPerRow) - 1
        if scrollDirection == .vertical {
            scrollDirectionSegmentedControlInitialValue = 0
        } else {
            scrollDirectionSegmentedControlInitialValue = 1
        }
    }

}
