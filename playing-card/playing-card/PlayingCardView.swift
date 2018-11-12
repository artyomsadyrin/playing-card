//
//  PlayingCardView.swift
//  playing-card
//
//  Created by Artyom Sadyrin on 11/12/18.
//  Copyright © 2018 Artyom Sadyrin. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
        UIColor.green.setFill()
        UIColor.red.setStroke()
        path.lineWidth = 5
        path.stroke()
        path.fill()
    }

}
