//
//  DetailView.swift
//  ProjectManager
//
//  Created by CatMeox on 20/12/2565 BE.
//

import SwiftUI
struct DetailView: View {
  
  @State var date = Date()
  
  var body: some View {
    
    NavigationView {
      GeometryReader { geometry in
        VStack(alignment: .leading) {
          Text("Building Design System")
            .font(.largeTitle)
            .bold()
            .kerning(1)
            .padding(30)
            .padding(.top, 10)
          Text("Create styles and elements, and then creating a consistant system to standardize our visual languages as a strong yet flexible base")
            .lineSpacing(5)
            .padding(.horizontal, 30)
            .padding(.bottom, 10)

          HStack {
            Button(action: {}) {
              Image(systemName: "plus")
                .frame(width: 60, height: 60)
                .background(Color("White"))
                .cornerRadius(45)
            }
            Text("Add Description")
              .font(.caption)
              .foregroundColor(Color("Green"))
            
            Spacer()
          }
          .padding(.horizontal, 8)
          .frame(width: geometry.size.width - 20, height: 70)
          .background(Color("BackgroundButton"))
          .cornerRadius(45)
          .padding(.horizontal, 10)

          HStack(spacing: 20) {
            HStack {
              Button(action: { }) {
                Image(systemName: "calendar")
                  .frame(width: 60, height: 60)
                  .background(Color("White"))
                  .cornerRadius(45)
              }
              
              Text("Due Date \n12 Dec") // wait calendar
                .font(.caption)
                .foregroundColor(Color("Green"))
              
              Spacer()
            }
            .padding(.horizontal, 8)
            .frame(width: (geometry.size.width - 40) / 2, height: 70)
            .background(Color("BackgroundButton"))
            .cornerRadius(45)
  
            HStack {
                Image(systemName: "hand.thumbsup")
                  .frame(width: 60, height: 60)
                  .background(Color("White"))
                  .cornerRadius(45)
              Text("Priority \nMedium") // wait picker
                .font(.caption)
                .foregroundColor(Color("Green"))
              
              Spacer()
              
              Button(action: { }) {
                Image(systemName: "chevron.down")
                  .resizable()
                  .frame(width: 8, height: 5)
                  .padding(.horizontal, 5)
              }
            }
            .padding(.horizontal, 8)
            .frame(width: (geometry.size.width - 40) / 2, height: 70)
            .background(Color("BackgroundButton"))
            .cornerRadius(45)
          }
          .padding(.horizontal, 10)

          HStack {
            Text("Process")
              .bold()
            
            Spacer()
            Button(action: { }) {
              Image(systemName: "square.and.pencil")
            }
          }
          .padding(30)
          
          HStack {
            Image(systemName: "rectangle.and.pencil.and.ellipsis")
              .frame(width: 60, height: 60, alignment: .center)
              .background(Color("Green"))
              .foregroundColor(Color("White"))
              .cornerRadius(45)
            
            Text("List out components")
              .font(.subheadline)
              .bold()
              .foregroundColor(Color("Green"))
            
          }
          .padding(.horizontal, 30)
          
          HStack {
            Image(systemName: "person.fill.questionmark")
              .frame(width: 60, height: 60, alignment: .center)
              .background(Color("Green"))
              .foregroundColor(Color("White"))
              .cornerRadius(45)
            
            Text("Research and discuss")
              .font(.subheadline)
              .bold()
              .foregroundColor(Color("Green"))
          }
          .padding(.horizontal, 30)

          
          Spacer()
        }
        .foregroundColor(Color("Green"))
        // Navigation
        .navigationTitle(Text("Detail"))
        .toolbar {
          ToolbarItem(placement: .navigationBarLeading) {
            Button(action: { }) {
              Image(systemName: "arrow.backward")
              
            }
            .foregroundColor(Color("Green"))
            .padding(.horizontal, 10)
            
          }
          
          ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: { }) {
              Image(systemName: "ellipsis")
                .rotationEffect(.degrees(90))
            }
            .foregroundColor(Color("Green"))
            .padding(.horizontal, 10)
          }
        }
        .navigationBarTitleDisplayMode(.inline)
      }
    }
  }
  
}



struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView()
  }
}
