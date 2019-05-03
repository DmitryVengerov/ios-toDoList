//
//  TasksUtility.swift
//  Tasly
//
//  Created by vengerov on 02/05/2019.
//  Copyright © 2019 vengerov. All rights reserved.
//

import Foundation


class TasksUtility {
    
    private static let key = "tasks"
    
    // archive
    private static func archive(_ tasks: [[Task]]) -> NSData {
        return NSKeyedArchiver.archivedData(withRootObject: tasks) as NSData
    }
    
    // fetch
    static func fetch() -> [[Task]]? {
        guard let unarchivedData = UserDefaults.standard.object(forKey: "tasks") as? Data else { return nil}
        return NSKeyedUnarchiver.unarchiveObject(with: unarchivedData) as? [[Task]]
    }
    
    // save
    static func save(_ tasks: [[Task]]) {
        // Archive
        let ArchivedTasks = archive(tasks)
        
        // Set object for key
        UserDefaults.standard.set(ArchivedTasks, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    
    
    
}
