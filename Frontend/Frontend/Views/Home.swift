import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            // Header
            HStack {
                Text("**NextRep**")
                    .font(.system(size: 36))
                    .padding(.trailing)
                Spacer()
                Image(systemName: "line.3.horizontal")
                    .imageScale(.large)
                    .padding()
                    .frame(width: 70, height: 90)
                    .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
            }
            .padding(30)
            
            // List of Workouts
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(workoutList, id: \.id) { item in
                        WorkoutCard(workout: item)
                    }
                }
            }
            
            Spacer()
            
            // Navigation Bar
            HStack {
                // Home Button
                Button(action: {
                    print("Home tapped")
                }) {
                    VStack {
                        Image(systemName: "house.fill")
                            .imageScale(.large)
                        Text("Home")
                            .font(.caption)
                    }
                }
                .frame(maxWidth: .infinity)
                
                // Workouts Button
                Button(action: {
                    print("Workouts tapped")
                }) {
                    VStack {
                        Image(systemName: "figure.strengthtraining.traditional")
                            .imageScale(.large)
                        Text("Workouts")
                            .font(.caption)
                    }
                }
                .frame(maxWidth: .infinity)
                
                // Audio Button (Center and Bigger)
                Button(action: {
                    print("Audio tapped")
                }) {
                    VStack {
                        Image(systemName: "microphone")
                            .imageScale(.large)
//                            .foregroundColor(.black)
                        Text("Audio")
                            .font(.caption)

                    }
                }
                .frame(maxWidth: .infinity)
                
                // Favorites Button
                Button(action: {
                    print("Favorites tapped")
                }) {
                    VStack {
                        Image(systemName: "heart.fill")
                            .imageScale(.large)
                        Text("Favorites")
                            .font(.caption)
                    }
                }
                .frame(maxWidth: .infinity)
                
                // Account Button
                Button(action: {
                    print("Account tapped")
                }) {
                    VStack {
                        Image(systemName: "person.fill")
                            .imageScale(.large)
                        Text("Account")
                            .font(.caption)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .frame(height: 80)
            .background(Color.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()
        }
    }
}

#Preview {
    Home()
}

// Workout Card View
struct WorkoutCard: View {
    var workout: Workout
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, content: {
                Text("\(workout.name)")
                    .font(.system(size: 36, weight: .semibold))
                
                Text("\(workout.date.formatted(.dateTime.weekday(.wide).month(.twoDigits).day(.twoDigits).year(.twoDigits)))")
                    .font(.callout)
                    .padding()
                    .background(Color.white.opacity(0.5))
                    .clipShape(Capsule())
                
                Text("\(workout.description)")
                    .padding()
                    .font(.callout)
                
                Spacer()
                HStack {
                    Text("View Workout")
                        .font(.system(size: 24, weight: .semibold))
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.forward.circle")
                            .imageScale(.large)
                            .padding()
                            .clipShape(Capsule())
                            .foregroundColor(.black)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(.white.opacity(0.5))
                .clipShape(Capsule())
            })
            .padding(30)
            .frame(width: 336, height: 422)
            .background(Color.blue.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 57))
            .padding(.leading, 20)
        }
    }
}
