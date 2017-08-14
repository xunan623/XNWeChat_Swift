//
//  XNLoginTopView.swift
//  XNWeChatSwift
//
//  Created by xunan on 2017/8/7.
//  Copyright © 2017年 xunan. All rights reserved.
//

import UIKit

class XNLoginTopView: UIView {

    // MARK: - 回调属性
    var cancelBlock: (() -> ())?
    var loginBtnBlock: ((_ canLogin: Bool) -> ())?
    
    var phoneLength: Int = 0
    var pwdLength: Int = 0
    
    class func newInstance() -> XNLoginTopView? {
        let nibView = Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)
        if let view = nibView?.first as? XNLoginTopView {
            return view
        }
        return nil
    }
    
    // MARK: 拖线 属性
    @IBOutlet weak var phoneF: UITextField!
    @IBOutlet weak var pwdF: UITextField!
    

    
    // MARK:- 拖线事件
    @IBAction func cancel() {
        if self.cancelBlock != nil {
            self.cancelBlock!();
        }
    }
    
    
}


extension XNLoginTopView: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if self.loginBtnBlock == nil {
            return true
        }
        
        let strLength = (textField.text?.lengthOfBytes(using: String.Encoding.utf8))! - range.length + string.lengthOfBytes(using: String.Encoding.utf8)
        
        if textField == self.phoneF {
            self.phoneLength = strLength
        }
        else if textField == self.pwdF {
            self.pwdLength = strLength
        }
        
        if phoneLength > 0 && pwdLength > 0 {
            self.loginBtnBlock!(true)
        } else {
            self.loginBtnBlock!(false)
        }
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        LXFLog(textField.text?.lengthOfBytes(using: String.Encoding.utf8))
    }
}

