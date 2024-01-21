import SwiftUI

struct CreateChallengeStep1: View {
    @State private var selectedOption: String? // State to track the selection

    var body: some View {
        ZStack {

            // Background layer
            Color.white

            // Main content
            VStack {
                HStack(spacing: 20) {
                    Text("What kind of Challenge?")
                        .font(Font.custom("Satoshi", size: 24).weight(.medium))
                        .foregroundColor(.black)
                }

                Spacer().frame(height: 120)  // Spacer to move the section down

                HStack(spacing: 20) {
                    VStack(alignment: .center, spacing: 12) {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 171, height: 240)
                          .background(
                            Image("JustMe")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                          )
                          .background(.white)
                          .cornerRadius(25)
                          .shadow(color: .black.opacity(0.25), radius: 1, x: 0, y: 2)
                        Text("Just Me")
                          .font(
                            Font.custom("Satoshi", size: 20)
                              .weight(.medium)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        
                        Text("Solo it is! ")
                          .font(
                            Font.custom("Satoshi", size: 12)
                              .weight(.medium)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.71, green: 0.7, blue: 0.7))
                          .frame(maxWidth: .infinity, alignment: .top)
                    }
                    .onTapGesture {
                                            selectedOption = "JustMe"
                                        }
                                        .background(selectedOption == "JustMe" ? Color.gray.opacity(0.2) : Color.clear)
                                        .cornerRadius(25)

                    VStack (alignment: .center, spacing: 12) {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 171, height: 240)
                          .background(
                            Image("Friend")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                          )
                          .background(.white)
                          .cornerRadius(25)
                          .shadow(color: .black.opacity(0.25), radius: 1, x: 0, y: 2)
                        Text("Friend")
                          .font(
                            Font.custom("Satoshi", size: 20)
                              .weight(.medium)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        Text("Who doesn’t love a team effort?")
                          .font(
                            Font.custom("Satoshi", size: 12)
                              .weight(.medium)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.71, green: 0.7, blue: 0.7))
                          .frame(maxWidth: .infinity, alignment: .top)
                    }
                    .onTapGesture {
                                            selectedOption = "Friend"
                                        }
                                        .background(selectedOption == "Friend" ? Color.gray.opacity(0.2) : Color.clear)
                                        .cornerRadius(25)
                }
                
                //.frame(width: 393, height: 852)
                .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                Spacer().frame(height: 280)  // Spacer to move the section down

                HStack(alignment: .center, spacing: 24) {
                    if selectedOption == "JustMe" {
                        NavigationLink(destination: CreateChallengeStep2()) {
                            Text("Continue")
                                .font(.custom("Satoshi", size: 16).weight(.medium))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                        }
                    }
                    else if selectedOption == "Friend" {
                        NavigationLink(destination: CreateChallengeStep2Friend()) {
                            Text("Continue")
                                .font(.custom("Satoshi", size: 16).weight(.medium))
                                .multilineTextAlignment(.center)
                            
                        }
                    }
                    
                        
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 10)
                .frame(width: 126, height: 44, alignment: .center)
                .background(Color(red: 1, green: 0.49, blue: 0.32))
                .cornerRadius(25)
                .shadow(color: Color(red: 1, green: 0.49, blue: 0.32), radius: 4, x: 0, y: 2)
                    
            }
            .frame(width: 393, height: 852)
        }
        



        .edgesIgnoringSafeArea(.all)

    }

}

struct CreateChallengeStep1_Previews: PreviewProvider {
    static var previews: some View {
        CreateChallengeStep1()
    }
}
