//
//  UserManager.swift
//  eComplaint
//
//  Created by Student on 25/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import Foundation


class UserManager {
    static let shared = UserManager()
    var users: [User] = []
    private init() {}
}

