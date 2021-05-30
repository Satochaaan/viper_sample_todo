//
//  AddTodoRouter.swift
//  
//
//  Created by kawanosatoshi on 2021/5/31.
//  Copyright © 2021 kawanosatoshi. All rights reserved.
//

import UIKit

protocol AddTodoWireframe: AnyObject {
    
}

final class AddTodoRouter {
    
    private unowned let viewController: UIViewController
    
    private init(viewController: UIViewController) {
        self.viewController = viewController
    }

    static func assembleModules() -> UIViewController {
        let view = AddTodoViewController()
        let router = AddTodoRouter(viewController: view)
        let interactor = AddTodoInteractor()
        let presenter = AddTodoViewPresenter(view: view, router: router, interactor: interactor)
        
        view.presenter = presenter
        
        return view
    }
}

extension AddTodoRouter: AddTodoWireframe {
    
}
