//
//  MessageCell.swift
//  Smack
//
//  Created by Robert Haddad on 12/4/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var timeStampLbl: UILabel!
    @IBOutlet weak var messageBodyLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(message: Message){
        messageBodyLbl.text = message.message
        userNameLbl.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        
        // 2017-12-04T21:49:25.590Z
        guard let isoDate = message.timestamp else { return }
        //let end = isoDate.index(isoDate.endIndex, offsetBy: -5)
        //isoDate = isoDate.substring(to: end)
        let end = isoDate.index(of: ".")!
        let editDate = isoDate[...end]
        
        
        let isoFormatter = ISO8601DateFormatter()
        let chatDate = isoFormatter.date(from: editDate.appending("Z"))
        let newFormatter = DateFormatter()
        newFormatter.dateFormat = "MMM d, h:mm a"
        
        if let finalDate = chatDate {
            let finalDate = newFormatter.string(from: finalDate)
            timeStampLbl.text = finalDate
        }
        
    }

}
