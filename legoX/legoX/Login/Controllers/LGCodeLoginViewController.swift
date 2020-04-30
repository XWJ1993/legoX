//
//  LGCodeLoginViewController.swift
//  legoX
//
//  Created by 谢吴军 on 2020/4/18.
//  Copyright © 2020 dreamit. All rights reserved.
//

import UIKit
// 验证码登录
class LGCodeLoginViewController: LGBaseViewController {
    
    fileprivate lazy var titleLabel: UILabel = {
        let label = UILabel.makeLabel(text: "验证码登录", color: UIColor.blue, numberLine: 1, textAlignment: .left, font: UIFont.systemFont(ofSize: 15))
        return label
    }()
    
    fileprivate lazy var subTitleLabel: UILabel = {
        let label = UILabel.makeLabel(text: "新人免费领188元新人大礼包", color: UIColor.blue, numberLine: 1, textAlignment: .left, font: UIFont.systemFont(ofSize: 15))
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}

extension LGCodeLoginViewController {
    func setupUI() {
        
    }
}
