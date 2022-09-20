//
//  design.swift
//  Print-ly
//
//  Created by Lina on 24/02/1444 AH.
//

import SwiftUI

struct design: View {
    var body: some View {
        

            ScrollView( showsIndicators: false){
               
                
                
        VStack{
            DesignView().frame(width:UIScreen.main.bounds.width, height: 400)
            
            VStack(alignment: .trailing ){
                Text("اضــف بصمــتك الخــاصــة")
                    .font(.title)
                    
                Text("اختر التصميم المناسب لعلامتك التجارية")
                    .font(.headline)
            
            }.padding()
            HStack{
                
                
                Button(action: {
                    
                    
                    
                }) {
                    VStack(spacing:8){
                    
                    Image("color-wheel").resizable()
                        .frame(width: 45, height: 45)
                    
                    Text("اللون").font(.headline)
                        .multilineTextAlignment(.center)
                }.scaledToFill()
                        .frame(width:70, height: 100)
                
                        .foregroundColor(Color.white)
                
                .background( .gray )
                .cornerRadius(5)
               
            }
            Spacer()
                
                Button(action: {
                    
                    
                    
                }) {
                    VStack(spacing:8){
                        Image(systemName: "square.and.arrow.up").resizable()
                            .frame(width: 37, height: 45)
                    Text("شعار").font(.headline)
                        .multilineTextAlignment(.center)
                }.scaledToFill()
                .frame(width:70, height: 100)
                
                .foregroundColor(.white)
                
                .background( .gray )
                .cornerRadius(5)
               
                }
                
            }.padding(.horizontal,60)
        
            HStack(){
              
            NavigationLink {
                MainView().navigationBarHidden(true)

            } label: {
                Text("شراء")
                    .frame(width: 70, height: 40)
                
                    .foregroundColor(.white)
                    
                    .background( Color(UIColor(hexString: "4997AF")))
                    .cornerRadius(5)
            }
                Spacer()
            }.padding(.top,40)
                .padding(.horizontal, 42)
            
           

    }
            }
        
        
        
    }
}

struct design_Previews: PreviewProvider {
    static var previews: some View {
        design()
    }
}
