//
//  TodoListViewController.swift
//  
//
//  Created by kawanosatoshi on 2021/5/30.
//  Copyright © 2021 kawanosatoshi. All rights reserved.
//

import UIKit

protocol TodoListView: AnyObject {
    
}

final class TodoListViewController: UIViewController {
    
    var presenter: TodoListViewPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
    }
}

extension TodoListViewController: TodoListView {
    
}

