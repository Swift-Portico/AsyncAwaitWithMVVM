//
//  QuotesScreen.swift
//  AsyncAwaitWithMVVM
//
//  Created by Pradeep's Macbook on 02/12/21.
//

import SwiftUI

struct QuotesScreen: View {
    
    @StateObject private var vm = QuotesViewModelImpl.init(service: QuotesServiceImpl())
    
    var body: some View {
        
        Group {
            if(self.vm.quotes.isEmpty) {
                LoadingView.init(message: "Fetching Quotes")
            } else {
                List {
                    ForEach(vm.quotes, id:\.anime){ quote in
                        QuoteView.init(quote: quote)
                    }
                }
            }
        }
        .task {
            await self.vm.getRandomQuotes()
        }
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
