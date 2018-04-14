//
//  MainViewController.swift
//  PRTracker
//
//  Created by Caleb Talbot on 4/8/18.
//  Copyright © 2018 Caleb Talbot. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {
    
    @IBOutlet weak var toggleDrawerButton: UIButton!
    @IBOutlet weak var weightsDrawer: WeightDrawerView!
    
    let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggleDrawerButton.rx
            .controlEvent(UIControlEvents.touchUpInside)
            .bind {
                self.weightsDrawer.toggle()
            }
            .disposed(by: bag)
    }
}
