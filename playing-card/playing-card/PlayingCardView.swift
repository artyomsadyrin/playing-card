//
//  PlayingCardView.swift
//  playing-card
//
//  Created by Artyom Sadyrin on 11/12/18.
//  Copyright © 2018 Artyom Sadyrin. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {
    
    private func centeredAttributedString(_ string: String, fontSize: CGFloat) -> NSAttributedString {
        
        var font = UIFont.preferredFont(forTextStyle: .body).withSize(fontSize)
        font = UIFontMetrics(forTextStyle: .body).scaledFont(for: font) //allow auto-change font size if user do that in Settings of iPhone
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        
        return NSAttributedString(string: string, attributes: [.paragraphStyle:paragraphStyle, .font: font])
    }

    override func draw(_ rect: CGRect) {
        
        let roundedRect = UIBezierPath(roundedRect: bounds, cornerRadius: 16)
        roundedRect.addClip()
        UIColor.white.setFill()
        roundedRect.stroke()
        //roundedRect.fill()
    }

}
