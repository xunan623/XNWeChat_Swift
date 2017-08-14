//
//  XNUserController.swift
//  XNWeChatSwift
//
//  Created by xunan on 2017/8/4.
//  Copyright © 2017年 xunan. All rights reserved.
//

import UIKit

class XNUserController: XNBaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red
        
        self.setup()
    }

}

extension XNUserController {
    
    fileprivate func setup() {
        
        // 添加背景
        view.backgroundColor = UIColor.black;
        let bgImageView = UIImageView.init(image: #imageLiteral(resourceName: "LaunchImage"))
        bgImageView.contentMode = .scaleAspectFit
        bgImageView.frame = view.bounds
        view.addSubview(bgImageView)
        
        // 添加按钮
        let margin: CGFloat = 20
        let btnW: CGFloat = (kScreenW - 3.0 * margin) * 0.5
        let btnH: CGFloat = 45
        
        // 登录按钮
        let loginBtn = XNBarButton(bgColor: kBtnWhite, disabledColor: nil, title: "登录", titleColor: UIColor.black, titleHighlightedColor: UIColor.darkGray)
        loginBtn.addTarget(self, action: #selector(login), for: .touchUpInside)
        view.addSubview(loginBtn)
        loginBtn.snp.makeConstraints { (make) in
            make.left.equalTo(view).offset(margin)
            make.width.equalTo(btnW)
            make.height.equalTo(btnH)
            make.bottom.equalTo(view).offset(-margin)
        }
        
        // 注册
        let registerBtn = XNBarButton(bgColor: kBtnGreen, disabledColor: nil, title: "注册", titleColor: kBtnWhite, titleHighlightedColor: kBtnDisabledWhite)
        registerBtn.addTarget(self, action: #selector(register), for: .touchUpInside)
        view.addSubview(registerBtn)
        registerBtn.snp.makeConstraints { (make) in
            make.right.equalTo(view).offset(-margin)
            make.width.height.bottom.equalTo(loginBtn)
        }
    }
    
}

extension XNUserController {
    
    @objc func login() {
        LXFLog("登录")
        let loginVC = XNLoginController()
        present(loginVC, animated: true, completion: nil)
    }
    
    @objc func register() {
        LXFLog("注册")
        LXFProgressHUD.lxf_showWarning(withStatus: "暂时没做");
    }
    
}
