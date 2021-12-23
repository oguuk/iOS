//
//  ReviewWriteViewController.swift
//  BookReview
//
//  Created by 오국원 on 2021/07/05.
//

import UIKit
import Alamofire
import SwiftyJSON

class ReviewWriteViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var reviewTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonClicked(_ sender: Any) {
        var title = titleTextField.text ?? ""
        var author = authorTextField.text ?? ""
        var review = reviewTextField.text ?? ""
        
        if title.count == 0 || author.count == 0 || review.count == 0 {
             var alert = UIAlertController(title: "책리뷰", message: "모두 입력해주세요!", preferredStyle: .alert)
             alert.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
             //경고창 띄워주기
             self.present(alert, animated: true, completion: nil)
             return
         }
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
