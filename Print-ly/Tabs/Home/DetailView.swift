//
//  DetailView.swift
//  Print-ly
//
//  Created by Maryam Aloudah on 19/09/2022.
//

import SwiftUI

struct DetailView: View {

  //  @StateObject var cartManager = CartManager()
//    @Binding var show : Bool
    
    @State var size = ""
    @State var textInput = ""
    weak var navigationController: UINavigationController?

    var body : some View{
       
        ScrollView(.vertical, showsIndicators: false) {
        
            VStack(){
                
        
                        //add the image and fill the screen
                //replace with cup 3d here
           
                        Image("cup1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                 
                    
                  VStack(alignment: .trailing , spacing: 12){
                    Text("كوب ورق")
                          .font(.largeTitle)
                          .fontWeight(.bold)
                        
                      Text("ابتداءً من 250 ريال ").font(.title3).fontWeight(.bold)
                   

                Text("كوب ورقي ذو جودة عالية، يمكنك وضع هويتك التجارية الخاصة وتحديد مقاسات مختلفة")
                          .multilineTextAlignment(.trailing)

                Text("اختر الحجم (بالأونصة) :")
                    .font(.headline)
                      
                      HStack{
                          ForEach(sizes,id: \.self){i in
                          
                          Button(action: {
                              
                              self.size = i
                              
                          }) {
                              
                              Text(i).padding().font(.headline)
                                  .multilineTextAlignment(.center)
                          }.scaledToFill()
                       
                         
                          
                          
                          .frame(width: 70, height: 40)
                          
                          .foregroundColor(.white)
                          
                          .background(self.size == i ? Color("Color-1") : Color(UIColor(hexString: "4997AF")))
                          .cornerRadius(5)
                         
                          }
                      }
                
           
                      Text(" كم عدد القطع التي تريد طلبها :")
                          .font(.headline)
                      
                      TextField(
                        "٤",
                        text: $textInput
                      ).padding(24)
                          .frame(width: 100, height: 40 , alignment: .trailing)
                          .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                      
                      
                }
//
                HStack{
                    
                 
                       
                        NavigationLink {
                            
                            design()
                        } label:
                    {
                        Text("التالي").padding()
                    }.foregroundColor(.white)
                        .background(Color(UIColor(hexString: "4997AF")))
                        .cornerRadius(10)


                    Spacer()
                   

                }.padding()
                    





            }
        
        }
        
            
        .navigationTitle(Text("التفاصيل"))
    
    }
    }

struct DetailView_Previews: PreviewProvider {
   
    static var previews: some View {
        
        DetailView( )
    }
}


