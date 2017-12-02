//
//  Channel.swift
//  Smack
//
//  Created by Robert Haddad on 12/2/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import Foundation

struct Channel {
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
}
// New JSON Way Everything from the API needs to be included
//struct Channel: Decodable {
//    public private(set) var _id: String!
//    public private(set) var name: String!
//    public private(set) var description: String!
//    public private(set) var __v: Int?
//}

