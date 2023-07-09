//
//  SideMenueOptionRowView.swift
//  TwitterClone
//
//  Created by Yazan Ghunaim on 7/9/23.
//

import SwiftUI

struct SideMenueOptionRowView: View {
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenueOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenueOptionRowView(viewModel: .profile)
    }
}
