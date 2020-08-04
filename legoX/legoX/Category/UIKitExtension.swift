//
//  UIKitExtension.swift
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
    static func makeLabel(text: String,
                          color: UIColor,
                          numberLine: Int,
                          textAlignment: NSTextAlignment,
                          font: UIFont? = nil) -> UILabel {
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
    /**
    @brief 创建UIButton
    @parma font/文字大小
    @parma text/文字
    @parma textColor/文字颜色
    @parma bgColor/背景颜色
    @parma imageName/背景图片
     */
    static func makeButton(font: UIFont,
                           text: String,
                           textColor: UIColor,
                           bgColor: UIColor? = nil,
                           imageName: String? = nil) -> UIButton {
        let btn = UIButton(type: .custom)
        btn.titleLabel?.font = font
        btn.setTitle(text, for: .normal)
        btn.setTitleColor(textColor, for: .normal)
        if let bgColor = bgColor {
            btn.setBackgroundColor(backgroundColor: bgColor, state: .normal)
        }
        if let imageName = imageName {
            btn.setBackgroundImage(UIImage(named: imageName), for: .normal)
        }
        btn.sizeToFit()
        return btn
    }
    
    func setBackgroundColor(backgroundColor: UIColor, state: State) {
        self.setBackgroundImage(self.imageWithColor(color: backgroundColor, size: CGSize(width: 1, height: 1)), for: state)
    }
    
    func imageWithColor(color: UIColor?, size: CGSize) -> UIImage? {
        guard let color = color else {
            return nil
        }
        guard size.width > 0 else {
            return nil
        }
        guard size.height > 0 else {
            return nil
        }
        let rect = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image;
    }
}

extension UIView {
    func makeCornerRadius(cornerRadius: CGFloat) {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = cornerRadius
    }
}
