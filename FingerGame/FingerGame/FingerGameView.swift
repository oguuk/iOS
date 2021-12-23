//
//  FingerGameView.swift
//  FingerGame
//
//  Created by 오국원 on 2021/07/15.
//

import UIKit

class FingerGameView: UIView {
    
    weak var controller: FingerGameViewController?
    
    var touchToRouncView: [UITouch: UIView] = [:]

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
            view.center = touch.location(in: self)
            view.backgroundColor = UIColor(named: "red")
            view.layer.cornerRadius = 40
            
            self.touchToRouncView[touch] = view
            self.addSubview(view)
            
            self.controller?.touchCountDidChange()
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let view = self.touchToRouncView[touch]
            view?.center = touch.location(in: self)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?){
        for touch in touches{
            let view = self.touchToRouncView[touch]
            
            view?.removeFromSuperview()
            self.touchToRouncView.removeValue(forKey: touch)
            
            self.controller?.touchCountDidChange()
        }
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let view = self.touchToRouncView[touch]
            
            view?.removeFromSuperview()
            self.touchToRouncView.removeValue(forKey: touch)
            
            self.controller?.touchCountDidChange()
        }
    }
}
