//
//  LoadingView.swift
//  AsyncAwaitWithMVVM
//
//  Created by Pradeep's Macbook on 02/12/21.
//

import SwiftUI

struct LoadingView: View {
    
    let message: String
    
    var body: some View {
        VStack(spacing: 8) {
            ProgressView()
            Text(message)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(message: "")
    }
}
