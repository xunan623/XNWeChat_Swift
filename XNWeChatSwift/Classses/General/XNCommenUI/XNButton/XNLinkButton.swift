//
//  XNLinkButton.swift
//  XNWeChatSwift
//
//  Created by xunan on 2017/8/7.
//  Copyright © 2017年 xunan. All rights reserved.
//

import UIKit

class XNLinkButton: UIButton {

    init(title: String, fontSize: CGFloat) {
        super.init(frame: CGRect.zero)
        
        let linkColor = RGBA(r: 0.42, g: 0.49, b: 0.62, a: 1.0)
        self.setTitle(title, for: .normal)
        self.setTitleColor(linkColor, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        self.titleLabel?.sizeToFit()
        self.bounds = (self.titleLabel?.bounds)!
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
