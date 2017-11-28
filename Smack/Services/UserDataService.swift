//
//  UserDataService.swift
//  Smack
//
//  Created by Robert Haddad on 11/28/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService()
    
    public private(set) var id = ""
    public private(set) var name = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    
    func setUserData(id: String, name: String, color: String, avatarName: String, email: String){
        self.id = id
        self.name = name
        self.email = email
        self.avatarColor = color
        self.avatarName = avatarName
    }
    
    func setAvatarName(avatarName: String){
        self.avatarName = avatarName
    }
    
}
