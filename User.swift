//
//  User.swift
//  eComplaint
//
//  Created by Student on 25/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import Foundation

enum Sex: String {
    case male
    case female
    case other
}

struct User {
    var username: String
    var email: String
    var password: String
    var sex: Sex

}
