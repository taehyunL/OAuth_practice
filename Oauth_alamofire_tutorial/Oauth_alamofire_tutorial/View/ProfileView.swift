//
//  ProfileView.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import SwiftUI

struct ProfileView: View {
    
//    @State var userData: UserData? = nil
    
    @State var id = ""
    @State var name = ""
    @State var email = ""
    @State var avatarImg = ""

    var body: some View {
        VStack {
            Form {
                Section {
                    HStack {
                        Spacer()
                        if !avatarImg.isEmpty {
                            AsyncImage(url: URL(string: avatarImg)!) { phase in
                                switch phase {
                                case .empty:
                                    ProgressView()
                                        .frame(width: 250, height: 250, alignment: .center)
                                case .success(let image):
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding()
                                        .frame(width: 250, height: 250, alignment: .center)
                                case .failure:
                                    Image(systemName: "person.fill.questionmark")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding()
                                        .frame(width: 250, height: 250, alignment: .center)
                                @unknown default:
                                    Image(systemName: "person.fill.questionmark")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding()
                                        .frame(width: 250, height: 250, alignment: .center)
                                }
                            }
                        } else {
                            Image(systemName: "person.fill.questionmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                .frame(width: 250, height: 250, alignment: .center)
                        }
                    }
                }
                Section {
                    Text("아이다: \(id)")
                    Text("이름: \(name)")
                    Text("이메일: \(email)")
                }
                Section {
                    Button {
                        print("새로고침 버튼 클릭")
                    } label: {
                        Text("새로고침")
                    }
                }
            }
        }.navigationTitle("내 프로필")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
