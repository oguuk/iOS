//
//  coffeeOutputViewController.swift
//  coffeeList
//
//  Created by 오국원 on 2021/07/04.
//

import UIKit

class coffeeOutputViewController: UIViewController {

    @IBOutlet weak var amLabel: UILabel!
    @IBOutlet weak var ltLabel: UILabel!
    @IBOutlet weak var mcLabel: UILabel!
    @IBOutlet weak var isLabel: UILabel!
    
    var amCount: Int = 0
    var ltCount: Int = 0
    var mcCount: Int = 0
    var isCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amLabel.text = "아메리카노 \(amCount)개"
        ltLabel.text = "라떼 \(ltCount)개"
        mcLabel.text = "말차 \(mcCount)개"
        isLabel.text = "아인슈페너 \(isCount)개"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
