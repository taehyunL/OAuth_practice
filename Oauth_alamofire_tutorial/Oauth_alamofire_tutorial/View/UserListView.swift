//
//  UserListView.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import SwiftUI

struct UserListView: View {
    

    @State var users: [UserData] = [UserData(id: 3, name: "testName", email: "testEmail", avatar: "https://www.gravatar.com/avatar/b87c0cd09c8c06be1d50f18d2104c814.jpg?s=200&d=robohash")]
    
    var body: some View {
        List(users) { user in
            NavigationLink(destination: OtherUserProfileView(userData: user), label: {
                HStack {
                    AsyncImage(url: URL(string: user.avatar)!) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                .frame(width: 120, height: 120, alignment: .center)
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                .frame(width: 120, height: 120, alignment: .center)
                        case .failure:
                            Image(systemName: "person.fill.questionmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                .frame(width: 120, height: 120, alignment: .center)
                        @unknown default:
                            Image(systemName: "person.fill.questionmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                .frame(width: 120, height: 120, alignment: .center)
                        }
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(user.name).font(.title3)
                        Text(user.email).font(.title3)
                    }
                    Spacer()
                }
            })
            
        }
        .navigationTitle("사용자 목록")
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
