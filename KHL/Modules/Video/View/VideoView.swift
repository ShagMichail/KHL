//
//  VideoView.swift
//  KHL
//
//  Created by Михаил Шаговитов on 10.08.2022.
//

import SwiftUI
import youtube_ios_player_helper
import WebKit

struct VideoView: View {
    
    @StateObject private var viewModel: ViewModel
    
    private var playerView: YTPlayerView!
    let ID: String
    
    init() {
        _viewModel = StateObject(wrappedValue: ViewModel())
        ID = ""
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            getHeader()

            getVideos()
            
        }.navigationBarHidden(true)
    }
    
    private func getVideos() -> some View {
        VStack(alignment: .center) {
            ForEach(viewModel.allVideoID) { new in
                getName(name: new.name)
                getLine()
                YTVideoView(ID: new.ID)
                Spacer().frame(height: 15)
                getLine()
            }
        }
    }
    
    private func getName(name: String) -> some View {
        VStack{
            Text(name)
                .fontWeight(.bold)
                .font(.system(size: 18))
                .foregroundColor(Color("activeText"))
        }
    }
    
    private func getHeader() -> some View {
        VStack{
            getNavBar()
        }
    }
    
    private func getNavBar() -> some View {
        VStack{
            Text("МАТЧИ")
                .font(.system(size: 32))
                .foregroundColor(Color("title"))
            Spacer().frame(height: 2)
            getLine()
        }
    }
    
    private func getLine() -> some View {
        VStack{
            Rectangle().foregroundColor(Color("noActiveText"))
                .frame(width: UIScreen.main.bounds.width, height: 1)
        }
    }

    
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}

