import SwiftUI

struct CreateChallengeReview: View {
    var inputTextName: String
    var inputTextTopic: String
    var selectedIndex: Int?
    var friend: String?

    var body: some View {
        VStack {
            
            Text("Review")
                .font(
                    Font.custom("Satoshi", size: 24)
                        .weight(.medium)
                )
                .foregroundColor(.black)
            Text("Title: \(inputTextName)")
                .font(
                    Font.custom("Satoshi", size: 20)
                        .weight(.medium)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            Text("Description: \(inputTextTopic)")
                .font(
                    Font.custom("Satoshi", size: 20)
                        .weight(.medium)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            if selectedIndex == 0 {
                Text("Duration: 1 week")
            } else if selectedIndex == 1 {
                Text("Duration: 1 month")
            } else if selectedIndex == 0 {
                Text("Duration: Custom?")
            }
            if let friendName = friend {
                            Text("With Friend: \(friendName)")
                                .font(Font.custom("Satoshi", size: 20).weight(.medium))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                        }
            
            
        }
    }

}
#Preview {
    CreateChallengeReview(inputTextName: "Weekly Work out", inputTextTopic:"Working out once a week?", selectedIndex: 1, friend: "Clev")
}



