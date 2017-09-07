//
//  ViewController.swift
//  Facility Test Application
//
//  Created by Arty Cake on 9/7/17.
//  Copyright © 2017 Arty Cake. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var employeesTableView: UITableView!
    
    private var employees: [Employee] = [Employee]()
    private let employeesManager: EmployeesManager = EmployeesManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        employeesTableView.delegate = self
        employeesTableView.dataSource = self
        employees = employeesManager.generateFakeEmployees(number: 150)
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsViewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "detailsViewController") as! DetailsViewController
        detailsViewController.employee = employees[indexPath.row]
        
        UIView.animate(withDuration: 0.5, animations: {
            UIView.setAnimationCurve(.easeOut)
            self.navigationController?.pushViewController(detailsViewController, animated: false)
            UIView.setAnimationTransition(.flipFromRight, for: self.navigationController!.view!, cache: false)
        })
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "employeeCell", for: indexPath) as? EmployeeViewCell
        if cell == nil {
            cell = EmployeeViewCell()
        }
        cell?.updateUI(employee: employees[indexPath.row])
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.employees.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}

