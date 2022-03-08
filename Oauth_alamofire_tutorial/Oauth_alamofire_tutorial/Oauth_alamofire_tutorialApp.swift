//
//  Oauth_alamofire_tutorialApp.swift
//  Oauth_alamofire_tutorial
//
//  Created by 이태현 on 2022/03/08.
//

import SwiftUI

@main
struct Oauth_alamofire_tutorialApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserVM())
        }
    }
}
