//
//  Profile.swift
//  Print-ly
//
//  Created by Maryam Aloudah on 19/09/2022.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .trailing){
            HStack(){
                VStack(){
                    Text("محمد علي")
                 

                
                } .font(.headline)
                .padding(.all)
                
                Image("abdullah")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
              
            }
                List{
                    Section {
                            Text("طلباتي")
                            Text("الخصوصية")
                            Text("موقع الشحن ")
                        }
                        
                        Section {
                            Text("من نحن؟")
                            Text("سياسة الاسترجاع")
                            
                        }
                    }.listStyle(InsetGroupedListStyle())
                    
                    
                
            }
            .navigationTitle("حسابي")
            .navigationBarTitleDisplayMode(.inline)
        }
            
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
