//
//  ViewController.swift
//  BullsEye
//
//  Created by user on 6/10/21.
//

import UIKit

    var currentValue: Int = 0

    class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(
            title: "Hello World",
            message:"This is my first app!",
            preferredStyle: .alert)
        
        let action = UIAlertAction (
            title: "Awesome",
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

