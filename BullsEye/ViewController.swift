//
//  ViewController.swift
//  BullsEye
//
//  Created by user on 6/10/21.
//

import UIKit

    var currentValue: Int = 1



    class ViewController: UIViewController {
        
        @IBOutlet var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is \(currentValue)"
        
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
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}

