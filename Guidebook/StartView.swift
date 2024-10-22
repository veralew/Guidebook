//
//  StartView.swift
//  Guidebook
//
//  Created by Vera on 10/9/24.
//

import SwiftUI

struct StartView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ZStack {
            Image("lilies")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40) {
                Text("Quiz App")
                    .font(.system(size: 64))
                    .foregroundStyle(.white)
                    .bold()
                
                Text("Quiz on habitat loss and conservation")
                    .font(.system(size: 24))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .background(Color("AppColor"))
                
                Button {
                    dismiss()
                } label: {
                    Text("Start")
                        .font(.system(size: 23))
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color("AppColor"))
                                .frame(width: 340)
                        )
                }
                
                Text("image by\rseori_berry")
                    .font(.system(size: 15))
                    .padding(.top, 50)
                    .bold()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .padding(.bottom, 100)
        }
        
        HStack {
            NavigationLink(destination: ZooView()) {
                Text("Explorer ")
                    .padding(.top, 5)
            }
            Text(" Quiz")
                .padding(.top, 5)
            NavigationLink(destination: ImpactView()) {
                Text(" Impact ")
                    .padding(.top, 5)
            }
        }
    }
}

#Preview {
    StartView()
}
