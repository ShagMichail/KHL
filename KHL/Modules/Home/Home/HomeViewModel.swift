//
//  HomeViewModel.swift
//  KHL
//
//  Created by Михаил Шаговитов on 11.08.2022.
//

import SwiftUI

extension HomeView {
    @MainActor
    final class ViewModel: ObservableObject {
        
        
        //MARK: - Properties
        
        @Published var allNews: [News] = [
            News(title: "Протокол заседания СДК от 20 апреля 2022 года", data: "тртртртр"),
            News(title: "Протокол заседания СДК от 19 апреля 2022 года", data: "тртртртр"),
            News(title: "Протокол заседания СДК от 18 апреля 2022 года", data: "тртртртр"),
            News(title: "Протокол заседания СДК от 17 апреля 2022 года", data: "тртртртр"),
            News(title: "Протокол заседания СДК от 16 апреля 2022 года", data: "тртртртр"),
            News(title: "Протокол заседания СДК от 15 апреля 2022 года", data: "тртртртр"),
            News(title: "Протокол заседания СДК от 14 апреля 2022 года", data: "тртртртр"),
            News(title: "Протокол заседания СДК от 13 апреля 2022 года", data: "тртртртр"),
            News(title: "Протокол заседания СДК от 12 апреля 2022 года", data: "тртртртр")
        ]
        
        @Published var allArticles: [Articles] = [
            Articles(title: "Что для вас самое важное при выборе лиги?", dataTitle: "Статья по итогам проведенного голосования в сравнении с ситуацией 10-ти летней давности", data: "тртртртр"),
            Articles(title: "Что для вас самое важное при выборе лиги?", dataTitle: "Статья по итогам проведенного голосования в сравнении с ситуацией 10-ти летней давности", data: "тртртртр"),
            Articles(title: "Что для вас самое важное при выборе лиги?", dataTitle: "Статья по итогам проведенного голосования в сравнении с ситуацией 10-ти летней давности", data: "тртртртр"),
            Articles(title: "Что для вас самое важное при выборе лиги?", dataTitle: "Статья по итогам проведенного голосования в сравнении с ситуацией 10-ти летней давности", data: "тртртртр"),
            Articles(title: "Что для вас самое важное при выборе лиги?", dataTitle: "Статья по итогам проведенного голосования в сравнении с ситуацией 10-ти летней давности", data: "тртртртр"),
            Articles(title: "Что для вас самое важное при выборе лиги?", dataTitle: "Статья по итогам проведенного голосования в сравнении с ситуацией 10-ти летней давности", data: "тртртртр")
        ]
        
        @Published var allForecasts: [Forecasts] = [
            Forecasts(title: "Прогноз на результаты игр 30 апреля", data: "тртртртр"),
            Forecasts(title: "Прогноз на результаты игр 29 апреля", data: "тртртртр"),
            Forecasts(title: "Прогноз на результаты игр 28 апреля", data: "тртртртр"),
            Forecasts(title: "Прогноз на результаты игр 27 апреля", data: "тртртртр"),
            Forecasts(title: "Прогноз на результаты игр 26 апреля", data: "тртртртр"),
            Forecasts(title: "Прогноз на результаты игр 25 апреля", data: "тртртртр")
        ]
        
        @Published var allSponsor: [Sponsor] = [
            Sponsor(image: "rek1"),
            Sponsor(image: "rek2"),
            Sponsor(image: "rek3"),
            Sponsor(image: "rek4")
        ]
        
        @Published var allBestPhoto: [Photo] = [
            Photo(image: "best"),
            Photo(image: "best"),
            Photo(image: "best"),
            Photo(image: "best"),
            Photo(image: "best")
        ]
        
        @Published var getChempPhoto: Photo = Photo(image: "zas")
    }
}
