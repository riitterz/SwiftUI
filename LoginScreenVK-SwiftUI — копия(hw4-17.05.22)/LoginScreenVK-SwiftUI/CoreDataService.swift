//
//  CoreDataService.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 12.05.2022.
//

import Foundation
import CoreData

class CoreDataService {
    
    private var modelName: String = ""
    var context: NSManagedObjectContext { storeContainer.viewContext }
    
    private lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: self.modelName)
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                fatalError("Unresolved error \(error), \(error.localizedDescription)")
            }
        }
        return container
    }()
    init(modelName: String) {
        self.modelName = modelName
    }
    
    func saveContext() throws {
        guard context.hasChanges else { return }
        
    }
}
