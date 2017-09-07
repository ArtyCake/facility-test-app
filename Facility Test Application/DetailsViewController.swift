//
//  DetailsViewController.swift
//  Facility Test Application
//
//  Created by Arty Cake on 9/7/17.
//  Copyright © 2017 Arty Cake. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    public var employee: Employee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Employee Details"

        if self.employee != nil {
            self.nameLabel.text = self.employee!.fullName
            self.positionLabel.text = self.employee!.position
            self.descriptionTextView.text = self.employee!.description
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.descriptionTextView.setContentOffset(CGPoint.zero, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        UIView.animate(withDuration: 0.5) {
            UIView.setAnimationCurve(.easeInOut)
            UIView.setAnimationTransition(.flipFromLeft, for: self.navigationController!.view!, cache: false)
        }
    }
}
