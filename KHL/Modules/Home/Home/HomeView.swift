//
//  HomeView.swift
//  KHL
//
//  Created by Михаил Шаговитов on 10.08.2022.
//

import SwiftUI

struct HomeView: View {
    
    
    //MARK: - Properties
    
    @State var selection = 1
    @State var currentIndex = 0
    
    private var numberOfImagesSponsor = 4
    private var numberOfImages = 5
    private let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    
    
    @StateObject private var viewModel: ViewModel
    
    
    init() {
        _viewModel = StateObject(wrappedValue: ViewModel())
    }
    
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                getHeader()
                if selection == 0 {
                    getForecasts()
                }
                if selection == 1 {
                    getNews()
                }
                if selection == 2 {
                    getArticles()
                }
                Spacer().frame(height: 10)
                getSponsor()
                getBestPhoto()
                getButtonsOther()
                
            }.navigationBarHidden(true)
        }//.navigationBarHidden(true)
    }
    
    
    //MARK: - Views
    
    private func getButtonsOther() -> some View {
        HStack(alignment: .center) {
            Spacer()
            NavigationLink(destination: LeagueView().navigationBarHidden(true)) {
                
                    Text("Наша лига")
                        .foregroundColor(Color("activeText"))
                        .frame(width: UIScreen.main.bounds.width / 3, height: 45.0)
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                        .background(Color("backgroundButton")
                        .cornerRadius(6))
                
            }
            
            Spacer()
            NavigationLink(destination: ContactsView().navigationBarHidden(true)) {
                
                Text("Контакты")
                    .foregroundColor(Color("activeText"))
                    .frame(width: UIScreen.main.bounds.width / 3, height: 45.0)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .background(Color("backgroundButton")
                    .cornerRadius(6))
            }
            
            Spacer()
            
        }.padding(.bottom, 20)
    }
    
    private func getBestPhoto() -> some View {
        VStack(alignment: .center) {
            Text("Лучшие фото последней недели")
                .fontWeight(.bold)
                .font(.system(size: 25))
                .foregroundColor(Color("activeText"))
                .multilineTextAlignment(.center)
                .lineLimit(nil)
            Spacer().frame(height: 0)
            GeometryReader { proxy in
                TabView() {
                    ForEach(0..<numberOfImages) { num in
                        Image(viewModel.allBestPhoto[num].image)
                            .resizable()
                            .frame(width: 350, height: 160)
                            .scaledToFill()
                            .tag(num)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding()
                .frame(width: UIScreen.main.bounds.width, height: 200)
            }
            Rectangle()
                .frame(height: 200)
                .foregroundColor(Color.white).opacity(0.0)
        }
    }
    
    private func getHeader() -> some View {
        VStack{
            getNavBar()
            getPhotoChemp()
            getMenu()
        }
    }
    
    private func getMenu() -> some View {
        VStack {
            getLine()
            getButton()
            getLine()
        }
    }
    
    private func getSponsor() -> some View {
        VStack{
            getLine()
            GeometryReader { proxy in
                TabView(selection: $currentIndex) {
                    ForEach(0..<numberOfImagesSponsor) { num in
                        Image(viewModel.allSponsor[num].image)
                            .resizable()
                            .tag(num)
                    }
                }
                .onReceive(timer, perform: { _ in
                    withAnimation {
                    currentIndex = currentIndex < numberOfImagesSponsor ? currentIndex + 1 : 0
                    }
                })
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .frame(width: proxy.size.width, height: proxy.size.height * 10)
            }
            Rectangle()
                .frame(height: 80)
                .foregroundColor(Color.white).opacity(0.0)
            getLine()
        }
    }
    
    private func getButton() -> some View {
        HStack(alignment: .center){
            Spacer()
            Button {
                self.selection = 0
            } label: {
                if selection == 0 {
                    getActiveButtonLabel(name: "Прогнозы", width: 95)
                } else {
                    getNoActiveButtonLabel(name: "Прогнозы")
                }
            }
            Spacer()
            Button {
                self.selection = 1
            } label: {
                if selection == 1 {
                    getActiveButtonLabel(name: "Новости", width: 80)
                } else {
                    getNoActiveButtonLabel(name: "Новости")
                }
            }
            Spacer()
            Button {
                self.selection = 2
            } label: {
                if selection == 2 {
                    getActiveButtonLabel(name: "Статьи", width: 70)
                } else {
                    getNoActiveButtonLabel(name: "Статьи")
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
    
    private func getForecasts() -> some View {
        VStack{
            ForEach(viewModel.allForecasts) { forecast in
                getForecastRow(title: forecast.title)
                Spacer().frame(height: 15)
            }
        }
    }
    
    private func getForecastRow(title: String) -> some View {
        Button {
            
        } label: {
            VStack(alignment: .leading){
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
                    .lineLimit(nil)
                    
            }
        }
    }
    
    private func getNews() -> some View {
        VStack{
            ForEach(viewModel.allNews) { new in
                getNewRow(new: new.title)
                Spacer().frame(height: 15)
            }
        }
    }
    
    private func getNewRow(new: String) -> some View {
        Button {
            
        } label: {
            HStack {
                Text(new)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                    .foregroundColor(Color("activeText"))
            }
        }
    }
    
    private func getArticles() -> some View {
        VStack{
            ForEach(viewModel.allArticles) { articles in
                getArticleRow(title: articles.title, subTitle: articles.dataTitle )
                Spacer().frame(height: 15)
            }
        }
    }
    
    private func getArticleRow(title: String, subTitle: String) -> some View {
        Button {
            
        } label: {
            VStack(alignment: .leading){
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .foregroundColor(Color("activeText"))
                Text(subTitle)
                    .font(.system(size: 15))
                    .foregroundColor(Color("activeText"))
            }
        }
    }
    
    private func getPhotoChemp() -> some View {
        VStack{
            Image(viewModel.getChempPhoto.image)
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width - 140)
            
        }
    }
    
    private func getNavBar() -> some View {
        VStack{
            Text("КХЛ-НОВОТРАНС")
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
