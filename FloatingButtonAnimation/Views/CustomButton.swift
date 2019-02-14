//
//  CustomButton.swift
//  FloatingButtonAnimation
//
//  Created by Taimoor Saeed on 14/02/2019.
//  Copyright © 2019 Taimoor Saeed. All rights reserved.
//


import UIKit

class AnimatedButton : UIButton {
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        UIView.animate(withDuration: 0.2, animations : {
            // identifiy is default value of transformation when you have no sclaing no transoformation nothing
            // say it like when there is not transform
            if self.transform == .identity {
                self.transform = CGAffineTransform(rotationAngle: 45 * (.pi / 180))
               self.backgroundColor = #colorLiteral(red: 0.9294, green: 0.0431, blue: 0.4275, alpha: 1) /* #ed0b6d */
            } else {
                self.transform = .identity
                
                 self.backgroundColor = #colorLiteral(red: 0.8314, green: 0.0431, blue: 0.4824, alpha: 1) /* #d40b7b */
            }
        })
        return super.beginTracking(touch, with: event)
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        //        UIView.animate(withDuration: 0.35, animations: )
    }
    
    
    
}


