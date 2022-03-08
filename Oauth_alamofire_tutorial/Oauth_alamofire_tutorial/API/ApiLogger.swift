//
//  ApiLogger.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import Foundation
import Alamofire

final class ApiLogger: EventMonitor {
    let queue = DispatchQueue(label: "Oath_alamofire_tutorial_ApiLogger")
    
    // Event called when any type of Request is resumed.
    func requestDidResume(_ request: Request) {
        print("Resuming: \(request)")
    }
    
    // Event called whenever a DataRequest has parsed a response.
    func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) {
        debugPrint("Finished: \(response)")
    }
}
