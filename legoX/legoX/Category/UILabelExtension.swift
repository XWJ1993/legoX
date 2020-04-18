//
//  UILabelExtension.swift
//  legoX
//
//  Created by 谢吴军 on 2020/4/18.
//  Copyright © 2020 dreamit. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    /**
     @brief 创建UILabel
     @parma text/文字
     @parma color/文字颜色
     @parma numberLine/文字行数
     @parma textAlignment/对齐方式
     */
    static func makeLabel(text: String, color: UIColor, numberLine: Int, textAlignment: NSTextAlignment, font: UIFont? = nil) -> UILabel {
        let label = UILabel()
        if let font = font {
            label.font = font
        }
        label.text = text
        label.textColor = color
        label.numberOfLines = numberLine
        label.textAlignment = textAlignment
        label.sizeToFit()
        return label
    }
}

extension UIButton {
    
}
