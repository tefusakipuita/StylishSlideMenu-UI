//
//  SlideMenu.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/11/19.
//

import SwiftUI

struct SlideMenu: View {
    
    // MARK: - Property
    
    @Binding var index: Int
    
    @Binding var show: Bool
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Color("Color1")
                .ignoresSafeArea()
            
            HStack {
                VStack (alignment: .leading, spacing: 12) {
                    
                    // MARK: - User Info
                    Image("do-mo")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 80, height: 80)
                    
                    Text("イタチ")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.top, 15)
                        .padding(.bottom, 30)
                    
                    // MARK: - Menu
                    MenuButton(index: $index, menuNum: 0, imageName: "catalouge", title: "カタログ", show: $show)
                    MenuButton(index: $index, menuNum: 1, imageName: "cart", title: "カート", show: $show)
                    MenuButton(index: $index, menuNum: 2, imageName: "fav", title: "お気に入り", show: $show)
                    MenuButton(index: $index, menuNum: 3, imageName: "orders", title: "購入履歴", show: $show)
                    
                    Divider()
                        .frame(width: 170, height: 1)
                        .background(Color.white)
                        .padding(.vertical, 45)
                    
                    // MARK: - Sign Out
                    SignOutButton(imageName: "out", title: "ログアウト")
                    
                    Spacer()
                } //: VStack
                .padding(.top, 85)
                .padding(.horizontal)
                
                Spacer()
            } //: HStack
        } //: ZStack
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
