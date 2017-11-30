//
//  ProfileVCViewController.swift
//  Smack
//
//  Created by Robert Haddad on 11/30/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

class ProfileVCViewController: UIViewController {

    @IBOutlet weak var profileIMg: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    @IBAction func closeModalPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func logoutPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    func setupView(){
        profileIMg.image = UIImage(named: UserDataService.instance.avatarName)
        profileIMg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        userName.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVCViewController.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
    
}
