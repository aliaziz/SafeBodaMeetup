//
//  MeetupViewModel.swift
//  MeetupDemo
//
//  Copyright © 2019 ali ziwa. All rights reserved.
//

import Foundation
import MeetupDemoDomain
import MeetupDemoData

class MeetupViewModel {
    private let getUseCase: GetUserUseCase
    
    init() {
        getUseCase = DependencyInjection.shared.resolve(GetUserUseCase.self)
    }
    
    func getUser() -> User {
        return getUseCase.invoke()
    }
}
