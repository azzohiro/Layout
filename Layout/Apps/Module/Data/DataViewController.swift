//
//  DataViewController.swift
//  Layout
//
//  Created by Azzo Hiro on 19/05/22.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var backgroundTop: UIImageView!
    @IBOutlet weak var navigateToBeranda: UIButton!
    @IBOutlet weak var navigateToOthers: UIButton!
    @IBOutlet weak var navigateToDompet: UIButton!
    @IBOutlet weak var navigateToScan: UIButton!
    @IBOutlet weak var navigateToActivity: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    


        setupNavigationProperties()
    }
    
    
    
    func setupNavigationProperties() {
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func navigateToData(_ sender: UIButton) {
        let othersVC = OthersViewController()
        othersVC.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(othersVC, animated: true)

    }
    

    
    
    @IBAction func navigateToWallet(_ sender: UIButton) {
        let walletVC = WalletViewController()
        walletVC.modalPresentationStyle = .fullScreen
        self.present(walletVC, animated: true, completion: nil)
    }
    @IBAction func navigateToScan(_ sender: UIButton) {
        let scanVC = ScanViewController()
        self.navigationController?.pushViewController(scanVC, animated: true)
        
    }
    @IBAction func navigateToAcivity(_ sender: UIButton) {
        let activityVC = ActivityViewController()
        self.navigationController?.pushViewController(activityVC, animated: true)
        
        
    }
    
    @IBAction func navigateToBeranda(_ sender: UIButton) {
        let berandaVC = BerandaViewController()
        berandaVC.modalPresentationStyle = .fullScreen
        self.present(berandaVC, animated: true, completion: nil)
    }
    
    
}

