//
//  DownloadFilesLocallyApp.swift
//  Shared
//
//  Created by chang on 2023-12-27.
//

import SwiftUI

@main
struct DownloadFilesLocallyApp: App {
    var downloadManager = DownloadManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(downloadManager)
        }
    }
}
