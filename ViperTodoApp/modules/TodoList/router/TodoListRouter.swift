//
//  TodoListRouter.swift
//  
//
//  Created by kawanosatoshi on 2021/5/30.
//  Copyright © 2021 kawanosatoshi. All rights reserved.
//

import UIKit

protocol TodoListWireframe: AnyObject {
    
}

final class TodoListRouter {
    
    private unowned let viewController: UIViewController
    
    private init(viewController: UIViewController) {
        self.viewController = viewController
    }

    static func assembleModules() -> UIViewController {
        let view = TodoListViewController()
        let router = TodoListRouter(viewController: view)
        let interactor = TodoListInteractor()
        let presenter = TodoListViewPresenter(view: view, router: router, interactor: interactor)
        
        view.presenter = presenter
        
        return view
    }
}

extension TodoListRouter: TodoListWireframe {
    
}
