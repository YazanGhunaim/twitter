//
//  FeedView.swift
//  TwitterClone
//
//  Created by Yazan Ghunaim on 7/8/23.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "square.and.pencil.circle")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
