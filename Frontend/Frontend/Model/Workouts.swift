import SwiftUI

// Workout Model
struct Workout: Identifiable {
    var id: UUID = .init()
    var name: String
    var date: Date
    var startTime: Date
    var endTime: Date
    var description: String
    var duration: TimeInterval {
        return endTime.timeIntervalSince(startTime)
    }
}

// Sample Workouts
var workoutList = [
    Workout(
        name: "Morning Run",
        date: Date(),
        startTime: Calendar.current.date(byAdding: .hour, value: -1, to: Date()) ?? Date(),
        endTime: Date(),
        description: "A refreshing early morning run to kickstart your day with energy and positivity."
    ),
    Workout(
        name: "Evening Yoga",
        date: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(),
        startTime: Calendar.current.date(byAdding: .hour, value: -2, to: Date()) ?? Date(),
        endTime: Calendar.current.date(byAdding: .hour, value: -1, to: Date()) ?? Date(),
        description: "A relaxing yoga session to unwind and stretch after a long day."
    ),
    Workout(
        name: "HIIT Training",
        date: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(),
        startTime: Calendar.current.date(byAdding: .hour, value: -3, to: Date()) ?? Date(),
        endTime: Calendar.current.date(byAdding: .hour, value: -2, to: Date()) ?? Date(),
        description: "High-Intensity Interval Training to push your limits and build endurance."
    )
]
