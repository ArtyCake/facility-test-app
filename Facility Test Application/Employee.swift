//
//  Employee.swift
//  Facility Test Application
//
//  Created by Arty Cake on 9/7/17.
//  Copyright © 2017 Arty Cake. All rights reserved.
//

import Foundation

class Employee {
    let firstName: String
    let lastName: String
    let position: String
    let description: String
    
    lazy var fullName: String = {[unowned self] in
        return "\(self.firstName) \(self.lastName)"
    }()
    
    init(firstName: String, lastName: String, position: String, description: String = "") {
        self.firstName = firstName
        self.lastName = lastName
        self.position = position
        self.description = description
    }
    
    
}
