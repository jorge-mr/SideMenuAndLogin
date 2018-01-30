//
//  ProfileViewController.swift
//  sideMenu3
//
//  Created by Jorge on 30/01/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var hamburguerButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hamburguerButton.target = revealViewController()
        hamburguerButton.action = #selector(SWRevealViewController.revealToggle(_:))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logOut(_ sender: UIButton) {
        //Magic for log out
        // if true ....
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "LoginViewController")
        self.revealViewController().pushFrontViewController(controller, animated: true)
        
    }
    
}
