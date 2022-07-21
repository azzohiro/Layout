//
//  HomeViewController.swift
//  Tutorial
//
//  Created by Azzo Hiro on 10/05/22.
//


import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func navigateToData(_ sender: Any) {
        let dataVC = DataViewController()
        self.navigationController?.setViewControllers([dataVC], animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationProperties()
        setupComponentProperties()
    }
    
    func setupNavigationProperties() {
        title = "HOME"
    }
    
    func setupComponentProperties() {
        collectionView.register(UINib(nibName: "HomeHeaderCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "section1")
        collectionView.register(UINib(nibName: "HomeMenuCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "section2")
        collectionView.register(UINib(nibName: "HomeTimeLineCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "section3")
        
    }
}

    extension HomeViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 3
        case 2:
            return 3
        default:
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "section1", for: indexPath) as! HomeHeaderCollectionViewCell
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "section2", for: indexPath) as! HomeMenuCollectionViewCell
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "section3", for: indexPath) as! HomeTimeLineCollectionViewCell
            return cell
        default:
            return UICollectionViewCell()
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.section {
        case 0:
            return CGSize(width: collectionView.frame.size.width - 32, height: 200)
        case 1:
            let width: CGFloat = UIScreen.main.bounds.width
            let padding: CGFloat  =  5 * 15
            return CGSize(width: (width - padding) / 4, height: (width - padding) / 4)
        case 2:
            return CGSize(width: collectionView.frame.size.width - 32, height: 220)
        default:
            return .zero
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        switch section {
        case 1, 2:
            return CGSize(width: collectionView.frame.size.width - 32, height: 40)
        default:
            return .zero
        }
    }
    
}

