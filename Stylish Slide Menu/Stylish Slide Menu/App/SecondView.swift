//
//  SecondView.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/11/19.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Cart")
                .font(.system(size: 80, weight: .ultraLight))
            Spacer()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
