//
//  PhotoManagerModel.swift
//  u-store
//
//  Created by tran.quoc.quan on 11/2/16.
//  Copyright © 2016 tran.quoc.quan. All rights reserved.
//

import UIKit
import Photos

protocol PhotoManagerProtocol {
    func didImagePickerWithImage(image: UIImage!)
}


class PhotoManagerModel: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    static let sharedInstance = PhotoManagerModel()
    
    var currentViewController = UIViewController()
    var currentDelegate:PhotoManagerProtocol? = nil
    
    func openCameraWithViewController(viewController: UIViewController, delegate: PhotoManagerProtocol)  {
        if (UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)) {
            currentViewController = viewController
            currentDelegate = delegate
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
            imagePicker.allowsEditing = false
            DispatchQueue.main.sync {
                viewController.present(imagePicker, animated: true, completion: nil)
            }
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        currentDelegate?.didImagePickerWithImage(image: image)
        currentViewController.dismiss(animated: true, completion: nil);
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        currentDelegate?.didImagePickerWithImage(image: nil)
        currentViewController.dismiss(animated: true, completion: nil);
    }
    
}
