//
//  userModel.swift
//  test_project
//
//  Created by PhamDucDuong on 1/26/18.
//  Copyright © 2018 PhamDucDuong. All rights reserved.
//

import UIKit

struct UserModel {
    var userImage : UIImage
    var userName : String
    var userJob : String
    
    init(userImage: UIImage, userName: String, userJob: String) {
        self.userImage = userImage
        self.userJob = userJob
        self.userName = userName
    }
}
