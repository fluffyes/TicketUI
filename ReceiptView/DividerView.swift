//
//  DividerView.swift
//  ReceiptView
//
//  Created by Soulchild on 29/10/2020.
//  Copyright © 2020 fluffy. All rights reserved.
//

import UIKit

class DividerView: UIView {
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let width: CGFloat = rect.width
        let height: CGFloat = rect.height
        
        let radius: CGFloat = height / 2.0
        
        let startingPoint = CGPoint(x: 0, y: 0)
        
        let path: UIBezierPath = UIBezierPath()
        
        path.move(to: startingPoint)
        
        // draw the rectangle with left and right side cut out
        path.addLine(to: CGPoint(x: width, y: 0))
        path.addArc(withCenter: CGPoint(x: width, y: height / 2.0), radius: radius, startAngle: 0 - CGFloat.pi / 2.0, endAngle: CGFloat.pi / 2.0, clockwise: false)
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addArc(withCenter: CGPoint(x: 0, y: height / 2.0), radius: radius, startAngle: CGFloat.pi / 2.0, endAngle: 0 - CGFloat.pi / 2.0, clockwise: false)
        
        path.close()
        
        UIColor.white.setFill()
        UIColor.clear.setStroke()
        
        path.fill()
        path.stroke()
        

        // add dash line
        
        let dashLine: UIBezierPath = UIBezierPath()
        dashLine.lineWidth = 4.0
        dashLine.move(to: CGPoint(x: radius, y: radius))
        dashLine.addLine(to: CGPoint(x: width - radius, y: radius))
        
        let pattern: [CGFloat] = [15.0, 5.0]
        dashLine.setLineDash(pattern, count: 1, phase: 0)
        UIColor.systemGray4.setStroke()
        dashLine.stroke()
    }
    
    
}
