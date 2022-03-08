//
//  UserData.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import Foundation

struct UserData : Codable, Identifiable {
    var uuid: UUID = UUID()
    var id : Int
    var name: String
    var email: String
    var avatar: String
    private enum CodingKeys: String, CodingKey{
        case id
        case name
        case email
        case avatar
    }
}

//"user": {
//        "id": 3,
//        "name": "tester01",
//        "email": "tester01@email.com",
//        "avatar": "https://www.gravatar.com/avatar/b87c0cd09c8c06be1d50f18d2104c814.jpg?s=200&d=robohash"
//    }
