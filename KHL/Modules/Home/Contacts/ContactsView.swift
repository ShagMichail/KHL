//
//  ContactsView.swift
//  KHL
//
//  Created by Михаил Шаговитов on 11.08.2022.
//

import SwiftUI

struct ContactsView: View {
    
    
    //MARK: - Properties
    
    @StateObject private var viewModel: ViewModel
    
    
    init() {
        _viewModel = StateObject(wrappedValue: ViewModel())
    }
    
    
    //MARK: - Body
    
    var body: some View {
        VStack{
            CustomNavBarView(name: "Контакты")
            ScrollView(showsIndicators: false)
            {
                VStack(alignment: .leading){
                    getContacts0()
                    getContacts1()
                    getContacts2()
                    getContacts3()
                    getContacts4()
                    getContacts5()
                    getContacts6()
                }.padding()
            }
            Spacer()
        }
    }
    
    
    //MARK: - Views
    
    private func getContacts6() -> some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 5)
            Text(viewModel.contact60)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                
            Spacer().frame(height: 5)
            VStack(alignment: .leading){
                Text(viewModel.contact61)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact62)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact63)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
        }
    }
    
    private func getContacts5() -> some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 5)
            Text(viewModel.contact50)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            Spacer().frame(height: 5)
            VStack(alignment: .leading){
                
                Text(viewModel.contact51)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact52)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact53)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
        }
    }
    
    private func getContacts4() -> some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 5)
            Text(viewModel.contact40)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            Spacer().frame(height: 5)
            VStack(alignment: .leading){
                Text(viewModel.contact41)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact42)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact43)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
        }
    }
    
    private func getContacts3() -> some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 5)
            Text(viewModel.contact30)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            Spacer().frame(height: 5)
            VStack(alignment: .leading){
                Text(viewModel.contact31)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact32)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact33)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
        }
    }
    
    private func getContacts2() -> some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 5)
            Text(viewModel.contact20)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            Spacer().frame(height: 5)
            VStack(alignment: .leading){
                Text(viewModel.contact21)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact22)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact23)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
            VStack(alignment: .leading){
                Spacer().frame(height: 5)
                Text(viewModel.contact24)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact25)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact26)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
        }
    }
    
    private func getContacts1() -> some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 5)
            Text(viewModel.contact10)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            Spacer().frame(height: 5)
            VStack(alignment: .leading){
                Spacer().frame(height: 5)
                Text(viewModel.contact11)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact12)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact13)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
            VStack(alignment: .leading){
                Spacer().frame(height: 5)
                Text(viewModel.contact14)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact15)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact16)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
            VStack(alignment: .leading){
                Spacer().frame(height: 5)
                Text(viewModel.contact17)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact18)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact19)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
            VStack(alignment: .leading){
                Spacer().frame(height: 5)
                Text(viewModel.contact110)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.contact111)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Text(viewModel.contact112)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
        }
    }
    
    private func getContacts0() -> some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 5)
            Text(viewModel.obsh0)
                .font(.system(size: 18))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            
            Text(viewModel.obsh1)
                .font(.system(size: 18))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            
            Text(viewModel.obsh2)
                .font(.system(size: 18))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            Spacer().frame(height: 5)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
