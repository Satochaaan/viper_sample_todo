//
//  AddTodoViewController.swift
//  
//
//  Created by kawanosatoshi on 2021/5/31.
//  Copyright © 2021 kawanosatoshi. All rights reserved.
//

import UIKit

protocol AddTodoView: AnyObject {
    
}

final class AddTodoViewController: UIViewController {
    
    var presenter: AddTodoViewPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
    }
}

extension AddTodoViewController: AddTodoView {
    
}

