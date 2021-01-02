//
//  MenuButton.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/11/19.
//

import SwiftUI

struct MenuButton: View {
    
    // MARK: - Property
    
    @Binding var index: Int
    var menuNum: Int
    
    var imageName: String
    var title: String
    
    @Binding var show: Bool
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            index = menuNum
            
            withAnimation {
                show = false
            }
        }, label: {
            HStack (spacing: 25) {
                Image(imageName)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                
                Text(title)
            } //: HStack
            .foregroundColor(index == menuNum ?  Color("Color2") : .white)
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(
                index == menuNum ? Color("Color2").opacity(0.2) : Color.clear
            )
            .cornerRadius(10)
        }) //: Button
    }
}

// MARK: - Preview

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
