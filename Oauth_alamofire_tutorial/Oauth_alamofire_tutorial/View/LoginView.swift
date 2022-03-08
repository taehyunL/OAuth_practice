//
//  LoginView.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import SwiftUI

struct LoginView: View {
    
    @State var emailInput = ""
    @State var passwordInput = ""
    
    var body: some View {
        VStack {
            Form {
                Section(content: {
                    TextField("이메일", text: $emailInput).keyboardType(.emailAddress).autocapitalization(.none)
                    SecureField("비밀번호", text: $passwordInput).keyboardType(.default)
                }, header: {
                    Text("로그인 정보")
                })
                Section {
                    Button {
                        print("로그인 버튼")
                    } label: {
                        Text("로그인 하기")
                    }
                }
            }
        }
        .navigationTitle("로그인")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
