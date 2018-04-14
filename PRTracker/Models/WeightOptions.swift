//
//  Weight.swift
//  PRTracker
//
//  Created by Caleb Talbot on 4/13/18.
//  Copyright © 2018 Caleb Talbot. All rights reserved.
//

import UIKit

class Plate: Weight {
    var type: WeightType {
        return .plate
    }
    var value: Int
    var number: Int = 0
    
    init(with value: Int) {
        self.value = value
    }
}

class Bar: Weight {
    var type: WeightType {
        return .bar
    }
    var value: Int
    var number: Int {
        return 1
    }
    
    init(with value: Int) {
        self.value = value
    }
}

class Misc: Weight {
    var type: WeightType {
        return .misc
    }
    var value: Int
    var number: Int = 0
    
    init(with value: Int) {
        self.value = value
    }
}

protocol Weight {
    var type: WeightType { get }
    var value: Int { get }
}

enum WeightType: Int {
    case plate
    case bar
    case misc
}
