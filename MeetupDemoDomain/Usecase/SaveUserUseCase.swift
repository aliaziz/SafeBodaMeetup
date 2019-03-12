//
//  SaveUseCase.swift
//  MeetupDemoDomain
//
//  Created by ali ziwa on 11/03/2019.
//  Copyright © 2019 ali ziwa. All rights reserved.
//

import Foundation

public class SaveUserUseCase: SaveUseCaseProtocol {
    private let userRepoProtocol: UserRepoProtocol
    
    init(_ repoProtocol: UserRepoProtocol) {
        self.userRepoProtocol = repoProtocol
    }
    
    func invoke(user: User) {
        userRepoProtocol.save(user)
    }
}
