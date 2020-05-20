//
//  ViewController.swift
//  ParshinPS_HW2.1 task 2
//
//  Created by Pavel Parshin on 19.05.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum lightVariable {
           case none, red, yellow, green
       }
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var switchLightButton: UIButton!
    
    var currentLight = lightVariable.none
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        redLightView.layer.cornerRadius = redLightView.frame.width / 2          //Исправление. Было redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        switchLightButton.layer.cornerRadius = 10
    }

    @IBAction func switchLightButtonPressed() {
        
        switchLightButton.setTitle("NEXT", for: .normal)
        switch currentLight {
        case .none:
            redLightView.alpha = 1
            currentLight = .yellow
        case .red:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
            currentLight = .green
        case .green:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            currentLight = .red
        }
        
    }
    
}

