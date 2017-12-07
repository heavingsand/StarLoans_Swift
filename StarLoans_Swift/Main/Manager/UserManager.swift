//
//  UserManager.swift
//  StarLoans_Swift
//
//  Created by iOS Pan on 2017/11/20.
//  Copyright © 2017年 iOS Pan. All rights reserved.
//

import UIKit

final class UserManager: NSObject {
    
    var userModel: UserModel?
    
    static let shareManager = UserManager()
    private override init() {
        print("UserManager初始化一次")
    }
}
