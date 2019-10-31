//
//  ViewController.swift
//  Homework6
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var selectionSwitch: UISwitch!
    @IBOutlet var selectionButton: UIButton!
    @IBOutlet var continueButton: UIButton!
    
    var correctSegmentClicked: Bool?
    var selectionSwitchIsOn: Bool? = true
    var selectionButtonWasTapped: Bool = false
    
    @IBAction func segmentedControllerDidChangeValue(_ sender: UISegmentedControl) {
        if segmentedController.selectedSegmentIndex == 1 {
            correctSegmentClicked = true
        }
        else{
            correctSegmentClicked?.toggle()
        }
        enableButton()
    }
    
    @IBAction func selectionSwitchDidChangeValue(_ sender: UISwitch) {
        if selectionSwitch.isOn{
            selectionSwitchIsOn = true
        }
        else{
            selectionSwitchIsOn?.toggle()
        }
        enableButton()
    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        selectionButtonWasTapped.toggle()
        enableButton()
    }
    
    func enableButton(){
        if correctSegmentClicked ?? false && selectionSwitchIsOn ?? false && selectionButtonWasTapped{
            continueButton.isEnabled = true
        }
        else{
            continueButton.isEnabled = false
        }
    }
    
}

