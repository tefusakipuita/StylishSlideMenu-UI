//
//  SignOutButton.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/11/19.
//

import SwiftUI

struct SignOutButton: View {
    
    // MARK: - Property
    
    var imageName: String
    var title: String
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {}, label: {
            HStack (spacing: 25) {
                Image(imageName)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                
                Text(title)
            } //: HStack
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .padding(.horizontal)
        }) //: Button
    }
}

// MARK: - Preview

struct SignOutButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
