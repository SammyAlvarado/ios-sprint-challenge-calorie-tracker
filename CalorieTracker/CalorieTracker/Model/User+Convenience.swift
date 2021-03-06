//
//  User+Convenience.swift
//  CalorieTracker
//
//  Created by Sammy Alvarado on 10/11/20.
//

import Foundation
import CoreData

extension User {
    var userRepresentation: UserRepresentation? {
        guard let time = time else { return nil }
        return UserRepresentation(calories: Int(calories),
                                  time: time )
    }
    
    @discardableResult convenience init(time: Date = Date(),
                                        calories: Int,
                                        context: NSManagedObjectContext = CoreDataStack.shared.mainContext
    ) {
        self.init(context: context)
        self.time = time
        self.calories = Int64(calories)
        
    }
}

