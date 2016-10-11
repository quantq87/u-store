//
//  ViewController.swift
//  u-store
//
//  Created by tran.quoc.quan on 10/11/16.
//  Copyright © 2016 tran.quoc.quan. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleLogout() {
        let loginViewController = LoginViewController()
        
        present(loginViewController, animated: true, completion:nil)
    }

}

