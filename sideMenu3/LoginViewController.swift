//
//  LoginViewController.swift
//  sideMenu3
//
//  Created by Jorge on 30/01/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func logIn(_ sender: UIButton) {
        //Here I make some magic for validate the user
        // if validation is true ...
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "HomeNavViewController")
        self.revealViewController().setFront(controller, animated: true)
        
    }
    

}
