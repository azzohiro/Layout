//
//  ScanViewController.swift
//  Layout
//
//  Created by Azzo Hiro on 26/05/22.
//   CopyRight By TatsumiSera

import UIKit

class ScanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func handleData(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
