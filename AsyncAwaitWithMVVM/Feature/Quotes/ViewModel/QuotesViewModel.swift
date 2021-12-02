//
//  QuotesViewModel.swift
//  AsyncAwaitWithMVVM
//
//  Created by Pradeep's Macbook on 02/12/21.
//

import Combine

protocol QuotesViewModel: ObservableObject {
    
    func getRandomQuotes() async
    
}

@MainActor
final class QuotesViewModelImpl: QuotesViewModel {
    
    @Published private(set) var quotes: [Quote] = []
    
    private let service: QuotesService
    
    init(service: QuotesService) {
        self.service = service
    }
    
    func getRandomQuotes() async {
        do {
            self.quotes = try await self.service.fetchRandomQuotes()
        } catch {
            print(error)
        }
    }
}
