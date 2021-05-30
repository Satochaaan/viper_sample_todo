//
//  TodoListViewPresenter.swift
//  
//
//  Created by kawanosatoshi on 2021/5/30.
//  Copyright © 2021 kawanosatoshi. All rights reserved.
//

import Foundation

protocol TodoListViewPresentation: AnyObject {

    func viewDidLoad()    
}


final class TodoListViewPresenter {

    private weak var view: TodoListView?
    private let router: TodoListWireframe
    private let interactor: TodoListUsecase
    
    init(view: TodoListView,
         router: TodoListWireframe,
         interactor: TodoListUsecase) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension TodoListViewPresenter: TodoListViewPresentation {
    
    func viewDidLoad() {
        
    }
}

