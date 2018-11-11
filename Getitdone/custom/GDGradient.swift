//
//  GDGradient.swift
//  Getitdone
//
//  Created by Albert on 2/8/18.
//  Copyright © 2018 Albert Mialet Gimenez. All rights reserved.
//

import UIKit

class GDGradient:UIView {
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var colors:[CGColor] = [
        UIColor.init(red: 58, green: 123, blue: 213).cgColor,
        UIColor.init(red: 100, green: 228, blue: 255).cgColor
    
    ]
    
    var hexColors:[CGColor] = [
        UIColor.blueZero.cgColor,
        UIColor.blueOne.cgColor
    ]
    
    init(frame: CGRect = .zero, cornerRadius: CGFloat = 0) {
        super.init(frame: frame)
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.hexColors
            layer.locations = [0.0 , 1.2]
            layer.cornerRadius = cornerRadius
        }
    }
    
//    override init(frame: CGRect = .zero) {
//        super.init(frame: frame)
//        if frame == .zero {
//            translatesAutoresizingMaskIntoConstraints = false
//        }
//        if let layer = self.layer as? CAGradientLayer {
//            layer.colors = self.hexColors
//            layer.locations = [0.0 , 1.2]
//        }
//
//    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
}
