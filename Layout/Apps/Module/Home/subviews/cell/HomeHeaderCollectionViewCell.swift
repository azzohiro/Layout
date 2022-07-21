//
//  HomeHeaderCollectionViewCell.swift
//  Layout
//
//  Created by Azzo Hiro on 18/05/22.
//

import UIKit

class HomeHeaderCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var tekanButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        tekanButton.layer.shadowRadius = 100
//        tekanButton.layer.borderWidth = 1
//        tekanButton.layer.cornerRadius = 10
        clipsToBounds = true
        layer.cornerRadius = 30
    
        
    }
    @IBAction func tekanButton(_ sender: UIButton) {
        print("hello")
    
    }
    
}


