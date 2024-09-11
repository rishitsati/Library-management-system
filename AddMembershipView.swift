import SwiftUI

struct AddMembershipView: View {
    @State private var selectedDuration = "6 months"
    let durations = ["6 months", "1 year", "2 years"]

    var body: some View {
        VStack {
            Text("Select Membership Duration")
            Picker("Duration", selection: $selectedDuration) {
                ForEach(durations, id: \.self) { duration in
                    Text(duration)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Button("Add Membership") {
                // Logic to save membership
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}

