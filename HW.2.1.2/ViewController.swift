//
//  ViewController.swift
//  HW.2.1.2
//
//  Created by Denis Shpagin on 28.02.2023.
//

import UIKit

enum CollorView {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var collorView = CollorView.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        redView.layer.cornerRadius = redView.frame.size.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.height / 2
        greenView.layer.cornerRadius = greenView.frame.size.height / 2
        
        startButton.layer.cornerRadius = 20
    }
    
    @IBAction func pressesButton(_ sender: UIButton) {
        startButton.setTitle("Next", for: .normal)
        
        switch collorView {
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            collorView = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            collorView = .green
        case .green:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            collorView = .red
        }
    }
    
}

