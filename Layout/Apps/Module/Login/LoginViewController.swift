//
//  LoginViewController.swift
//  Layout
//
//  Created by Azzo Hiro on 18/05/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate{

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var navigateToRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField.delegate = self
        passwordTextField.delegate = self
        setupNavigationProperties()
    }


    func setupNavigationProperties() {
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func navigateToRegister(_ sender: UIButton) {
        let registerVC = RegisterViewController()
        self.navigationController?.pushViewController(registerVC, animated: true)
        
    }
    @IBAction func navigateToHome(_ sender: UIButton) {
        let homeVC = HomeViewController()
        self.navigationController?.setViewControllers([homeVC], animated: true)
        
    }

    @IBAction func passwordPressed(_ sender: Any) {let homeVC = HomeViewController()
        self.navigationController?.setViewControllers([homeVC], animated: true)
    
        passwordTextField.endEditing(true)
        print(passwordTextField.text!)
        
    }
    
    @IBAction func keyboardPressed(_ sender: UITextField) {
        emailTextField.endEditing(true)
        print("Hello yututube")
        print(emailTextField.text!)
        
    
}
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return false
    }

    
}
