//
//  ViewController.swift
//  vibrate
//
//  Created by 오국원 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func buttonDidClick(_ sender: Any){
        let noti = UINotificationFeedbackGenerator()
        noti.notificationOccurred(.success)
    }

}

