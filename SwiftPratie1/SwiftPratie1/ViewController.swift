//
//  ViewController.swift
//  SwiftPratie1
//
//  Created by 오국원 on 2021/06/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var onOffswitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onOffswitchValue(_ sender: Any) {
        UIView.transition(with: imageView, duration: 0.6, options: .transitionFlipFromLeft){
            if self.onOffswitch.isOn{
                self.imageView.image = UIImage(named: "ace")
            }else{
                self.imageView.image = UIImage(named: "poker")
            }
        } completion: {(animated) in
        }
    }
    
    
}

