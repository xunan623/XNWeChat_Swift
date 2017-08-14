//
//  XNLoginController.swift
//  XNWeChatSwift
//
//  Created by xunan on 2017/8/7.
//  Copyright © 2017年 xunan. All rights reserved.
//

import UIKit

class XNLoginController: XNBaseController {
    
    // 顶部的View
    lazy var topView: XNLoginTopView = {
        guard let topView = XNLoginTopView.newInstance() else {
            return XNLoginTopView()
        }
        topView.cancelBlock = { [unowned self] in
            self.dismiss(animated: true, completion: nil)
        }
        return topView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // 初始化
        self.setup()
    }
    
}

extension XNLoginController {
    func setup() {
        
        view.backgroundColor = UIColor.white
        
        topView.frame = CGRect(x: 0, y: 0, width: kScreenW, height: 300)
        view.addSubview(topView)
        
        let margin: CGFloat = 20.0
        // 登录
        let loginBtn = XNBarButton(bgColor: kBtnGreen, disabledColor: kBtnDisabledGreen, title: "登录", titleColor: kBtnWhite, titleHighlightedColor: kBtnDisabledWhite)
        loginBtn.isEnabled = false
        view.addSubview(loginBtn)
        loginBtn.snp.makeConstraints { (make) in
            make.top.equalTo(topView.snp.bottom).offset(margin * 0.5)
            make.left.equalTo(self.view).offset(margin)
            make.right.equalTo(self.view).offset(-margin)
            make.height.equalTo(48)
        }
        loginBtn.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        // 设置登录按钮状态的回调
        topView.loginBtnBlock = {
            loginBtn.isEnabled = $0
        }
        
        // 短信验证登录
        let smsLoginBtn =  XNLinkButton(title: "通过短信验证码登录", fontSize: 13)
        view.addSubview(smsLoginBtn)
        smsLoginBtn.snp.makeConstraints { (make) in
            make.top.equalTo(loginBtn.snp.bottom).offset(margin * 0.7)
            make.centerX.equalTo(self.view)
        }
        smsLoginBtn.addTarget(self, action: #selector(smsLogin), for: .touchUpInside)
        
        // 中间分割线
        let splitLine = UIView()
        splitLine.backgroundColor = kSplitLineColor
        view.addSubview(splitLine)
        splitLine.snp.makeConstraints { (make) in
            make.height.equalTo(20)
            make.width.equalTo(1)
            make.bottom.equalTo(self.view.snp.bottom).offset(-margin*1.5)
            make.centerX.equalTo(self.view.snp.centerX)
        }
        
        // 登录遇到问题
    
    }
}

extension XNLoginController {
    @objc func login() {
        
    }
    
    @objc func smsLogin() {
        
    }
}
