//
//  TabView.swift
//  ProjectManager
//
//  Created by CatMeox on 20/12/2565 BE.
//

import SwiftUI
struct TabbarView: View {
  
  var body: some View {
    TabView {
      ContentView()        
        .tabItem {
          Image(systemName: "house")
        }
      
      Text("Folder Tab")
        .font(.system(size: 30, weight: .bold))
        .tabItem {
          Image(systemName: "folder")
        }
      
      Text("New Tab")
        .font(.system(size: 30, weight: .bold))
        .tabItem {
          Image(systemName: "plus.circle.fill")
       
        }
      
      Text("Chat Tab")
        .font(.system(size: 30, weight: .bold))
        .tabItem {
          Image(systemName: "ellipsis.bubble")
        }
      
      Text("Profile Tab")
        .font(.system(size: 30, weight: .bold))
        .tabItem {
          Image(systemName: "person")
        }
      
    }
    .accentColor(Color("White"))
  }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
