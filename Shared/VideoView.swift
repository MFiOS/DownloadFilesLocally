//
//  VideoView.swift
//  DownloadFilesLocally
//
//  Created by chang on 2023-12-27.
//

import SwiftUI
import AVKit

struct VideoView: View {
    @EnvironmentObject var downloadManager: DownloadManager
    @State var player = AVPlayer()
    
    var body: some View {
        VideoPlayer(player: player)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                let playerItem = downloadManager.getVideoFileAsset()
                if let playerItem = playerItem {
                    player = AVPlayer(playerItem: playerItem)
                    player.play()
                } 
            }
    }
}

struct VideoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
            .environmentObject(DownloadManager())
    }
}
