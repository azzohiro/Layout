//
//  RegisterViewController.swift
//  Layout
//
//  Created by Azzo Hiro on 18/05/22.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func handleRegister(_ sender: UIButton) {
         let homeVC = HomeViewController()
            self.navigationController?.setViewControllers([homeVC], animated: true)
    }
    
    
    @IBAction func handleLogin(_ sender: UIButton) {
            self.navigationController?.popViewController(animated: true)
        
    
    
    }
    
}
