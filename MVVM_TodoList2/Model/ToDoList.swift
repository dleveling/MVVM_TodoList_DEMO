//
//  ToDoList.swift
//  MVVM_TodoList2
//
//  Created by Ice on 31/1/2562 BE.
//  Copyright © 2562 Ice. All rights reserved.
//

import Foundation
import Firebase

class ToDoList {
    
    var dataBaseRefer:DatabaseReference!
    
    func getToDoList(oNSuccess dataArray:@escaping (_ data:[String])->Void){
       
        self.dataBaseRefer = Database.database().reference()
        self.dataBaseRefer.child("TodoList2").observeSingleEvent(of: .value) { (dataSnap) in
            var Todo:[String]=[]
            
            for child in dataSnap.children{
                let snap = child as! DataSnapshot
                let value = snap.value
                Todo.append("\((value ?? ""))")
            }
            dataArray(Todo)
        }
    }
    
    func addTodos(item:String){
        self.dataBaseRefer = Database.database().reference()
        self.dataBaseRefer.child("TodoList2").childByAutoId().setValue(item)
    }
    
}
