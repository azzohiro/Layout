//
//  OthersViewController.swift
//  Layout
//
//  Created by Azzo Hiro on 26/05/22.
//

import UIKit

class OthersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func handleData(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
