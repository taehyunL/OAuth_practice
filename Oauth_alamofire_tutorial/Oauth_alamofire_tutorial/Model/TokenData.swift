//
//  TokenData.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//
import Foundation

// MARK: - Welcome
struct TokenData: Codable {
    let tokenType: String = ""
    let expiresIn: Int = 0
    let accessToken, refreshToken: String

    enum CodingKeys: String, CodingKey {
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
    }
}
