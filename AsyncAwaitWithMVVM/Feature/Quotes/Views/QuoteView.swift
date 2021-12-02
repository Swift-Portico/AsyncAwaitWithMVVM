//
//  QuoteView.swift
//  AsyncAwaitWithMVVM
//
//  Created by Pradeep's Macbook on 02/12/21.
//

import SwiftUI

struct QuoteView: View {
    
    let quote: Quote
    
    var body: some View {
        VStack(alignment: .leading,spacing: 8) {
            HStack{
                Image(systemName: "tv")
                    .font(.system(size: 12, weight: .bold))
                Text(quote.anime)
                    .lineLimit(1)
                Spacer()
            }
            
            Text(makeAttributedString(title: "Character", label: quote.character))
            Text(makeAttributedString(title: "Quote", label: quote.quote))
                .lineLimit(2)
        }
        .padding()
        .foregroundColor(Color.black)
    }
    
    private func makeAttributedString(title: String, label: String) -> AttributedString {
        var title = AttributedString.init("\(title): \(label)")
        title.foregroundColor = .black
        title.font = .system(size: 16, weight: .bold, design: .rounded)
        if let range = title.range(of: label) {
            title[range].foregroundColor = .black.opacity(0.6)
            title[range].font = .system(size: 16, weight: .regular, design: .rounded)
        }
        return title
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(quote: Quote.dummyData.first!)
    }
}
