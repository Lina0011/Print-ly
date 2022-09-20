//
//  DetailsScroll.swift
//  Print-ly
//
//  Created by Maryam Aloudah on 19/09/2022.
//

import SwiftUI

struct DetailsScroll: View {
   
    @State var show = false
    
    var body : some View{
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 12){
                
                ForEach(package){i in
                    
                    HStack{
                        
                        ForEach(i.rows){j in
                            
                            Cards(Row: j)
                        }
                    }
                }
            }
        }
    }
}

struct DetailsScroll_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScroll()
    }
}
