//
//  CustomInputFiels.swift
//  TwitterClone
//
//  Created by Yazan Ghunaim on 7/18/23.
//

import SwiftUI

struct CustomInputField: View {
    let imageName: String
    let placeHolderText: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeHolderText, text: $text)
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName: "envelope", placeHolderText: "Email", text: .constant(""))
    }
}
