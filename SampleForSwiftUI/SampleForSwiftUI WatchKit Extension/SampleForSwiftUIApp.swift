//
//  SampleForSwiftUIApp.swift
//  SampleForSwiftUI WatchKit Extension
//
//  Created by tichise on 2021年7月25日 21/07/25.
//

import SwiftUI

@main
struct SampleForSwiftUIApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
