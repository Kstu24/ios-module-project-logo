//
//  Logo.swift
//  Logo
//
//  Created by Kevin Stewart on 2/4/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class Logo: UIView {
    // MARK: - Properties
    private var lambdaBackroundColor = UIColor.white
    
    
    
    
    // MARK: - Draw
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.beginPath()
              context.move(to: CGPoint(x: rect.minX, y: rect.minY))
              context.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
              context.addLine(to: CGPoint(x: (rect.minX), y: rect.maxY))
              context.closePath()

            context.setFillColor(lambdaBackroundColor.cgColor)
              context.fillPath()
        }
        
        
    }
    

}
