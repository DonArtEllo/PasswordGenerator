//
//  GeneratorCoordinator.swift
//  PasswordGenerator
//
//  Created by Артем on 23.12.2021.
//

import UIKit

final class GeneratorCoordinator: Coordinator {
    var coordinators: [Coordinator] = []
    let navigationController: UINavigationController
    
    private let factory: ControllerFactory
    private lazy var generatorModule = {
        factory.makeGenerator()
    }()
    
    init(navigation: UINavigationController,
         factory: ControllerFactory) {
        self.navigationController = navigation
        self.factory = factory
    }
    
    func start() {
        
        navigationController.pushViewController(generatorModule.controller, animated: true)

        
    }

}
