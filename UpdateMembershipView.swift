import SwiftUI

struct UpdateMembershipView: View {
    @State private var membershipNumber = ""
    @State private var selectedDuration = "6 months"
    let durations = ["6 months", "1 year", "2 years"]

    var body: some View {
        VStack {
            TextField("Membership Number", text: $membershipNumber)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)

            Picker("Extend Duration", selection: $selectedDuration) {
                ForEach(durations, id: \.self) { duration in
                    Text(duration)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Button("Update Membership") {
                // Logic to update membership
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}
