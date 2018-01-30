//
//  SideMenuViewController.swift
//  sideMenu3
//
//  Created by Jorge on 30/01/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var array = ["Home","Profile"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sideCellID", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealViewController : SWRevealViewController = self.revealViewController()
        let cell = tableView.cellForRow(at: indexPath)!
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var newFrontViewController: UINavigationController!
        if cell.textLabel?.text == "Profile" {
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            newFrontViewController = UINavigationController.init(rootViewController: desController)
        }else{
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            newFrontViewController = UINavigationController.init(rootViewController: desController)
        }
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
    }

}
