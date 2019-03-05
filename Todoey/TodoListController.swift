//
//  ViewController.swift
//  Todoey
//
//  Created by MattYeh on 2019/3/4.
//  Copyright © 2019 mattyeh. All rights reserved.
//

import UIKit

class TodoListController: UITableViewController {
  
    let itemsArray =  ["first", "second", "third"]
    
    @IBOutlet var TodolistTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TodolistTableView.delegate = self
        TodolistTableView.dataSource = self
        TodolistTableView.register(UITableViewCell.self, forCellReuseIdentifier: "TodoListCell")
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoListCell", for: indexPath)
        cell.textLabel?.text = itemsArray[indexPath.row]
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        return cell
    }
    
    //MARK - tableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
    }


}

