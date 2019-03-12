//
//  User.swift
//  MeetupDemoDomain
//
//  Created by ali ziwa on 11/03/2019.
//  Copyright © 2019 ali ziwa. All rights reserved.
//

import Foundation

public struct User {
    public let name: String
    public let profPicUrl: String
    public let friends: Int
    
    public init(_ name: String, _ imageUrl: String, _ friends: Int) {
        self.name = name
        self.profPicUrl = imageUrl
        self.friends = friends
    }
}
