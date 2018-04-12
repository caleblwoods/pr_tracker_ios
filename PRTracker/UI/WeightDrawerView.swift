//
//  WeightDrawerView.swift
//  PRTracker
//
//  Created by Caleb Talbot on 4/8/18.
//  Copyright © 2018 Caleb Talbot. All rights reserved.
//

import UIKit

class WeightDrawerView: UIView {
    
    private var height: CGFloat?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        height = frame.height
    }
    
    func hideDrawer() {
        guard let height = height else { return }
        UIView.animate(withDuration: 0.4) {
            self.frame.origin.y = self.frame.origin.y + height
        }
    }
    
    func showDrawer() {
        guard let height = height else { return }
        UIView.animate(withDuration: 0.4) {
            self.frame.origin.y = self.frame.origin.y - height
        }
    }
}
