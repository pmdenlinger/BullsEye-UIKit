//
//  ViewController.swift
//  BullsEye
//
//  Created by user on 6/10/21.
//

import UIKit

    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0



    class ViewController: UIViewController {
        
        @IBOutlet var slider: UISlider!
        @IBOutlet var targetLabel: UILabel!
        @IBOutlet var scoreLabel: UILabel!
        @IBOutlet var roundLabel: UILabel!
        
        

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
        
        func startNewRound() {
            round += 1
            targetValue = Int.random(in: 1...100)
            currentValue = 50
            slider.value = Float(currentValue)
            updateLabels()
        }
        
        func updateLabels() {
            targetLabel.text = String(targetValue)
            scoreLabel.text = String(score)
            roundLabel.text = String(round)
        }

    @IBAction func showAlert() {
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        
        score += points
        
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

