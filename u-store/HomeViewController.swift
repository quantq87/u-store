//
//  ViewController.swift
//  u-store
//
//  Created by tran.quoc.quan on 10/11/16.
//  Copyright © 2016 tran.quoc.quan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, PhotoManagerProtocol{

    let selectImageView: UIImageView = {
         let imageView = UIImageView()
        
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.edgesForExtendedLayout = .init(rawValue: 0)
        
        view.backgroundColor = UIColor.orange
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
        createMainView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleLogout() {
        let loginViewController = LoginViewController()
        
        present(loginViewController, animated: true, completion:nil)
    }
    
    func createMainView() {
        let button1 = USRadiusButton.initWithRadius(radius: 5.0)
        button1.frame = CGRect(x: 20, y: 20, width: 200, height: 60)
        button1.backgroundColor = UIColor.blue
        button1.setStringForButton(string: "U - Store Market")
        view.addSubview(button1)
        
        let button2 = USRadiusButton.initWithRadius(radius: 5.0)
        button2.frame = CGRect(x: 20, y: 90, width: 200, height: 60)
        button2.backgroundColor = UIColor.gray
        button2.setStringForButton(string: "Open Camera")
        let action = #selector(HomeViewController.openCameraOnTouch)
        button2.addTarget(self, action: action, for: .touchUpInside)
        view.addSubview(button2)
        
        view.addSubview(selectImageView)
        
    }
    
    func openCameraOnTouch(sender: AnyObject) {
        PhotoManagerModel.sharedInstance.openCameraWithViewController(viewController: self, delegate: self)
    }
    
    func didImagePickerWithImage(image: UIImage!) {
        if image != nil && image.isKind(of: UIImage.self) {
            selectImageView.image = image
            
            let viewSize = self.view.frame.size
            
            let width:CGFloat = 200.0;
            let height:CGFloat = 200.0;
            
            let x = (viewSize.width - width)/2
            let y = (viewSize.height - height)/2
            selectImageView.frame = CGRect(x: x, y: y, width: width, height: height)
            
            
        }
    }
    
}

