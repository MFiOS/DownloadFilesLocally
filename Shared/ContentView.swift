//
//  ContentView.swift
//  Shared
//
//  Created by chang on 2023-12-27.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var downloadManager: DownloadManager
    @State private var showVideo = false
    
    var body: some View {
        VStack(spacing: 40) {
            DownloadButton()
            
            if downloadManager.isDownloaded {
                WatchButton()
                    .onTapGesture {
                        showVideo = true
                    }
                    .fullScreenCover(isPresented: $showVideo, content: {
                        VideoView()
                    })
            }
        }
        .padding(.horizontal, 20)
        .onAppear {
            downloadManager.checkFileExists()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DownloadManager())
    }
}
