//
//  ViewController.swift
//  FlashApp
//
//  Created by 오국원 on 2021/06/14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onButtonClicked(_ sender: Any) {
        label.text = "On"
        view.backgroundColor = UIColor.white
        imageView.image = UIImage(systemName:"flashlight.on.fill")
        label.textColor = UIColor.black
        
    }
    
    @IBAction func offButtonClicked(_ sender: Any) {
        label.text = "OFF"
        view.backgroundColor = UIColor(red: 10 / 255.0, green: 40 / 255.0, blue: 210 / 255.0, alpha: 1)
        imageView.image = UIImage(systemName:"flashlight.off.fill")
        label.textColor = UIColor.white
        
        
    }
    
}

