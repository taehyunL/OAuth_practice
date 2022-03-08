//
//  UserVM.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import Foundation
import Alamofire
import Combine

class UserVM: ObservableObject {
    var subscription = Set<AnyCancellable>()
    
    @Published var loggedInUser: UserData? = nil
    
    //회원가입하기
    func register(name: String, email: String, password: String) {
        print("UserVM: register() called")
        AuthApiService.register(name: name, email: email, password: password)
            .sink { completion in
                print("UserVM completion: \(completion)")
            } receiveValue: { receivedUser in
                self.loggedInUser = receivedUser
            }.store(in: &subscription)
    }
}
