//
//  LeagueView.swift
//  KHL
//
//  Created by Михаил Шаговитов on 11.08.2022.
//

import SwiftUI

struct LeagueView: View {
    
    
    //MARK: - Properties
    @State var selection = 0
    
    @StateObject private var viewModel: ViewModel
    
    
    init() {
        _viewModel = StateObject(wrappedValue: ViewModel())
    }
    
    
    //MARK: - Body
    
    var body: some View {
        VStack {
            CustomNavBarView(name: "Наша лига")
            VStack{
                getMenu()
                ScrollView(showsIndicators: false) {
                    if selection == 0 {
                        getManifest()
                    }
                    if selection == 1 {
                        getHistory()
                    }
                    if selection == 2 {
                        getChlen()
                    }
                }
                Spacer()
            }
        }
    }
    
    
    //MARK: - Views
    
    private func getChlen() -> some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text(viewModel.chlen0)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen1)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen2)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen3)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen4)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
            }
            VStack(alignment: .leading) {
                Spacer().frame(height: 5)
                Text(viewModel.chlen5)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen6)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen7)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen8)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen9)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                
            }
            VStack(alignment: .leading) {
                Spacer().frame(height: 5)
                Text(viewModel.chlen10)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen11)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen12)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen13)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.chlen14)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
            }
        }.padding()
    }
    
    private func getHistory() -> some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text(viewModel.history00)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history01)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history02)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history1)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history2)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
            }
            VStack(alignment: .leading) {
                Spacer().frame(height: 5)
                Text(viewModel.history3)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history4)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history5)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history6)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history7)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                
            }
            VStack(alignment: .leading) {
                Spacer().frame(height: 5)
                Text(viewModel.history8)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history9)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history10)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history11)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history12)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
            }
            VStack(alignment: .leading) {
                Spacer().frame(height: 5)
                Text(viewModel.history13)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history14)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.history16)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                
            }
        }.padding()
    }
    
    private func getManifest() -> some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text(viewModel.manifest0)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest1)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest2)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest3)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest4)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
            }
            VStack(alignment: .leading) {
                Text(viewModel.manifest5)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest6)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest7)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest8)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest9)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
            }
            VStack(alignment: .leading) {
                Text(viewModel.manifest10)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest11)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest12)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest13)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest14)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
            }
            VStack(alignment: .leading) {
                Spacer().frame(height: 5)
                Text(viewModel.manifest15)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                //Spacer().frame(height: 5)
                Text(viewModel.manifest16)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                //Spacer().frame(height: 5)
                Text(viewModel.manifest17)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest18)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest19)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
                Spacer().frame(height: 5)
                Text(viewModel.manifest20)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .multilineTextAlignment(.leading)
                .lineLimit(nil)
            }
        }.padding()
    }
    
    private func getMenu() -> some View {
        VStack {
            getLine()
            getButton()
            getLine()
        }
    }
    
    private func getLine() -> some View {
        VStack{
            Rectangle().foregroundColor(Color("noActiveText"))
                .frame(width: UIScreen.main.bounds.width, height: 1)
        }
    }
    
    private func getButton() -> some View {
        HStack(alignment: .center){
            Spacer()
            Button {
                self.selection = 0
            } label: {
                if selection == 0 {
                    getActiveButtonLabel(name: "Манифест", width: 95)
                } else {
                    getNoActiveButtonLabel(name: "Манифест")
                }
            }
            Spacer()
            Button {
                self.selection = 1
            } label: {
                if selection == 1 {
                    getActiveButtonLabel(name: "История", width: 80)
                } else {
                    getNoActiveButtonLabel(name: "История")
                }
            }
            Spacer()
            Button {
                self.selection = 2
            } label: {
                if selection == 2 {
                    getActiveButtonLabel(name: "Членство", width: 90)
                } else {
                    getNoActiveButtonLabel(name: "Членство")
                }
            }
            Spacer()
        }
    }
    
    private func getActiveButtonLabel(name: String, width: CGFloat) -> some View {
        VStack(alignment: .center){
            Text(name)
                .foregroundColor(Color("activeText"))
                .font(.system(size: 20))
            Spacer().frame(height: 0)
            Rectangle().foregroundColor(Color("noActiveText"))
                .frame(width: width, height: 3)
        }
    }
    
    private func getNoActiveButtonLabel(name: String) -> some View {
        VStack{
            Text(name)
                .foregroundColor(Color("noActiveText"))
                .font(.system(size: 15))
        }
    }
    
}

struct LeagueView_Previews: PreviewProvider {
    static var previews: some View {
        LeagueView()
    }
}
