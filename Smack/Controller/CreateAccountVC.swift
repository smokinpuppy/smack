//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Robert Haddad on 11/26/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
    }
    
}
