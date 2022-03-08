//
//  OtherUserProfileView.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import SwiftUI

struct OtherUserProfileView: View {
    
    var userData: UserData

    var body: some View {
        VStack {
            Form {
                Section {
                    HStack {
                        Spacer()
                        AsyncImage(url: URL(string: userData.avatar)!) { phase in
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
                        Spacer()
                    }
                }
                Section(header: Text("아이디").font(.callout)) {
                    Text("아이다: \(userData.id)")
                }
                Section(header: Text("이름").font(.callout)) {
                    Text("아이다: \(userData.name)")
                }
                Section(header: Text("이메일").font(.callout)) {
                    Text("아이다: \(userData.email)")
                }
            }
        }.navigationTitle(userData.name)
    }
}

//struct OtherUserProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        OtherUserProfileView()
//    }
//}
