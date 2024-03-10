//
//  APIManager.swift
//  KHL
//
//  Created by Михаил Шаговитов on 04.11.2023.
//

import Foundation

enum APIManagerError: Error {
    case serverError(BrandsError)
    case unknown(String = "An unknown error occurred.")
    case decodingError(String = "Error parsing server response.")
}

final class APIManager {

//    func fetchBrands(url: String, completion: @escaping (Result<[Brand], APIManagerError>)->Void) {
//
//        let url = URL(string: url)!
//        let request = URLRequest(url: url)
//
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            if error != nil {
//                print("Error")
//                completion(.failure(.unknown(error!.localizedDescription)))
//            } else {
//                let httpResponse = response as? HTTPURLResponse
//                print("status cod: \((String(describing: httpResponse?.statusCode)))")
//
//                guard let saveData = data else {return}
//
//                if let decodedQuery = try? JSONDecoder().decode(Query.self, from: saveData) {
//                    completion(.success(decodedQuery.brands))
//                }
//            }
//        }.resume()
//    }
    
//    var results = YouTube.Search.list('id,snippet', {q: 'dogs', maxResults: 25});
//
//      for(var i in results.items) {
//        var item = results.items[i];
//        Logger.log('[%s] Title: %s', item.id.videoId, item.snippet.title);
//      }
}

struct BrandsStatus: Decodable {
    let status: BrandsError
}

struct BrandsError: Decodable {
    let errorCode: Int
    let errorMessage: String
    
    enum BrandsKeys: String, CodingKey {
        case errorCode = "error_code"
        case errorMessage = "error_message"
    }
}
