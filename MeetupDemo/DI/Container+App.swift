////
//  SafeBoda
//
//  Container+App.swift written using Swift 4.0
//
//  Created on: 12/12/2018
//
//  Copyright © 2018 SafeBoda. All rights reserved.
//

import Swinject
import SafeBodaDomain

extension Container {
    func registerAppDependencies() {
        registerViewModelDependencies()
    }
    
    private func registerViewModelDependencies() {
        self.register(OrdersViewModel.self) { resolver in
            let useCase = resolver.resolve(GetOrdersUseCase.self)!
            let viewModel = OrdersViewModel(getOrdersUseCase: useCase)
            return viewModel
        }
        
        self.register(TopUpAmountViewModel.self) { _ in
            TopUpAmountViewModel()
        }
        
        self.register(MyAccountViewModel.self) { _ in
            MyAccountViewModel()
        }
        
        self.register(PaymentMethodsViewModel.self) { _ in
            PaymentMethodsViewModel()
        }
        
        self.register(UpdateViewModel.self) { _ in
            return UpdateViewModel()
        }
        
        self.register(ProfileViewModel.self) { _ in
            ProfileViewModel()
        }
        
        self.register(CountriesViewModel.self) { resolver in
            let getCountriesUseCase = resolver.resolve(GetCountriesUseCase.self)!
            let viewModel = CountriesViewModel(getCountriesUseCase)
            return viewModel
        }
        
        self.register(TransactionsViewModel.self) { _ in
            TransactionsViewModel()
        }
        
        self.register(AboutViewModel.self) { resolver in
            let getSocialUrlsUseCase = resolver.resolve(GetSocialUrlsUseCase.self)!
            let getTermsAndPrivacyUrlsUseCase = resolver.resolve(GetTermsAndPrivacyUrlsUseCase.self)!
            let viewModel = AboutViewModel(getSocialUrlsUseCase, getTermsAndPrivacyUrlsUseCase)
            return viewModel
        }
        self.register(NewAccountViewModel.self) { resolver in
            let registerUseCase = resolver.resolve(RegisterUseCase.self)!
            let locationPermissionsAreEnabledUseCase = resolver.resolve(LocationPermissionsAreEnabledUseCase.self)!
            return NewAccountViewModel(registerUseCase, locationPermissionsAreEnabledUseCase)
        }
        
        self.register(LoginPermissionViewModel.self) { resolver in
            let getUserLocationUseCase = resolver.resolve(GetUserLocationUseCase.self)!
            let viewModel = LoginPermissionViewModel(getUserLocationUseCase)
            return viewModel
        }
        
        self.register(SplashViewModel.self) { resolver in
            let useCase = resolver.resolve(SplashUseCase.self)!
            let splashViewModel = SplashViewModel(useCase)
            return splashViewModel
        }
        
        self.register(VerificationViewModel.self) { resolver in
            let verifyUseCase = resolver.resolve(VerifyUseCase.self)!
            let loginUseCase = resolver.resolve(LoginUseCase.self)!
            let viewModel = VerificationViewModel(verifyUseCase, loginUseCase)
            return viewModel
        }
        
        self.register(EnterPhoneViewModel.self) { resolver in
            let useCase = resolver.resolve(GetTermsAndPrivacyUrlsUseCase.self)!
            let viewModel = EnterPhoneViewModel(useCase)
            return viewModel
        }
    }
}
