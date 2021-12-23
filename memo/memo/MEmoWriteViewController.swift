//
//  MEmoWriteViewController.swift
//  memo
//
//  Created by 오국원 on 2021/07/10.
//

import UIKit
import Alamofire
import SwiftyJSON

class MEmoWriteViewController: UIViewController {

    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var commentTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        urlTextField.layer.cornerRadius = 10
        urlTextField.layer.borderWidth = 1
        urlTextField.layer.borderColor = UIColor.gray.cgColor
        urlTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        urlTextField.leftViewMode = .always
        
        commentTextField.layer.cornerRadius = 10
        commentTextField.layer.borderWidth = 1
        commentTextField.layer.borderColor = UIColor.gray.cgColor
        commentTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        commentTextField.leftViewMode = .always
        // Do any additional setup after loading the view.
    }
    @IBAction func doneBtnClicked(_ sender: Any) {
        var url = urlTextField.text ?? ""
        var comment = commentTextField.text ?? ""
        
        
        var parameters = [
            "url_give": url,
            "comment_give": comment
        ]
        
        AF.request("http://spartacodingclub.shop/post",method: .post, parameters: parameters).responseJSON {
            (response) in
            if var value = response.value{
                var json = JSON(value)
                print(json)
                
                self.navigationController?
                    .popViewController(animated: true)
            }
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
