//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Robert Haddad on 11/26/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Actions
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else { return }
        
        guard let pass = passwordTxt.text , passwordTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if(success){
                print("Registered User!")
            }
        }
    }
    
    @IBAction func pickAvatarBtnPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorBtnPressed(_ sender: Any) {
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
    }
}
