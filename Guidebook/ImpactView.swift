//
//  ImpactView.swift
//  Guidebook
//
//  Created by Vera on 10/13/24.
//

//
//  SplashView.swift
//  Guidebook
//
//  Created by Vera on 8/17/24. (the original one.)
//

import Foundation
import SwiftUI

let bgdGradImpact = LinearGradient(
    colors: [Color.blue, Color.red],
    startPoint: .top, endPoint: .bottom)

struct ImpactView: View {
    
    
    var body: some View {
        
        NavigationStack {
            
            /*Image("nightt")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
                //.opacity(0.5)*/
            
            VStack(spacing: 20) {
                
                ScrollView {
                    
                    Text("Reduce your Ecological Footprint")
                        .font(.system(size: 40))
                        .bold()
                        //.multilineTextAlignment(.center)
                        .padding(.top, 55)
                        .padding(.bottom, 10)
                    
                    Text("Play your part in animal and habitat conservation and restoration!")
                        .font(.system(size: 23))
                        //.multilineTextAlignment(.center)
                        .padding(.bottom, 30)
                    
                    Text("Reduce consumption")
                        .font(.system(size: 25))
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("Using fewer resources, such as food, water, textiles, paper, and building materials, can help reduce the amount of land consumed for development.")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                    
                    
                    Text("Reduce waste")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("Reduce, reuse, and recycle, and pick up litter.")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                    
                    
                    Text("Use non-toxic products")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("Use phosphate-free laundry and dishwasher detergents, and non-toxic, nature-based products.")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                    
                    
                    Text("Plant native species")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("Plant native trees, shrubs, and flowers.")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                    
                    
                    Text("Create a wildlife habitat:")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("Create a Certified Wildlife Habitat near your home, school, or business by providing food, water, cover, and places to raise young.")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                    
                    
                    Text("Support environmentally-friendly projects")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("Promote smart urban growth, green stormwater measures, public transportation systems, bike lanes, and trails.")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                    
                    
                    Text("Flush clean")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("Flush only your own waste and toilet paper, and avoid flushing medicine, cleaning wipes, cotton balls, paint, or pet poo.")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 80)
                    
                    
                    
                    
                    
                    Text("Volunteer Opportunities")
                        .font(.system(size: 40))
                        .bold()
                        //.multilineTextAlignment(.center)
                        .padding(.top, 65)
                        .padding(.bottom, 25)
                    
                    Text("Sacramento Zoo")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("Educating visitors, Helping with animal care (feeding animals and cleaning exhibits), Raising awareness")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                    
                    //Create URL instance based on URL scheme
                    if let url = URL (string: "https://www.saczoo.org/")
                                      {
                        //Test URL if it can be opened
                        if UIApplication.shared.canOpenURL(url){
                            
                            Button(action: {
                                //Open URL
                                UIApplication.shared.open(url)
                                
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        .frame(height: 40)
                                    
                                    Text("Volunteer at SacZoo")
                                        .foregroundStyle(.white)
                                }
                                .padding(.bottom, 30)
                            })
                            
                        }
                    }
                    
                    Text("California Department of Fish and Wildlife")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("conserve wildlife and protect and restore the places they live, feed and raise their young, protect rare and endangered species, Hunter Education Program")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                    
                    //Create URL instance based on URL scheme
                    if let url = URL (string: "https://wildlife.ca.gov/Volunteering")
                                      {
                        //Test URL if it can be opened
                        if UIApplication.shared.canOpenURL(url){
                            
                            Button(action: {
                                //Open URL
                                UIApplication.shared.open(url)
                                
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        .frame(height: 40)
                                    
                                    Text("Volunteer at CA Dept. of Fish & Wildlife")
                                        .foregroundStyle(.white)
                                }
                                .padding(.bottom, 30)
                            })
                            
                        }
                    }
                    
                    Text("Yolo Basin Foundation (wetland restoration)")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("educate elementary and high school students, help with wetland restoration, participate in clean-up days, give Bat Talk and Walk tours")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                            
                    //Create URL instance based on URL scheme
                    if let url = URL (string: "https://yolobasin.org/volunteer/")
                                      {
                        //Test URL if it can be opened
                        if UIApplication.shared.canOpenURL(url){
                            
                            Button(action: {
                                //Open URL
                                UIApplication.shared.open(url)
                                
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        .frame(height: 40)
                                    
                                    Text("Volunteer at Yolo Basin")
                                        .foregroundStyle(.white)
                                }
                                .padding(.bottom, 30)
                            })
                            
                        }
                    }
                    
                    Text("Yolo Habitat Conservancy")
                        .font(.system(size: 25))
                        .bold()
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    Text("protects 12 endangered species and conserves 33,362 acres of land, forms agreements with agricultural landowners to conserve natural habitat")
                        .font(.system(size: 20))
                        //.multilineTextAlignment(.leading)
                        .padding(.bottom, 30)
                            
                    //Create URL instance based on URL scheme
                    if let url = URL (string: "https://www.yolohabitatconservancy.org/")
                                      {
                        //Test URL if it can be opened
                        if UIApplication.shared.canOpenURL(url){
                            
                            Button(action: {
                                //Open URL
                                UIApplication.shared.open(url)
                                
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        .frame(height: 40)
                                    
                                    Text("Volunteer at Yolo Habitat Conservancy")
                                        .foregroundStyle(.white)
                                }
                                .padding(.bottom, 30)
                            })
                            
                        }
                    }
                    
                }
                
                //Support sustainable and fairtrade products: Buy sustainable and fairtrade products. Eat local and organic: Eat local and organic whenever possible. Educate youth: Educate youth on biodiversity.)")
            }
            //.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 20)
            //.multilineTextAlignment(.leading)
            
            
            HStack {
                NavigationLink(destination: ZooView()) {
                    Text("Explorer ")
                        .padding(.top, 5)
                }
                NavigationLink(destination: QuizView()) {
                    Text(" Quiz ")
                        .padding(.top, 5)
                }
                Text(" Impact")
                    .padding(.top, 5)
            }
        }
    }
        
}

struct ImpactView_Previews: PreviewProvider {
    static var previews: some View {
        ImpactView()
    }
}
