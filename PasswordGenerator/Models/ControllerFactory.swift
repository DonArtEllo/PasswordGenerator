//
//  ControllerFactory.swift
//  PasswordGenerator
//
//  Created by Артем on 23.12.2021.
//

import UIKit

protocol ControllerFactory {
    func makeGenerator() -> (viewModel: GeneratorModel, controller: GeneratorViewController)
    
}

struct ControllerFactoryImpl: ControllerFactory {
    func makeGenerator() -> (viewModel: GeneratorModel, controller: GeneratorViewController) {
        let viewModel = GeneratorModel()
        let controller = GeneratorViewController(viewModel: viewModel)
        
        return (viewModel, controller)
    }
    
}
