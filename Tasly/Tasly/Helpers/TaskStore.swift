//
//  TaskStore.swift
//  Tasly
//
//  Created by vengerov on 01/05/2019.
//  Copyright © 2019 vengerov. All rights reserved.
//

import Foundation

class TaskStore {
    
    var tasks = [[Task](), [Task]()]
    
    func addTask(_ task: Task, at index: Int, isDone: Bool = false) {
        
        let section = isDone ? 1 : 0
        tasks[section].insert(task, at: index)
        
    }

    @discardableResult func removeTask(at index: Int, isDone: Bool = false) -> Task {
        
        let section = isDone ? 1 : 0
        return tasks[section].remove(at: index)
    }
}
