import SwiftUI

// Workout Model
struct Workout: Identifiable {
    var id: UUID = .init()
    var name: String
    var date: Date
    var startTime: Date
    var endTime: Date
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
        endTime: Date()
    ),
    Workout(
        name: "Evening Yoga",
        date: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(),
        startTime: Calendar.current.date(byAdding: .hour, value: -2, to: Date()) ?? Date(),
        endTime: Calendar.current.date(byAdding: .hour, value: -1, to: Date()) ?? Date()
    ),
    Workout(
        name: "HIIT Training",
        date: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(),
        startTime: Calendar.current.date(byAdding: .hour, value: -3, to: Date()) ?? Date(),
        endTime: Calendar.current.date(byAdding: .hour, value: -2, to: Date()) ?? Date()
    )
]
