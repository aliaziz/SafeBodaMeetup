//
//  UserRepository.swift
//  MeetupDemoData
//
//  Created by ali ziwa on 11/03/2019.
//  Copyright © 2019 ali ziwa. All rights reserved.
//
import MeetupDemoDomain

public class UserRepository: UserRepoProtocol {
    
    public init() {}
    
    public func getUser() -> User {
        let dataUser = DataUserModel(firstName: "Allan",
                                     lastName: "Haggai",
                                     familyFriends: 0,
                                     girlFriends: 13,
                                     profilePic: "http://abc.com")

        return formatUser(dataUser)
    }
    
    public func save(_ user: User) {
        //Save to local db, or to Remote data
    }
    
    private func formatUser(_ user: DataUserModel) -> User {
        let combinedName =  "\(user.firstName) \(user.lastName)"
        let allFriends = user.familyFriends + user.girlFriends
        return User(combinedName, user.profilePic, allFriends)
    }
    
}
