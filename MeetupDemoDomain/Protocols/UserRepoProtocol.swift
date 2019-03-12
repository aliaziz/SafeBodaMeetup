//
//  UserRepoProtocol.swift
//  MeetupDemoDomain
//
//  Created by ali ziwa on 11/03/2019.
//  Copyright © 2019 ali ziwa. All rights reserved.
//

import Foundation

public protocol UserRepoProtocol {
    func getUser() -> User
    func save(_ user: User)
}
