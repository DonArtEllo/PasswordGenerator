//
//  GeneratorViewController.swift
//  PasswordGenerator
//
//  Created by Артем on 23.12.2021.
//

import UIKit

final class GeneratorViewController: UIViewController {
    
    private var viewModel: GeneratorViewOutput
    
    init(viewModel: GeneratorViewOutput) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    private func setupViews() {
        title = viewModel.moduleTitle
        view.backgroundColor = .lightGray
        
        navigationController?.tabBarController?.tabBar.isHidden = true
    }
}
