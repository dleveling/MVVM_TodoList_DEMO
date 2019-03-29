//
//  AddToDoViewController.swift
//  MVVM_TodoList2
//
//  Created by Ice on 31/1/2562 BE.
//  Copyright © 2562 Ice. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    var addVM:AddToDoViewModel = .init()
    
    @IBOutlet weak var itemField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Add Item"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func okButtonPressed(_ sender: UIButton) {
        
        addVM.addTodo(item: itemField.text!)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
