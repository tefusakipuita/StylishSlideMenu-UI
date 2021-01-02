//
//  ContentView.swift
//  Stylish Slide Menu
//
//  Created by 中筋淳朗 on 2020/11/19.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Property
    
    @State var index = 0
    
    @State var show = false
    
    
    // MARK: - Body
    
    var body: some View {
        
        ZStack {
            
            // MARK: - Slide Menu
            SlideMenu(index: $index, show: $show)
            
            // MARK: - Main View
            MainView(show: $show, index: $index)
            
        } //: ZStack
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
