//
//  card.swift
//  ProjectManager
//
//  Created by CatMeox on 19/12/2565 BE.
//

import SwiftUI

struct CardView: View {
  
  let userImages = ["Mark", "Bella", "John"]
  
  var body: some View {

     
        ZStack {
//          Color("Green")
//            .ignoresSafeArea()
          
          VStack(spacing: -300) {
            VStack(alignment: .leading, spacing: 20) {
              HStack {
                Button("App Designer") { }
                  .frame(width: 180, height: 60, alignment: .center)
                  .background(Color("BackgroundButton"))
                  .cornerRadius(45)
                
                Spacer()
                
                Button(action: {}) {
                  Image(systemName: "square.and.arrow.up")
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(Color("BackgroundButton"))
                    .cornerRadius(45)
                }
              }
              .padding(.horizontal, 10)
              
              Text("Wallet Mobile App Design")
                .font(.largeTitle)
                .bold()
                .kerning(0.5)
                .padding(.horizontal, 30)
                .padding(.vertical,10)
              
              
              HStack{
                Text("Progress")
                Spacer()
                Text("45%")
              }
              .font(.callout)
              .padding(.horizontal, 30)
              
              ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                  .fill(Color("BackgroundButton"))
                  .frame(width: 310, height: 10)
                  .padding(.horizontal, 30)
                  .padding(.bottom, 10)
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                  .fill(Color("Green"))
                  .frame(width: 150, height: 10)
                  .padding(.horizontal, 30)
                  .padding(.bottom, 10)
                
              }
              
              HStack {
                HStack(spacing: -25) {
                  ForEach(userImages, id: \.self) { userImage in
                    Image(userImage)
                      .resizable()
                      .frame(width: 60, height: 60)
                      .clipShape(Circle())
                      .overlay(Circle().stroke(Color("Green"), lineWidth: 2.5))
                      .rotationEffect(.degrees(180))
                  }
                }
                .rotationEffect(.degrees(-180))
                .padding(5)
                
                Text("16 Hours Remaining")
                  .font(.caption)
                  .bold()
                
                Spacer()
                Button(action: {} ) {
                  Image(systemName: "arrow.right")
                    .padding(.horizontal, 20)
                }
              }
              .frame(width: 350, height: 70, alignment: .leading)
              .background(Color("Green"))
              .foregroundColor(Color("White"))
              .cornerRadius(45)
              .font(.subheadline)
              .padding(.horizontal, 10)
              
            }
            
            .frame(width: 370, height: 370, alignment: .center)
            .background(Color("White"))
            .cornerRadius(45)
            .foregroundColor(Color("Green"))
            .zIndex(999)
            .shadow(radius: 10)
            
            
          }
        }
      }
    }
  


struct RoundedRectButtonView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .background(Color("BackgroundButton"))
      .cornerRadius(50)
  }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
