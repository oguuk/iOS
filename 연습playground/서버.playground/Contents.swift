```swift
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
        var id = idTextField.text ?? ""
        var pw = pwTextField.text ?? ""
        
        //텍스트 필드 셋중에 하나라도 입력이 안되면
        if id.count == 0 || pw.count == 0 {
            var alert = UIAlertController(title: "로그인 오류", message: "모두 입력해주세요!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
            //경고창 띄워주기
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        var parameters = [
            "id": id,
            "pw": pw,
        ]
        
        AF.request("https://3876f1c44f31.ngrok.io/login", method: .post, parameters: parameters).responseJSON { (response) in
            
            if var value = response.value {
                var json = JSON(response.value!)
                print(json)
                
                //입력 화면을 사라지게 하고, 테이블뷰로 돌아가기
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}
```
