//
//  cardview.swift
//  eComplaint
//
//  Created by Student on 27/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class cardview : UIView {
    var cornerRadius : CGFloat = 8
    var offsetWidth : CGFloat = 5
    var offsetHeight : CGFloat = 5
    
    var offsetShadow : Float = 8
    var color = UIColor.gray
    
    override func layoutSubviews() {
        layer.cornerRadius = self.cornerRadius
        layer.shadowColor = self.color.cgColor
        layer.shadowOffset = CGSize(width: self.offsetWidth, height: self.offsetHeight)
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: self.cornerRadius).cgPath
        layer.shadowOpacity = self.offsetShadow
    }
}
