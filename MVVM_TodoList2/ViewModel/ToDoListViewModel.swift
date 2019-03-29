//
//  ToDoListViewModel.swift
//  MVVM_TodoList2
//
//  Created by Ice on 31/1/2562 BE.
//  Copyright © 2562 Ice. All rights reserved.
//

import Foundation
class ToDoListViewModel{
    
    var myToDoList:ToDoList
    var FBArray:[String]=[]
    
    var DataReload: (()->Void)?
    
    init() {
        myToDoList = ToDoList()
    }
    
    func addItem(item:String) {
        myToDoList.addTodos(item: item)
        
    }
    
    func start(){
        myToDoList.getToDoList(oNSuccess: { (data) in
            self.FBArray = data
            self.DataReload?()
        })
    }
    
}
