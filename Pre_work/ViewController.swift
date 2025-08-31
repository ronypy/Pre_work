//
//  ViewController.swift
//  Pre_work
//
//  Created by Md. Rakibul Hasan on 8/30/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstnametextfield: UITextField!
    @IBOutlet weak var lastnametextfield: UITextField!
    @IBOutlet weak var schoolnametextfield: UITextField!
    
    @IBOutlet weak var morepetsswitch: UISwitch!
    @IBOutlet weak var morepetsstepper: UIStepper!
    @IBOutlet weak var petlebel: UILabel!
    @IBOutlet weak var yearsegmentcontrol: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {

       petlebel.text = "\(Int(sender.value))"
   }

    @IBOutlet weak var stepperDidChange: UILabel!
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {

            // Lets us choose the title we have selected from the segmented control
            // In our example that is whether it is first, second, third or forth
            let year = yearsegmentcontrol.titleForSegment(at: yearsegmentcontrol.selectedSegmentIndex)

            // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
            let introduction = "My name is \(firstnametextfield.text!) \(lastnametextfield.text!) and I attend \(schoolnametextfield.text!). I am currently in my \(year!) year and I own \(petlebel.text!) dogs. It is \(morepetsswitch.isOn) that I want more pets."
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)

            print(introduction)
        }
    

}

