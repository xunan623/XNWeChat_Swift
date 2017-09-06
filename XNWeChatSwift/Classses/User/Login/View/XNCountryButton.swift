//
//  XNCountryButton.swift
//  XNWeChatSwift
//
//  Created by xunan on 2017/9/6.
//  Copyright © 2017年 xunan. All rights reserved.
//

import UIKit

class XNCountryButton: UIButton {

    let imgW: CGFloat = 10
    
    override func awakeFromNib() {
        self.imageView?.contentMode = .scaleAspectFit
    }
    
    override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
        return CGRect(x: contentRect.size.width - imgW, y: 0, width: imgW, height: contentRect.size.height)
    }
    
    override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
        return CGRect(x: 0, y: 0, width: contentRect.size.width - imgW, height: contentRect.size.height)
    }
}
