////
//  SafeBoda
//
//  Container+Domain.swift written using Swift 4.0
//
//  Created on: 12/12/2018
//
//  Copyright © 2018 SafeBoda. All rights reserved.
//

import Foundation
import Swinject
import SafeBodaDomain

extension Container {
    public func registerDomainDependencies() {
        registerUseCases()
    }
    
    // MARK: Use Cases DI
    private func registerUseCases() {
        self.register(GetOrdersUseCase.self) { resolver in
            let repository = resolver.resolve(OrdersRepositoryProtocol.self)!
            let useCase = GetOrdersUseCase(repository)
            return useCase
        }
        self.register(GetSocialUrlsUseCase.self) { resolver in
            let repository = resolver.resolve(UrlsRepositoryProtocol.self)!
            let useCase = GetSocialUrlsUseCase(repository)
            return useCase
        }
        self.register(GetTermsAndPrivacyUrlsUseCase.self) { resolver in
            let repository = resolver.resolve(UrlsRepositoryProtocol.self)!
            let useCase = GetTermsAndPrivacyUrlsUseCase(repository)
            return useCase
        }
        self.register(GetCountriesUseCase.self) { resolver in
            let repository = resolver.resolve(CountriesRepositoryProtocol.self)!
            let useCase = GetCountriesUseCase(repository)
            return useCase
        }
        self.register(GetUserLocationUseCase.self) { resolver in
            let locationRepository = resolver.resolve(LocationRepositoryProtocol.self)!
            let useCase = GetUserLocationUseCase(locationRepository)
            return useCase
        }
        self.register(GetRemoteConfigurationUseCase.self) { resolver in
            let repository = resolver.resolve(RemoteConfigurationRepositoryProtocol.self)!
            return GetRemoteConfigurationUseCase(repository)
        }
        
        self.register(GetOrderDetailsUseCase.self) { resolver in
            let repository = resolver.resolve(OrdersRepositoryProtocol.self)!
            let useCase = GetOrderDetailsUseCase(repository)
            return useCase
        }
        
        self.register(VerifyUseCase.self) { resolver in
            let repository = resolver.resolve(LoginRepositoryProtocol.self)!
            let useCase = VerifyUseCase(repository)
            return useCase
        }
        
        self.register(LoginUseCase.self) { resolver in
            let repository = resolver.resolve(LoginRepositoryProtocol.self)!
            let useCase = LoginUseCase(repository)
            return useCase
        }
        
        self.register(LocationPermissionsAreEnabledUseCase.self) { resolver in
            let repository = resolver.resolve(LocationRepositoryProtocol.self)!
            let useCase = LocationPermissionsAreEnabledUseCase(repository)
            return useCase
        }
        
        self.register(RegisterUseCase.self) { resolver in
            let repository = resolver.resolve(LoginRepositoryProtocol.self)!
            let useCase = RegisterUseCase(repository)
            return useCase
        }
        
        self.register(CheckVersionUseCase.self) { _ in
            CheckVersionUseCase()
        }
        
        self.register(GetCountryAndCityUseCase.self) { _ in
            GetCountryAndCityUseCase()
        }
        
        self.register(GetUserRemoteUseCase.self) { resolver in
            let repository = resolver.resolve(UserRepositoryProtocol.self)!
            let useCase = GetUserRemoteUseCase(repository)
            return useCase
        }
        
        self.register(SplashUseCase.self) { resolver in
            let checkVersionUseCase = resolver.resolve(CheckVersionUseCase.self)!
            let getUserLocationUseCase = resolver.resolve(GetUserLocationUseCase.self)!
            let getCountryAndCityUseCase = resolver.resolve(GetCountryAndCityUseCase.self)!
            let getRemoteConfigurationUseCase = resolver.resolve(GetRemoteConfigurationUseCase.self)!
            let getUserRemoteUseCase = resolver.resolve(GetUserRemoteUseCase.self)!
            return SplashUseCase(checkVersionUseCase,
                                 getUserLocationUseCase,
                                 getCountryAndCityUseCase,
                                 getRemoteConfigurationUseCase,
                                 getUserRemoteUseCase)
        }
    }
}

// MARK: - TEST
extension Container {
    public func registerDomainTestDependencies() {
        registerTestUseCases()
    }
    
    // MARK: Use Cases DI
    private func registerTestUseCases() {
        self.register(GetOrdersUseCase.self) { resolver in
            let repository = resolver.resolve(OrdersRepositoryProtocol.self)!
            let useCase = GetOrdersUseCase(repository)
            return useCase
        }
        self.register(GetCountriesUseCase.self) { resolver in
            let repository = resolver.resolve(CountriesRepositoryProtocol.self)!
            let useCase = GetCountriesUseCase(repository)
            return useCase
        }
        self.register(OrdersViewModel.self) { resolver in
            let useCase = resolver.resolve(GetOrdersUseCase.self)!
            let viewModel = OrdersViewModel(getOrdersUseCase: useCase)
            return viewModel
        }
    }
}
