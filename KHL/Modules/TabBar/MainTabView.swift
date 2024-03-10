//
//  TabBar.swift
//  KHL
//
//  Created by Михаил Шаговитов on 10.08.2022.
//

import SwiftUI

struct MainTabView: View {
    
    
    //MARK: - Properties
    
    @State var selectionTabView = 0
    
    init() {
        //UITabBar.appearance().backgroundColor = UIColor(named: "activeText")
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "noActiveText")
        //UITabBar.appearance().accent = UIColor(named: "activeText")
        
    }
    
    
    //MARK: - Body
    
    var body: some View {
        TabView(selection: $selectionTabView) {
            HomeView()
                .navigationBarHidden(true)
                .tabItem {
                    if selectionTabView == 0 {
                        Image("home").foregroundColor(Color("activeText"))
                    } else {
                        Image("home").foregroundColor(Color("noActiveText"))
                    }
                    Text("Главная")
                }
                .tag(0)
            
            CupView()
                .navigationBarHidden(true)
                .tabItem {
                    if selectionTabView == 1 {
                        Image("cup").foregroundColor(Color("activeText"))
                    } else {
                        Image("cup").foregroundColor(Color("noActiveText"))
                    }
                    Text("Турниры")
                }
                .tag(1)
            
            PhotoView()
                .navigationBarHidden(true)
                .tabItem {
                    if selectionTabView == 2 {
                        Image("photo")
                            .foregroundColor(Color("activeText"))
                    } else {
                        Image("photo")
                            .foregroundColor(Color("noActiveText"))
                    }
                    Text("Фото")
                }
                .tag(2)
            
            VideoView()
                .navigationBarHidden(true)
                .tabItem {
                    if selectionTabView == 3 {
                        Image("video")
                            .foregroundColor(Color("activeText"))
                    } else {
                        Image("video")
                            .foregroundColor(Color("noActiveText"))
                    }
                    Text("Видео")
                }
                .tag(3)
            
            AccountView()
                .navigationBarHidden(true)
                .tabItem {
                    if selectionTabView == 4 {
                        Image("statistic").foregroundColor(Color("activeText"))
                    } else {
                        Image("statistic").foregroundColor(Color("noActiveText"))
                    }
                    Text("Статистика")
                }
                .tag(4)
        }
        .accentColor(Color("activeText"))
        
        .ignoresSafeArea()
    }
    
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

