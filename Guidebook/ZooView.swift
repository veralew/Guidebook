//
//  ZooView.swift
//  Guidebook
//
//  Created by Vera Lew on 6/29/24.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.blue, Color.teal, Color.blue, Color.green, Color.red, Color.brown, Color.brown, Color.red],
    startPoint: .top, endPoint: .bottom)

struct ZooView: View {
    
    @State var areas = [ZooArea]()
    @State var navigated = true
    var dataService = DataService()
   
    
    var body: some View {
        
        NavigationStack {
            
            
            ScrollView (showsIndicators: false) {
                
                ZStack{
                    //backgroundGradient
                    Image("morelilypads")
                        .resizable(resizingMode: .tile)
                    
                    VStack {
                        Spacer()
                        
                        Text("Where the Wild Things Are")
                            .padding(.top, 25)
                            .foregroundStyle(
                                .linearGradient(
                                    colors: [.white, .brown],
                                    startPoint: .bottomLeading,
                                    endPoint: .topTrailing
                                )
                            )
                            .font(.system(size: 25, weight: .heavy, design: .serif))
                            .bold()
                        
                        
                        //Create URL instance based on URL scheme
                        if let url = URL (string: "https://www.dropbox.com/scl/fi/2et74yww4elo2qwblwpke/saczoo-map-with-colors.png?rlkey=yekeoyla2yms8f9cwnehn97gg&st=4udiiotq&dl=0")
                                          {
                            //Test URL if it can be opened
                            if UIApplication.shared.canOpenURL(url){
                                
                                Button(action: {
                                    //Open URL
                                    UIApplication.shared.open(url)
                                    
                                }, label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15.0)
                                            .foregroundColor(.green)
                                            .padding(.horizontal, 50)
                                            .frame(height: 40)
                                        
                                        Text("SacZoo Map")
                                            .foregroundStyle(.white)
                                            .font(.system(size: 20))
                                    }
                                    .padding(.bottom, 30)
                                })
                                
                            }
                        }
                        
                        
                        
                        ForEach (areas) { area in
                            
                            
                            NavigationLink {
                                AttractionView(area: area)
                            } label: {
                                //Text(area.name)
                                ZooAreaCard(area: area)
                                    .padding(.top, 20)
                                    .padding(.bottom, 30)
                                
                            }
                        }
                    }
                    .listStyle(.plain)
                    .padding(.horizontal, 20)
                    .onAppear {
                        //Call for Data
                        areas = dataService.getFileData()
                        
                    }
                }
                //ZStack end
                //.ignoresSafeArea()
                //.padding()
            }
            //ScrollView end
            //.ignoresSafeArea()
            //.padding()
            
            HStack {
                Text("Explorer ")
                    .padding(.top, 5)
                    .bold()
                NavigationLink(destination: QuizView()) {
                    Text(" Quiz ")
                        .padding(.top, 5)
                        .bold()
                }
                NavigationLink(destination: ImpactView()) {
                    Text(" Impact")
                        .padding(.top, 5)
                        .bold()
                }
            }
            
        }
    
        //.background(backgroundGradient)
    //NavigationStack end
        .ignoresSafeArea()
        
    }
}

#Preview {
    ZooView()
}
