//
//  TabBar.swift
//  Print-ly
//
//  Created by Maryam Aloudah on 19/09/2022.
//

import SwiftUI



struct TabBar: View {
    //@StateObject var cartManager = CartManager()
   // var product: row
    
    private enum Tab: Hashable {
        case MainView
        case Profile
        case Fav
        
    }
    
    @State private var selectedTab: Tab = .MainView
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tag(0)
                .tabItem {
                    Text("الرئيسية")
                    Image(systemName: "shippingbox.fill")
                }
           
            Basket()
                .tag(1)
                .tabItem {
                    Text("عربة التسوق")
                    Image(systemName: "cart.fill")
                  
                }
            Profile()
                .tag(2)
                .tabItem {
                    Text("حسابي")
                    Image(systemName: "person.crop.circle")
                    
                }
         
        }.accentColor(Color(UIColor(hexString: "4997AF")))

    }
}
