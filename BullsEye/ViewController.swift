//
//  ViewController.swift
//  BullsEye
//
//  Created by user on 6/10/21.
//

import UIKit

    var currentValue: Int = 50
    var targetValue = 0



    class ViewController: UIViewController {
        
        @IBOutlet var slider: UISlider!
        @IBOutlet var targetLabel: UILabel!
        

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
        
        func startNewRound() {
            targetValue = Int.random(in: 1...100)
            currentValue = 50
            slider.value = Float(currentValue)
            updateLabels()
        }
        
        func updateLabels() {
            targetLabel.text = String(targetValue)
        }

    @IBAction func showAlert() {
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        
        let message = "You scored \(points) points."
//        The value of the slider is \(currentValue)" +
//        "\nThe target value is: \(targetValue)" + "\nThe difference is: \(difference)"
        
        let alert = UIAlertController(
            title: "Hello World",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction (
            title: "OK",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil
        )
        startNewRound()
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}

