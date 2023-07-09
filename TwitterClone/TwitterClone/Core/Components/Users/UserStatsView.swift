//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Yazan Ghunaim on 7/9/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("203")
                    .font(.subheadline.bold())
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("7M")
                    .font(.subheadline.bold())
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
