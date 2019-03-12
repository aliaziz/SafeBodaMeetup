////
//  SafeBoda
//
//  DependencyInjection.swift written using Swift 4.0
//
//  Created on: 12/12/2018
//
//  Copyright © 2018 SafeBoda. All rights reserved.
//

import Swinject

class DependencyInjection {
    private var container: Container
    static let shared = DependencyInjection()
    
    private init() {
        container = Container()
    }
    
    func resolve<Service>(_ serviceType: Service.Type) -> Service {
        guard let service = container.resolve(serviceType) else {
            fatalError("Missing dependencies")
        }
        return service
    }
    
    func registerAppDependencies() {
        container.registerDataDependencies()
        container.registerDomainDependencies()
        container.registerAppDependencies()
    }
    
    func registerTestDepencencies() {
        container.registerDataTestDependencies()
        container.registerDomainTestDependencies()
        container.registerAppDependencies()
    }
}
