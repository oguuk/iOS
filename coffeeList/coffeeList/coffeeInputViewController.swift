//
//  coffeeInputViewController.swift
//  coffeeList
//
//  Created by 오국원 on 2021/07/04.
//

import UIKit

class coffeeInputViewController: UIViewController {

    @IBOutlet weak var amLabel: UITextField!
    @IBOutlet weak var ltLabel: UITextField!
    @IBOutlet weak var mcLabel: UITextField!
    @IBOutlet weak var isLabel: UITextField!
    
    @IBOutlet weak var amStepper: UIStepper!
    @IBOutlet weak var ltStepper: UIStepper!
    @IBOutlet weak var mcStepper: UIStepper!
    @IBOutlet weak var isStepper: UIStepper!
    @IBOutlet weak var orderSubmit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func amEditing(_ sender: Any) {
        var text = amLabel.text ?? ""
        amStepper.value = Double(text) ?? 0
    }
    @IBAction func ltEditing(_ sender: Any) {
        var text = ltLabel.text ?? ""
        ltStepper.value = Double(text) ?? 0
    }
    @IBAction func mcEditing(_ sender: Any) {
        var text = mcLabel.text ?? ""
        mcStepper.value = Double(text) ?? 0
    }
    @IBAction func isEditing(_ sender: Any) {
        var text = isLabel.text ?? ""
        isStepper.value = Double(text) ?? 0
    }
    
    @IBAction func amValueChanged(_ sender: Any) {
        var value = amStepper.value
        amLabel.text = String(Int(value))
    }
    @IBAction func ltValueChanged(_ sender: Any) {
        var value = ltStepper.value
        ltLabel.text = String(Int(value))
    }
    @IBAction func mcValueChanged(_ sender: Any) {
        var value = mcStepper.value
        mcLabel.text = String(Int(value))
    }
    @IBAction func isValueChanged(_ sender: Any) {
        var value = isStepper.value
        isLabel.text = String(Int(value))
    }
    
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if var controller = segue.destination as? coffeeOutputViewController{
            controller.amCount = Int(amStepper.value)
            controller.ltCount = Int(ltStepper.value)
            controller.mcCount = Int(mcStepper.value)
            controller.isCount = Int(isStepper.value)
        }

    }


}
