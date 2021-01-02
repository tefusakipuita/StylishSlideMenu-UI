//
//  MainView.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/11/19.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Property
    
    @Binding var show: Bool
    
    @Binding var index: Int
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack (spacing: 0) {
                
                // MARK: - Top Bar
                HStack (spacing: 15) {
                    Button(action: {
                        withAnimation {
                            if show {
                                show = false
                            } else {
                                show = true
                            }
                        }
                    }, label: {
                        if show {
                            Image(systemName: "multiply")
                                .resizable()
                                .frame(width: 18, height: 18)
                                .foregroundColor(Color.black.opacity(0.4))
                        } else {
                            Image(systemName: "line.horizontal.3")
                                .resizable()
                                .frame(width: 24, height: 18)
                                .foregroundColor(Color.black.opacity(0.4))
                        }
                    }) //: Button
                    .animation(nil)
                    
                    Text(index == 0 ? "カテゴリ" : index == 1 ? "カート" : index == 2 ? "お気に入り" : "購入履歴")
                        .foregroundColor(Color.black.opacity(0.4))
                        .font(.system(size: 28, weight: .regular))
                    
                    Spacer()
                } //: HStack
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.top, 15)
                .padding(.horizontal)
                
                // MARK: - Main View
                if index == 0 {
                    FirstView()
                } else if index == 1 {
                    SecondView()
                } else if index == 2 {
                    ThirdView()
                } else {
                    ForthView()
                }
                
                Spacer()
            } //: VStack
        } //: ZStack
        .frame(height: UIScreen.main.bounds.height + 20)
        .cornerRadius(20)
        .scaleEffect(show ? 0.85 : 1)
        .rotationEffect(Angle(degrees: show ? -7 : 0), anchor: .topLeading)
        .offset(x: show ? 140 : 0, y: show ? 15 : 0)
    }
}

// MARK: - Preview

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
