//
//  DataStore.swift
//  test_project
//
//  Created by PhamDucDuong on 1/26/18.
//  Copyright © 2018 PhamDucDuong. All rights reserved.
//

import Foundation
import UIKit

final class DataStore {
    static let shared = DataStore()
    
    let user: [UserModel] = { (1...6).map {
        let image = UIImage(named: "\($0)")
        let name = "UserName \($0)"
        let job  = "UserJob  \($0)"
        return UserModel(userImage: image!, userName: name, userJob: job)
        }
    }()
}
