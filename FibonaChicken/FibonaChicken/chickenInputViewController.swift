//
//  chickenInputViewController.swift
//  FibonaChicken
//
//  Created by 오국원 on 2021/07/04.
//

import UIKit

class chickenInputViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func textEditingChanged(_ sender: Any) {
        var text = textField.text ?? ""
        stepper.value = Double(text) ?? 0
    }
    @IBAction func stepperValueChanged(_ sender: Any) {
        var value = stepper.value
        textField.text = String(Int(value))
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     if var controller = segue.destination as? ChickenOutputViewController{
        controller.numberOfPeople = Int(stepper.value)
     }
 }

}
