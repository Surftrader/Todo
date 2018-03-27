//
//  TodoListViewController.swift
//  Todo
//
//  Created by Sergiy Poddubka on 27.03.18.
//  Copyright © 2018 Sergiy Poddubka. All rights reserved.
//

import UIKit

class TodoListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AddTodoDelegate {
    
    var todos = ["First note", "Second note", "Third note"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath) as! TodoTableViewCell
        cell.todoNameLabel.text = todos[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        todos.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
    }
    
    func addToto(todo: String){
        todos.append(todo)
        let ip = IndexPath(row: todos.count - 1, section: 0)
        tableView.insertRows(at: [ip], with: UITableViewRowAnimation.automatic)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AddTodoViewController {
            destination.delegate = self
        }
    }
}
