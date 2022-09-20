//
//  MainView.swift
//  Print-ly
//
//  Created by Maryam Aloudah on 19/09/2022.
//

        
          
          
import SwiftUI
struct MainView: View {
    @State private var searchText = ""
        @State var selected = "Cup"
        
        var body : some View{
           
            NavigationView{
                VStack(spacing: 15){
             
                
                    HStack{
                        
                        ForEach(types,id: \.self){ i in
                            
                            HStack{
                                
                                Button(action: {
                                    
                                    self.selected = i
                                    
                                }) {
                                    
                                    Text(i).padding().font(.headline)
                                        .multilineTextAlignment(.center)
                                }.scaledToFill()
                             
                               
                                
                                
                                .frame(width: 110, height: 40)
                                
                                .foregroundColor(.white)
                                
                                .background(self.selected == i ? Color("Color-1") : Color(UIColor(hexString: "4997AF")))
                                .cornerRadius(5)
                               
                                
                            }
                        }
                    }.scaledToFill()
                
                
                
                DetailsScroll()
                        .searchable(text: $searchText)
                        .navigationTitle("بـرنــتــــــ لـي")
            }
                
            
            }
        }
    var searchResults: [String] {
        if searchText.isEmpty {
            return types
        } else {
            return types.filter { $0.contains(searchText) }
        }
    }
    }








struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
