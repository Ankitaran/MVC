//
//  TaskModel.swift
//  Architecure
//
//  Created by Ankita Thakur on 26/08/23.
//

import Foundation

struct Task {
    var title: String
    var description: String
    var isCompleted: Bool
}
class TaskManager{
    var arrTask : [Task] = []
    
    func addTask(_ task: Task){
        arrTask.append(task)
        
    }
    func removeTask(_ index : Int){
        arrTask.remove(at: index)
    }
}
