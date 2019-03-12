//
//  UseCase.swift
//  MeetupDemoDomain
//
//  Created by ali ziwa on 11/03/2019.
//  Copyright © 2019 ali ziwa. All rights reserved.
//

import Foundation

public class GetUserUseCase: GetUseCaseProtocol {
    private let userRepoProtocol: UserRepoProtocol
    
    public init(_ repoProtocol: UserRepoProtocol) {
        self.userRepoProtocol = repoProtocol
    }
    
    public func invoke() -> User {
        return userRepoProtocol.getUser()
    }
}
