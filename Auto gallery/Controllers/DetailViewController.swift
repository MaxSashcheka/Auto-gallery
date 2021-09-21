//
//  ViewController.swift
//  Auto gallery
//
//  Created by Max Sashcheka on 9/20/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var carCollectionView: UICollectionView!
    @IBOutlet weak var navigationCollectionView: UICollectionView!
    
    var groupCollection = GroupCollection()
    var carCollectionInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    var navigationCollectionInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carCollectionView.delegate = self
        carCollectionView.dataSource = self
        carCollectionView.register(CarCell.nib(), forCellWithReuseIdentifier: CarCell.reuseIdentifier)
        carCollectionView.isPagingEnabled = true
        
        navigationCollectionView.delegate = self
        navigationCollectionView.dataSource = self
        navigationCollectionView.register(NavigationCell.nib(), forCellWithReuseIdentifier: NavigationCell.reuseIdentifier)
        
    }

}

//MARK: - UICollectionViewDataSource & UICollectionViewDelegate

extension DetailViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == navigationCollectionView {
            return groupCollection.groups.count
        } else {
            return groupCollection.groups[selectedIndex].cars.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == navigationCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NavigationCell.reuseIdentifier, for: indexPath) as! NavigationCell
            
            // Check if current cell should be selected (filled with color)
            cell.isSelectedSetup(selectedIndex == indexPath.item)
  
            let group = groupCollection.groups[indexPath.item]
            cell.configure(withGroup: group)
            
            return cell
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarCell.reuseIdentifier, for: indexPath) as! CarCell
            
            let group = groupCollection.groups[selectedIndex]
            let car = group.cars[indexPath.item]
            cell.configure(withCar: car)
            
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == navigationCollectionView {
            selectedIndex = indexPath.item
            
            navigationCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            carCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: true)
            
            navigationCollectionView.reloadData()
            carCollectionView.reloadData()
        }
    }
    
}

//MARK: - UICollectionViewDelegateFlowLayout

extension DetailViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == navigationCollectionView {
            let group = groupCollection.groups[indexPath.item]
            let itemWidth = group.name.widthOfString(usingFont: UIFont.systemFont(ofSize: 17)) + 30
            let itemHeight = navigationCollectionView.frame.height - navigationCollectionInsets.bottom * 2
            
            return CGSize(width: itemWidth, height: itemHeight)
        } else {
            let itemWidth = collectionView.frame.width - carCollectionInsets.left * 2
            return CGSize(width: itemWidth, height: itemWidth * 1.2)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == navigationCollectionView {
            return navigationCollectionInsets
        } else {
            return carCollectionInsets
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return carCollectionInsets.left * 2
    }
    
}
