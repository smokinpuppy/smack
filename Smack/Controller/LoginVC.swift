//
//  LoginVC.swift
//  Smack
//
//  Created by Robert Haddad on 11/26/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var closeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    
}
