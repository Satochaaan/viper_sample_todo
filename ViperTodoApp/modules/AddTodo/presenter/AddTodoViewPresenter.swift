//
//  AddTodoViewPresenter.swift
//  
//
//  Created by kawanosatoshi on 2021/5/31.
//  Copyright © 2021 kawanosatoshi. All rights reserved.
//

import Foundation

protocol AddTodoViewPresentation: AnyObject {

    func viewDidLoad()    
}


final class AddTodoViewPresenter {

    private weak var view: AddTodoView?
    private let router: AddTodoWireframe
    private let interactor: AddTodoUsecase
    
    init(view: AddTodoView,
         router: AddTodoWireframe,
         interactor: AddTodoUsecase) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension AddTodoViewPresenter: AddTodoViewPresentation {
    
    func viewDidLoad() {
        
    }
}

