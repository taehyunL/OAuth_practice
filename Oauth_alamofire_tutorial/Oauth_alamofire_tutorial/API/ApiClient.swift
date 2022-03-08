//
//  ApiClient.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import Foundation
import Alamofire

final class ApiClient {
    static let shared = ApiClient()
    
    static let BASE_URL = "https://dev-jeongdaeri-oauth.tk/api"
    
    let interceptors = Interceptor(interceptors: [
        BaseInterceptor()
    ])
    
    let monitors = [ApiLogger()] as [EventMonitor]
    
    var session: Session
    
    init() {
        print("ApiClient - init() called")
        session = Session(interceptor: interceptors, eventMonitors: monitors)
    }
    
    
}
