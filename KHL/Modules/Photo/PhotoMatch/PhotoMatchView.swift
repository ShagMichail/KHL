//
//  PhotoMatchView.swift
//  KHL
//
//  Created by Михаил Шаговитов on 11.08.2022.
//

import SwiftUI

struct PhotoMatchView: View {
    
    
    //MARK: - Properties
    
    @StateObject private var viewModel: ViewModel
    
    
    init() {
        _viewModel = StateObject(wrappedValue: ViewModel())
    }
    
    
    //MARK: - Body
    
    var body: some View {
        VStack{
            CustomNavBarView(name: "СБЕР-МОСБАНК")
            
            Text("dfsdfsdfsdfsdf")
            Spacer()
        }
    }
    
    
    //MARK: - Views
    
    
}

struct PhotoMatchView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoMatchView()
    }
}
