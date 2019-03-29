//
//  ToDoListTableViewController.swift
//  MVVM_TodoList2
//
//  Created by Ice on 31/1/2562 BE.
//  Copyright © 2562 Ice. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {

    var name = ["1","2","3","4","5","6","7","8","9","10","11"]
    
    var todoListVM:ToDoListViewModel = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "To Do List"
        
        todoListVM.DataReload = {() in
            self.tableView.reloadData()
        }
        
        todoListVM.start()
    }

    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return name.count
        return todoListVM.FBArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = todoListVM.FBArray[indexPath.row]

        return cell
    }
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        let addVC = self.storyboard?.instantiateViewController(withIdentifier: "addStory") as! AddToDoViewController
        
        self.navigationController?.pushViewController(addVC, animated: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        todoListVM.start()
    }

}
