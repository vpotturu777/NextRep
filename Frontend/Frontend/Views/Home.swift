//
//  ContentView.swift
//  Frontend
//
//  Created by Aryan Mathur on 1/20/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("The New Gym **Logger**")
                        .font(.system(size: 36))
                        .padding(.trailing)
                    Spacer()
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .padding()
                        .frame(width:70, height:90)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                }
                
            }
            .padding(30)
        }
    }
}

#Preview {
    Home()
}
