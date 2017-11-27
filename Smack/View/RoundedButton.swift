//
//  RoundedButton.swift
//  Smack
//
//  Created by Robert Haddad on 11/27/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = true
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
    }
}
