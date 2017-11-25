//
//  ChannelVC.swift
//  Smack
//
//  Created by Robert Haddad on 11/25/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }

    

}
