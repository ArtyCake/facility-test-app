//
//  EmployeeViewCell.swift
//  Facility Test Application
//
//  Created by Arty Cake on 9/7/17.
//  Copyright © 2017 Arty Cake. All rights reserved.
//

import UIKit

class EmployeeViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!

    public func updateUI(employee: Employee){
        self.nameLabel.text = employee.fullName
        self.positionLabel.text = employee.position
    }

}
