//
//  MainViewController.swift
//  PRTracker
//
//  Created by Caleb Talbot on 4/8/18.
//  Copyright © 2018 Caleb Talbot. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var weightsDrawer: WeightDrawerView!
    var drawerIsHidden: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleDrawer(_ sender: Any) {
        if drawerIsHidden {
            weightsDrawer.showDrawer()
            drawerIsHidden = false
        } else {
            weightsDrawer.hideDrawer()
            drawerIsHidden = true
        }
    }
}
