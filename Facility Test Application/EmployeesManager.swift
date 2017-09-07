//
//  EmployeesManager.swift
//  Facility Test Application
//
//  Created by Arty Cake on 9/7/17.
//  Copyright © 2017 Arty Cake. All rights reserved.
//

import Foundation

let positions: [String] = ["Programmer", "SMM", "Team Lead", "PR manager", "CEO", "CTO", "CMO"]
let firstNames: [String] = ["Alex", "Michel", "John", "Ivan", "Nick", "Helen", "Hanna"]
let lastNames: [String] = ["Snow", "Frost", "Wright", "Martin", "Mask"]

class EmployeesManager {
    
    func generateFakeEmployees(number: Int) -> [Employee] {
        var employees = [Employee]()
        var randomIndex: Int
        for index in 1...number {
            randomIndex = Int(arc4random_uniform(UInt32(firstNames.count)))
            let firstName = firstNames[randomIndex]
            randomIndex = Int(arc4random_uniform(UInt32(lastNames.count)))
            let lastName = lastNames[randomIndex]
            randomIndex = Int(arc4random_uniform(UInt32(positions.count)))
            let position = positions[randomIndex]
            var description = ""
            for row in 1...index {
                description += "\(row):\tDescription of employee #\(index)\n"
            }
            
            let employee = Employee(firstName: firstName, lastName: lastName, position: position, description: description)
            employees.append(employee)
        }
        
        return employees
    }
}
