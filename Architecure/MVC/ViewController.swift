//
//  ViewController.swift
//  Architecure
//
//  Created by Ankita Thakur on 26/08/23.
//

import UIKit

class ViewController: UIViewController {
//MARK: IBOutlet & Variable
    @IBOutlet var tblTaskList : UITableView!
    
    var objTaskManager = TaskManager()
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: UIAction
    
    @IBAction func addTask(_ sender : UIButton){
        addTaskButtonTapped()
    }
    
    
    //MARK: Custom Function
    
    func addTaskButtonTapped(){
        // handle user tapping to add task button
        
        let newTask = Task(title: "New Task", description: "this is adding for testing perpose", isCompleted: false)
        objTaskManager.addTask(newTask)
        tblTaskList.reloadData()
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    // here we will implementing the task list
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objTaskManager.arrTask.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
               
               // Configure the cell with the data from your tasks array
               let task = objTaskManager.arrTask[indexPath.row]
               cell.textLabel?.text = task.title
               cell.detailTextLabel?.text = task.description
               
               // You can also customize the cell further here
               
               return cell
       
    }
    
  
    
}
