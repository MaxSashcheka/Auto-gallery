//
//  MainViewController.swift
//  Auto gallery
//
//  Created by Max Sashcheka on 9/21/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var autoGallery = AutoGallery()
    var itemsPerRow: CGFloat = 2
    var sectionInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MainCell.nib(), forCellWithReuseIdentifier: MainCell.reuseIdentifier)
        
        setupNavigationBar()
        
        let editButton = CustomButton()
        let buttonTitle = "Edit"
        let buttonWidth = "Edit".widthOfString(usingFont: UIFont.systemFont(ofSize: 12, weight: .medium)) + 30
        editButton.setTitle(buttonTitle, for: .normal)
        editButton.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: 20)

        editButton.addTarget(self, action: #selector(editButtonHandler), for: .touchUpInside)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: editButton)
    }
    
    @objc private func editButtonHandler() {
        let popUp = ConfigureMainScreenViewController.create(withDelegate: self)
        let sbPopUp = SBCardPopupViewController.init(contentViewController: popUp)
        sbPopUp.cornerRadius = 30
        sbPopUp.show(onViewController: self)
        
    }
    
    private func setupNavigationBar() {
        let titleLabel = UILabel()
        let attributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 25, weight: .bold),
            NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        ]
        titleLabel.attributedText = NSAttributedString(string: "\(autoGallery.name)", attributes: attributes)
        navigationItem.titleView = titleLabel
        
    
    }
}


// MARK: - UICollectionViewDelegate & UICollectionViewDataSource

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return autoGallery.groupsCollections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCell.reuseIdentifier, for: indexPath) as! MainCell
        
        let groupCollection = autoGallery.groupsCollections[indexPath.item]
        cell.configure(withGroupCollection: groupCollection)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        
        let groupCollection = autoGallery.groupsCollections[indexPath.item]
        detailViewController.groupCollection = groupCollection
            
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingWidth = (itemsPerRow + 1) * sectionInsets.left
        let availableWidth = collectionView.frame.width - paddingWidth
        let itemWidth = availableWidth / itemsPerRow
        
        return CGSize(width: itemWidth, height: itemWidth * 1.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
}

extension MainViewController: MainScreenConfigurationDelegate {
    func setup(withItemsPerRow itemsPerRow: CGFloat, collectionViewScrollDirection scrollDirection: UICollectionView.ScrollDirection) {
        self.itemsPerRow = itemsPerRow
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = scrollDirection
            collectionView.collectionViewLayout = layout

        }
        collectionView.reloadData()
    }
    
    
}
