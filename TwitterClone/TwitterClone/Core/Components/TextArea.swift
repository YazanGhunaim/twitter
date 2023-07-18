//
//  textArea.swift
//  TwitterClone
//
//  Created by Yazan Ghunaim on 7/12/23.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            TextEditor(text: $text)
                .padding(4)
            
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
        }
        .font(.body)
    }
}
