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
    private var lambdaBackroundColor = UIColor.red.cgColor
    private var lambdaCenterColor = UIColor.white.cgColor
    private var testColor = UIColor.yellow.cgColor
    
    let logo = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    func roundEdges() {
        logo.layer.cornerRadius = 12
    }
    
    // MARK: - Draw
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // Backround Rect
            
            let backroundRect = CGRect(x: 20, y: 50, width: 300, height: 375)
            context.addRect(backroundRect)
            context.setFillColor(lambdaBackroundColor)
            context.fillPath()
            
            
            // White triangle in center of logo
            context.beginPath()
            context.move(to: CGPoint(x: 170, y: 100))
            context.addLine(to: CGPoint(x: 270, y: 275))
            context.addLine(to: CGPoint(x: 70, y: 275))
            context.closePath()
            
            context.setFillColor(lambdaCenterColor)
            context.fillPath()
            
            // Top mini red triangle
            context.beginPath()
            context.move(to: CGPoint(x: 170, y: 100))
            context.addLine(to: CGPoint(x: 190, y: 130))
            context.addLine(to: CGPoint(x: 150, y: 130))
            context.closePath()
            
            context.setFillColor(lambdaBackroundColor)
            context.fillPath()
            
            // Lower red center triangle
            context.beginPath()
            context.move(to: CGPoint(x: 170, y: 175))
            context.addLine(to: CGPoint(x: 230, y: 275))
            context.addLine(to: CGPoint(x: 110, y: 275))
            context.closePath()
            
            context.setFillColor(lambdaBackroundColor)
            context.fillPath()
            
            // Lower left white triangle
            context.beginPath()
            context.move(to: CGPoint(x: rect.minX, y: 300))
            context.addLine(to: CGPoint(x: rect.midX, y: 425))
            context.addLine(to: CGPoint(x: rect.minX, y: 425))
            context.closePath()
            
            context.setFillColor(lambdaCenterColor)
            context.fillPath()
            
            // Lower right white triangle
            context.beginPath()
            context.move(to: CGPoint(x: rect.maxX, y: 300))
            context.addLine(to: CGPoint(x: rect.midX, y: 425))
            context.addLine(to: CGPoint(x: rect.maxX, y: 425))
            context.closePath()
            
            context.setFillColor(lambdaCenterColor)
            context.fillPath()
            
            
        }
    }
}
