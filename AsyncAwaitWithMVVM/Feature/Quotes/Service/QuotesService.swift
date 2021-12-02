//
//  QuotesService.swift
//  AsyncAwaitWithMVVM
//
//  Created by Pradeep's Macbook on 02/12/21.
//

import Foundation

protocol QuotesService {
    func fetchRandomQuotes() async throws -> [Quote]
}


final class QuotesServiceImpl: QuotesService {
    
    func fetchRandomQuotes() async throws -> [Quote] {
        let urlSession = URLSession.shared
        guard let url = URL.init(string: APIConstants.baseURL.appending("/api/quotes")) else { return [] }
        let (data,_) = try await urlSession.data(from: url, delegate: nil)
        return try JSONDecoder().decode([Quote].self, from: data)
    }
}
