//
//  RootCoordinator.swift
//  PasswordGenerator
//
//  Created by Артем on 23.12.2021.
//

import UIKit

class RootCoordinator: Coordinator {
    
    var coordinators: [Coordinator] = []
    let tabBarController: TabBarController
    private let factory = ControllerFactoryImpl()
    
    init() {
        tabBarController = TabBarController()
        
        let generatorCoordinator = configureGenerator()
        coordinators.append(generatorCoordinator)

        tabBarController.viewControllers = [generatorCoordinator.navigationController]
        
        generatorCoordinator.start()
    }
    
    private func configureGenerator() -> GeneratorCoordinator {
        
        let navigationFirst = UINavigationController()
//        navigationFirst.tabBarItem = UITabBarItem(
//            title: "Feed",
//            image: UIImage(systemName: "square.and.pencil"),
//            selectedImage: nil)
        let coordinator = GeneratorCoordinator(
            navigation: navigationFirst,
            factory: factory)
        
        return coordinator
    }
    
}

