//
//  USRadiusButton.swift
//  u-store
//
//  Created by tran.quoc.quan on 11/2/16.
//  Copyright © 2016 tran.quoc.quan. All rights reserved.
//

import UIKit

class USRadiusButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    let buttonTitleLabel:UILabel = {
       let label = UILabel()
        
        return label
    }()
    
    
    class func initWithRadius(radius: CGFloat) -> USRadiusButton {
        let button:USRadiusButton = USRadiusButton()
        button.layer.cornerRadius = radius;
        button.layer.borderWidth = 0.0
        button.layer.masksToBounds = true
        return button
    }
    
    func setStringForButton(string: String) {
        buttonTitleLabel.text = string
        buttonTitleLabel.frame = calculatorFrameForString(string: string)
        buttonTitleLabel.textColor = UIColor.white
        buttonTitleLabel.textAlignment = .center
        buttonTitleLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        buttonTitleLabel.backgroundColor = UIColor.clear
        self .addSubview(buttonTitleLabel)
    }
    
    func calculatorFrameForString(string:String) -> CGRect {
        var stringFrame = CGRect.zero
        
        if !string.isEmpty {
            let font = UIFont.boldSystemFont(ofSize: 16.0)
            
            var width = string.widthWithConstrainedHeight(height: 45, font: font)
            if width > self.frame.size.width - 10 {
                width = self.frame.size.width - 10
            }
            
            let height = string.heightWithConstrainedWidth(width: width, font: font)
            
            let x = (self.frame.size.width - width)/2
            let y = (self.frame.size.height - height)/2
            
            stringFrame = CGRect(x: x, y: y, width: width, height: height)
        }
        return stringFrame
    }

}

extension String {
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        return boundingBox.height
    }
    
    func widthWithConstrainedHeight(height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        return boundingBox.width
    }
}

extension NSAttributedString {
    func heightWithConstrainedWidth(width: CGFloat) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)
        
        return boundingBox.height
    }
    
    func widthWithConstrainedHeight(height: CGFloat) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)
        
        return boundingBox.width
    }
}
