//
//  RegisterView.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var userVM: UserVM
    
    @State var nameInput = ""
    @State var emailInput = ""
    @State var passwordInput = ""
    
    var body: some View {
        VStack {
            Form {
                Section(content: {
                    TextField("이름을 입력해주세요", text: $nameInput).keyboardType(.default)
                }, header: {
                    Text("이름")
                })
                Section(content: {
                    TextField("이메일", text: $emailInput).keyboardType(.emailAddress).autocapitalization(.none)
                }, header: {
                    Text("이메일")
                })
                Section(content: {
                    SecureField("비밀번호", text: $passwordInput).keyboardType(.default)
                    SecureField("비밀번호 확인", text: $passwordInput).keyboardType(.default)
                }, header: {
                    Text("비밀번호")
                })
                Section {
                    Button {
                        print("회원가입 버튼 클릭")
                        userVM.register(name: nameInput, email: emailInput, password: passwordInput)
                    } label: {
                        Text("회원가입하기")
                    }
                }
            }
        }
        .navigationTitle("회원가입")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
