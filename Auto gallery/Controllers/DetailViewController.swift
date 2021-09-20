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

extension DetailViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groupCollection.groups[selectedIndex].cars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarCell.reuseIdentifier, for: indexPath) as! CarCell
        
        let group = groupCollection.groups[selectedIndex]
        let car = group.cars[indexPath.item]
        cell.configure(withCar: car)
        
        return cell
    }
    
    
}

extension DetailViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let itemWidth = collectionView.frame.width - carCollectionInsets.left * 2
        
        return CGSize(width: itemWidth, height: itemWidth * 1.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return carCollectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return carCollectionInsets.left * 2
    }
    
}
