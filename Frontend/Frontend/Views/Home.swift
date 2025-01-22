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
            
            // List of Wokrouts
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(workoutList, id: \.id) { item in WorkoutCard(workout: item)}
                }
            }
        }
    }
}

#Preview {
    Home()
}

//Workout Card View
struct WorkoutCard: View {
    var workout: Workout
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, content: {
                Text("\(workout.name)")
                    .font(.system(size: 36, weight: .semibold))
                
                Text("\(workout.date)")
                    .font(.callout)
                    .padding()
                    .background(Color.white.opacity(0.5))
                    .clipShape(Capsule())
                
                Spacer()
                HStack {
                    Text("View Workout")
                        .font(.system(size:24, weight: .semibold))
                    Spacer()
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(.white.opacity(0.5))
                .clipShape(Capsule())
                
            })
            .padding(30)
            .frame(width: 336, height: 422)
            .background(Color.blue.opacity(0.2)) // Replace with workout-specific color if needed
            .clipShape(RoundedRectangle(cornerRadius: 57))
            .padding(.leading, 20)
        }
    }
}
