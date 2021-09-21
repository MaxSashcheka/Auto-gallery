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
    
    var delegate: MainScreenConfigurationDelegate?
    
    
    @IBOutlet var labels: [UILabel]!
    
    @IBOutlet weak var numberOfItemsSegmentedControl: UISegmentedControl!
    @IBOutlet weak var scrollDirectionSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        labels.forEach { $0.textColor = .lightGreenSea }
        numberOfItemsSegmentedControl.selectedSegmentTintColor = .lightGreenSea
        scrollDirectionSegmentedControl.selectedSegmentTintColor = .lightGreenSea
        numberOfItemsSegmentedControl.layer.borderWidth = 1
        numberOfItemsSegmentedControl.layer.borderColor = UIColor.gray.cgColor
        
        scrollDirectionSegmentedControl.layer.borderWidth = 1
        scrollDirectionSegmentedControl.layer.borderColor = UIColor.gray.cgColor
        
    }
    
    static func create(withDelegate delegate: MainScreenConfigurationDelegate) -> UIViewController {
        guard let popUpViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ConfigureMainScreenViewController") as? ConfigureMainScreenViewController else { return UIViewController() }
        popUpViewController.delegate = delegate
        
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
    

}
