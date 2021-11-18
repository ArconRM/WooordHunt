//
//  ContentView.swift
//  WooordHunt
//
//  Created by Artemiy Mirotvortsev on 15.11.2021.
//

import SwiftUI

struct MainView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = myColor
        
        let attrs: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.black
        ]
        
        appearance.largeTitleTextAttributes = attrs
        appearance.titleTextAttributes = attrs
        
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var myColor = #colorLiteral(red: 0.1868668497, green: 0.316085875, blue: 0.4118339419, alpha: 1)
    
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://wooordhunt.ru/word/welcome"))
                .navigationTitle("WooordHunt")
                .ignoresSafeArea()
        }
        .statusBar(hidden: true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
