//
//  AddToDoViewModel.swift
//  MVVM_TodoList2
//
//  Created by Ice on 31/1/2562 BE.
//  Copyright © 2562 Ice. All rights reserved.
//

import Foundation
class AddToDoViewModel{
    
    var myTodo : ToDoList
    
    init() {
        myTodo = ToDoList()
    }
    
    func addTodo(item:String){
        myTodo.addTodos(item: item)
    }
    
}
