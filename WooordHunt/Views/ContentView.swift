//
//  ContentView.swift
//  WooordHunt
//
//  Created by Artemiy Mirotvortsev on 15.11.2021.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = myColor
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    }
    
    var myColor = #colorLiteral(red: 0.1868668497, green: 0.316085875, blue: 0.4118339419, alpha: 1)
    
    var body: some View {
        ZStack {
            Color(myColor)
                .ignoresSafeArea()
            NavigationView {
                WebView(url: URL(string: "https://wooordhunt.ru/word/welcome"))
                    .ignoresSafeArea()
                    .statusBar(hidden: true)
                    .navigationTitle("WooordHunt")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
