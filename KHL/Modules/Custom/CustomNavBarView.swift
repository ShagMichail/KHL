//
//  CustomNavBar.swift
//  KHL
//
//  Created by Михаил Шаговитов on 11.08.2022.
//

import SwiftUI

struct CustomNavBarView: View {
    
    
    //MARK: - Properties
    
    private var name = ""
    var btnBack : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color("activeText"))
            }
        }
    }
    
    var title : some View {
        HStack {

            VStack(alignment: .leading) {
                Text(name)
                    .foregroundColor(Color("activeText"))
                    .font(.system(size: 16))

                
            }
        }
    }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    init(name: String) {
        self.name = name
    }
    
    
    //MARK: - Body
    
    var body: some View {
        ZStack {
            Color("backgroundButton").ignoresSafeArea()
            HStack {
                btnBack
                title
                Spacer()
            }.padding(.leading, 15)
                //.padding(.trailing, 15)
        }
        .frame(width: UIScreen.main.bounds.width, height: 60.0)
        
    }
}

struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarView(name: "Rjynfrns")
    }
}
