//
//  PlanView.swift
//  StarLoans_Swift
//
//  Created by iOS Pan on 2017/12/7.
//  Copyright © 2017年 iOS Pan. All rights reserved.
//

import UIKit

class PlanView: UIView {

    //MARK: - 懒加载
    lazy var topMoreBtn: UIButton = { [unowned self] in
        let topMoreBtn = UIButton()
        addSubview(topMoreBtn)
        topMoreBtn.setTitle("合伙人计划>", for: .normal)
        topMoreBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        topMoreBtn.setTitleColor(UIColor.RGB(with: 51, green: 51, blue: 51), for: .normal)
        topMoreBtn.setImage(#imageLiteral(resourceName: "ICON-jihua"), for: .normal)
        topMoreBtn.addTarget(self, action: #selector(topMoreBtnClick(_:)), for: .touchUpInside)
        return topMoreBtn
        }()
    
    lazy var centerLine: UIView = { [unowned self] in
        let centerLine = UIView()
        addSubview(centerLine)
        centerLine.backgroundColor = kHomeBackColor
        return centerLine
    }()
    
    lazy var leftImage: UIImageView = { [unowned self] in
        let leftImage = UIImageView()
        addSubview(leftImage)
        leftImage.backgroundColor = kHomeBackColor
        return leftImage
    }()
    
    lazy var topRightImage: UIImageView = { [unowned self] in
        let topRightImage = UIImageView()
        addSubview(topRightImage)
        topRightImage.backgroundColor = kHomeBackColor
        return topRightImage
        }()
    
    lazy var bottomRightImage: UIImageView = { [unowned self] in
        let bottomRightImage = UIImageView()
        addSubview(bottomRightImage)
        bottomRightImage.backgroundColor = kHomeBackColor
        return bottomRightImage
        }()
    
    //MARK: - 生命周期
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super .layoutSubviews()
        topMoreBtn.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSize(width: kScreenWidth, height: 40))
        }
        
        centerLine.snp.makeConstraints { (make) in
            make.top.equalTo(topMoreBtn.snp.bottom)
            make.left.right.equalToSuperview()
            make.size.equalTo(CGSize(width: kScreenWidth, height: 1))
        }
        
        leftImage.snp.makeConstraints { (make) in
            make.top.equalTo(centerLine.snp.bottom).offset(7.5)
            make.left.equalTo(16)
            make.size.equalTo(CGSize(width: 165, height: 150))
        }
        
        topRightImage.snp.makeConstraints { (make) in
            make.top.equalTo(centerLine.snp.bottom).offset(7.5)
            make.right.equalTo(-16)
            make.size.equalTo(CGSize(width: 165, height: 70))
        }
        
        bottomRightImage.snp.makeConstraints { (make) in
            make.bottom.equalTo(-7.5)
            make.right.equalTo(-16)
            make.size.equalTo(CGSize(width: 165, height: 70))
        }
        
    }
    
    @objc func topMoreBtnClick(_ sender: UIButton) {
        print("更多合伙人计划")
    }
}
