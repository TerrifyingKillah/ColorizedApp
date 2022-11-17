//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Александр on 17.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IB Outlet
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 23
        
        setupLabel()
        setupSliders()
    }
    
    // MARK: IB Actions
    @IBAction func changeValueRedSlider(_ sender: UISlider) {
        redValueLabel.text = String(round(redSlider.value * 100) / 100)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 1 ,
            green: CGFloat(greenSlider.value) / 1, blue: CGFloat(blueSlider.value) / 1, alpha: 1)
    }

    @IBAction func changeValueGreenSlider(_ sender: UISlider) {
        greenValueLabel.text = String(round(greenSlider.value * 100) / 100)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 1,
            green: CGFloat(greenSlider.value) / 1, blue: CGFloat(blueSlider.value) / 1, alpha: 1)
    }
    
    @IBAction func changeValueBlueSlider(_ sender: UISlider) {
        blueValueLabel.text = String(round(blueSlider.value * 100) / 100)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 1,
            green: CGFloat(greenSlider.value) / 1, blue: CGFloat(blueSlider.value) / 1, alpha: 1)
    }
    
    // MARK: Private methods
    private func setupLabel() {
        redValueLabel.text = String(redSlider.value)
        greenValueLabel.text = String(greenSlider.value)
        blueValueLabel.text = String(blueSlider.value)
    }
    
    private func setupSliders() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
    }
}

