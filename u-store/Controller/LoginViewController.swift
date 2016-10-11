//
//  LoginViewController.swift
//  u-store
//
//  Created by tran.quoc.quan on 10/11/16.
//  Copyright © 2016 tran.quoc.quan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let inputContentView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5.0
        view.layer.masksToBounds = true
        return view
    }()
    
    let loginRegisterButton:UIButton = {
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 88, g: 101, b: 161)
        button.setTitle("Register", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16.0)
        return button
        
    }()
    
    let nameTextField:UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let nameSeparatorView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    let emailTextField:UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let emailSeparatorView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    let passwordTextField:UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
    }()
    
    let profileImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profile_image")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        view.addSubview(inputContentView)
        view.addSubview(loginRegisterButton)
        view.addSubview(profileImageView)
        
        setUpInputContentView()
        setUpLoginRegisterButton()
        setUpProfileImageView()
    }
    
    func setUpInputContentView() {
        //need x, y, width, height contraints
        inputContentView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        inputContentView.widthAnchor.constraint(equalTo: view.widthAnchor, constant:-24).isActive = true
        inputContentView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        inputContentView.addSubview(nameTextField)
        inputContentView.addSubview(nameSeparatorView)
        
        inputContentView.addSubview(emailTextField)
        inputContentView.addSubview(emailSeparatorView)
        
        inputContentView.addSubview(passwordTextField)
        
        
        //need x, y, width, height contraints 
        nameTextField.leftAnchor.constraint(equalTo: inputContentView.leftAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputContentView.topAnchor).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputContentView.widthAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputContentView.heightAnchor, multiplier: 1/3).isActive = true
        
        //need x, y, width, height contraints 
        nameSeparatorView.leftAnchor.constraint(equalTo: inputContentView.leftAnchor).isActive = true
        nameSeparatorView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSeparatorView.widthAnchor.constraint(equalTo: inputContentView.widthAnchor).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //need x, y, width, height contraints
        emailTextField.leftAnchor.constraint(equalTo: inputContentView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputContentView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputContentView.heightAnchor, multiplier: 1/3).isActive = true
        
        //need x, y, width, height contraints
        emailSeparatorView.leftAnchor.constraint(equalTo: inputContentView.leftAnchor).isActive = true
        emailSeparatorView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparatorView.widthAnchor.constraint(equalTo: inputContentView.widthAnchor).isActive = true
        emailSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //need x, y, width, height contraints
        passwordTextField.leftAnchor.constraint(equalTo: inputContentView.leftAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: inputContentView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputContentView.heightAnchor, multiplier: 1/3).isActive = true
        
    }
    
    func setUpLoginRegisterButton() {
        //need x, y, width, height contraints
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginRegisterButton.topAnchor.constraint(equalTo: inputContentView.bottomAnchor, constant:12.0).isActive = true
        
        loginRegisterButton.widthAnchor.constraint(equalTo: inputContentView.widthAnchor).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    func setUpProfileImageView() {
        //need x, y, width, height contraints
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: inputContentView.topAnchor, constant:-12.0).isActive = true
        
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

extension UIColor {
    convenience init(r: CGFloat, g:CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
