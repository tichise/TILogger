//
//  HostingController.swift
//  SampleWatchKitApp Extension
//
//  Created by tichise on 2020年6月22日 20/06/22.
//  Copyright © 2020 ichise. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI
import TILogger

class HostingController: WKHostingController<ContentView> {
    override var body: ContentView {
        
        TILogger().info("watchos test")
        
        return ContentView()
    }
}
