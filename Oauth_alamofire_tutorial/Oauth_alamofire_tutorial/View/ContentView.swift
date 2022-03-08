//
//  ContentView.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Image(systemName: "lock.shield.fill")
                    .font(.system(size: 160))
                Spacer()
                NavigationLink(destination: LoginView()) {
                    HStack {
                        Spacer()
                        Text("로그인 하기")
                        Spacer()
                    }
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                }.padding(.bottom)
                
                NavigationLink(destination: RegisterView()) {
                    HStack {
                        Spacer()
                        Text("회원가입 하기")
                        Spacer()
                    }
                    .padding()
                    .background(.black)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                Spacer().frame(height: 40)
                NavigationLink(destination: ProfileView()) {
                    HStack {
                        Spacer()
                        Text("내 프로필 보기")
                        Spacer()
                    }
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                }.padding(.bottom)
                
                NavigationLink(destination: UserListView()) {
                    HStack {
                        Spacer()
                        Text("사용자 목록 보기")
                        Spacer()
                    }
                    .padding()
                    .background(.green)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
