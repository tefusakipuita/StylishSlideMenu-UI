//
//  FirstView.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/11/19.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        Image("main")
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.main.bounds.width - 60)
            .cornerRadius(40)
            .padding(.top, 120)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
