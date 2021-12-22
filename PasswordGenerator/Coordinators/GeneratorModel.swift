//
//  GeneratorModel.swift
//  PasswordGenerator
//
//  Created by Артем on 23.12.2021.
//

import Foundation

protocol GeneratorViewOutput {
    var moduleTitle: String { get }
}

final class GeneratorModel: GeneratorViewOutput {
    
    var moduleTitle: String {
        return "Generator will be here soon..."
    }
    
}
