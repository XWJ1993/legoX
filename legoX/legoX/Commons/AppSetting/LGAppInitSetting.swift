//
//  LGAppInitSetting.swift
//  legoX
//
//  Created by 谢吴军 on 2020/4/30.
//  Copyright © 2020 dreamit. All rights reserved.
//

import UIKit

@objc class LGAppInitSetting: NSObject {
    // 是否需要显示引导页
    // 1.新安装 - YES
    @objc static func shouldShowGuidePage() -> Bool {
        return true
    }
    
    // 是否需要显示广告页面
    // 1.没有显示引导页 && 当前已经下载广告图 - YES
    @objc static func shouldShowAdPage() -> Bool {
        return true;
    }
}
