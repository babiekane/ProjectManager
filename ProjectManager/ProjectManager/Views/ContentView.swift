//
//  ContentView.swift
//  ProjectManager
//
//  Created by CatMeox on 19/12/2565 BE.
//

import SwiftUI

struct ContentView: View {
  
  @State private var userName = "Alex"
  @State private var noOfProjects = 4
  
  init() {
    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color("White"))]
  }
  
  var body: some View {
    
    NavigationView {
      ZStack {
        
        Color("Green")
          .ignoresSafeArea()
        
        
        VStack(alignment: .leading) {
          Text("Hello, \(userName)")
            .padding(.horizontal, 20)
            .padding(.bottom, 5)
            .padding(.top, 30)
          Text("Your projects (\(noOfProjects))")
            .bold()
            .font(.system(size: 40, weight: .bold))
            .padding(.horizontal, 20)
          
          
          VStack(spacing: -340) {
              CardView()
                .zIndex(999)
              
              CardView()
                .zIndex(888)
                .scaleEffect(0.98)
              
              CardView()
                .zIndex(777)
                .scaleEffect(0.96)
              
              CardView()
                .zIndex(666)
                .scaleEffect(0.94)
              
              Spacer()
            }
          }
        .foregroundColor(Color("White"))
        .navigationTitle(Text("Home"))
        
        .toolbar {
          
          ToolbarItem(placement: .navigationBarLeading) {
            Button(action: { }) {
              Image(systemName: "line.3.horizontal")
            }
            .foregroundColor(Color("White"))
            .padding(.horizontal, 20)
          }
          
          ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: { } ) {
              Image("Horn")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(20)
            }
          }
        }
        .navigationBarTitleDisplayMode(.inline)
        
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
