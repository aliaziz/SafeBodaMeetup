////
//  SafeBoda
//
//  Container+Data.swift written using Swift 4.0
//
//  Created on: 12/12/2018
//
//  Copyright © 2018 SafeBoda. All rights reserved.
//

import Foundation
import Swinject
import SafeBodaDomain
import SafeBodaData

extension Container {
    public func registerDataDependencies() {
        registerRepositories()
    }
    
    // MARK: Use Cases DI
    private func registerRepositories() {
        self.register(OrdersRepositoryProtocol.self) { _ in
            OrdersRepository()
        }
        self.register(UrlsRepositoryProtocol.self) { _ in
            UrlsRepository()
        }
        self.register(RemoteConfigurationRepositoryProtocol.self) { _  in
            RemoteConfigurationRepository()
        }
        self.register(CountriesRepositoryProtocol.self) { _ in
            CountriesRepository()
        }
        self.register(LocationRepositoryProtocol.self) { _ in
            LocationRepository()
        }
        self.register(UserRepositoryProtocol.self) { _ in
            UserRepository()
        }
        self.register(LoginRepositoryProtocol.self) { _ in
            LoginRepository()
        }
    }
}

// MARK: - TEST
extension Container {
    public func registerDataTestDependencies() {
        registerTestRepositories()
    }
    
    // MARK: Use Cases DI
    private func registerTestRepositories() {
        self.register(OrdersRepositoryProtocol.self) { _ in
            OrdersRepository()
        }
        self.register(OrdersRepositoryProtocol.self) { _ in
            OrdersRepository()
        }
        self.register(CountriesRepositoryProtocol.self) { _ in
            CountriesRepository()
        }
        self.register(UserRepositoryProtocol.self) { _ in
            UserRepositoryMockup()
        }
    }
}
