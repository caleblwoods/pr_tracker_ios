//
//  WeightOptionCollectionViewCell.swift
//  PRTracker
//
//  Created by Caleb Talbot on 4/13/18.
//  Copyright © 2018 Caleb Talbot. All rights reserved.
//

import UIKit

class WeightOptionCollectionViewCell: UICollectionViewCell {
    
    var type: WeightType?
    var value: Int = 0
    
    func configure(with weight: Weight) {
        self.type = weight.type
        self.value = weight.value
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
