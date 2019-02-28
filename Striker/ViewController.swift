//
//  ViewController.swift
//  Striker
//
//  Created by Blakely Fabiani on 2/28/19.
//  Copyright © 2019 Team 4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var trailingC: NSLayoutConstraint!
    
    @IBOutlet var leadingC: NSLayoutConstraint!
    
    @IBOutlet var ubeView: UIView!
    
    var menuButtonIsVisible = false
    
    @IBAction func MenuButtonTapped(_ sender: Any) {
        //if the hamburger menu is NOT visible, then move the ubeView back to where it used to be
        if !menuButtonIsVisible {
            leadingC.constant = 250
            //this constant is NEGATIVE because we are moving it 150 points OUTWARD and that means -150
            trailingC.constant = -250
            
            //1
            menuButtonIsVisible = true
        } else {
            //if the hamburger menu IS visible, then move the ubeView back to its original position
            leadingC.constant = 0
            trailingC.constant = 0
            
            //2
            menuButtonIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButtonIsVisible = false
        // Do any additional setup after loading the view, typically from a nib.
    }


}

