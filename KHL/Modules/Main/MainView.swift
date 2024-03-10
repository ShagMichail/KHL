//
//  MainView.swift
//  KHL
//
//  Created by Михаил Шаговитов on 10.08.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        MainTabView()
            .navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
