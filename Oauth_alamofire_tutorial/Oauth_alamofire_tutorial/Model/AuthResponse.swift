//
//  AuthResponse.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import Foundation

struct AuthResponse : Codable {
    var user: UserData
    var token: TokenData
    enum CodingKeys: String, CodingKey {
        case token
        case user
    }
}
