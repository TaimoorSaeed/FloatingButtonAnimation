//
//  MainViewController.swift
//  FloatingButtonAnimation
//
//  Created by Taimoor Saeed on 14/02/2019.
//  Copyright © 2019 Taimoor Saeed. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    let bgView = UIView()
    @IBOutlet weak var floatBtn: AnimatedButton!
    @IBOutlet weak var roundView: UIView!
    let screenSize: CGRect = UIScreen.main.bounds

    override func viewDidLoad() {
        super.viewDidLoad()
        floatBtn.layer.cornerRadius = 35
        floatBtn.clipsToBounds = true
        
        roundView.layer.cornerRadius = 360
        roundView.clipsToBounds = true
         self.roundView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        let screenSize: CGRect = UIScreen.main.bounds
        self.bgView.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height)
        bgView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        bgView.isHidden = true
        view.insertSubview(bgView, at: 1)
        
       
    }
    
    
    @IBAction func menuBtnTapped(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.2, animations: {
            if self.roundView.transform == .identity {
                //open
               self.roundView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                self.bgView.isHidden = true
            } else {
                
                self.roundView.transform = .identity
                self.bgView.isHidden = false
            }
        })
       
        
    }
}
