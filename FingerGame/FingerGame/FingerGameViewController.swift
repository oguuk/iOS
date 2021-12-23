  //
//  FingerGameViewController.swift
//  FingerGame
//
//  Created by 오국원 on 2021/07/15.
//

import UIKit
import Firebase

class FingerGameViewController: UIViewController {

    @IBOutlet weak var gameView: FingerGameView!
    @IBOutlet weak var secondsLabel: UILabel!
    
    var secondsLeft = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        gameView.controller = self
    }
    
    @IBAction func closeButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
        
    var timer: Timer?
    func touchCountDidChange(){
        timer?.invalidate()
        
        
        
        
        timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (_) in
            for roundView in self.gameView.touchToRouncView.values{
                var randomChoice = Bool.random()
                
                UIView.animate(withDuration: 1){
                if randomChoice {
                    roundView.backgroundColor = UIColor(named: "green")
                }else {
                    roundView.backgroundColor = UIColor(named: "orange")
                }
                    let center = roundView.center
                    roundView.frame.size = CGSize(width:120, height: 120)
                    roundView.layer.cornerRadius = 60
                    roundView.center = center
              }
            }
        }
        resetSecondsTimer()
    }
    var secondsTimer: Timer?
    func resetSecondsTimer(){
        secondsTimer?.invalidate()
        
        if gameView.touchToRouncView.count > 0 {
            
            self.secondsLeft = 5
            self.secondsLabel.text = "5"
            self.blinkSecondsLabel()
            
            secondsTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (t) in
                self.secondsLeft -= 1
                self.secondsLabel.text = "\(self.secondsLeft)"
                self.blinkSecondsLabel()
                
                
                if self.secondsLeft == 0{
                    self.secondsLabel.text = ""
                    self.secondsTimer?.invalidate()
                }
            })
        } else{
            self.secondsLabel.text = ""
            self.blinkSecondsLabel()
            
        }
        }
    
    //깜박거리는 함수
    func blinkSecondsLabel(){
        self.secondsLabel.alpha = 1
        
        UIView.animate(withDuration: 0.3) {
            self.secondsLabel.alpha = 0
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


  
