//
//  ThirdView.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/11/19.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Favorite")
                .font(.system(size: 80, weight: .ultraLight))
            Spacer()
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
