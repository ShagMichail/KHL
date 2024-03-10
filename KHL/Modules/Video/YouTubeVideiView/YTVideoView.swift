//
//  YTVideoView.swift
//  KHL
//
//  Created by Михаил Шаговитов on 03.11.2023.
//

import SwiftUI
import youtube_ios_player_helper
import WebKit

struct YTVideoView: View {
    let ID: String
    
    var body: some View {
        getVideos()
    }
    
    private func getVideos() -> some View {
        VStack(alignment: .center) {
            
            Video(videoId: ID)
                .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.width/16*10.5)
                .cornerRadius(12)
                .padding(.horizontal, 24)
        }
    }
    
}

struct Video: UIViewRepresentable {
    
    let videoId: String
    
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let YouTubeURL = URL(string: "https://www.youtube.com/\(videoId)") else { return }
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: YouTubeURL))
    }
}

struct YTVideoView_Previews: PreviewProvider {
    static var previews: some View {
        YTVideoView(ID: "watch?v=vTG1TLQTTc0")
    }
}

