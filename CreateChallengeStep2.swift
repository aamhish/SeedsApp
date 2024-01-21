//
//  CreateChallengeStep2.swift
//  Seeds
//
//  Created by Aamhish Rao on 1/13/24.
//

import SwiftUI

struct CreateChallengeStep2: View {
    var friend: String?
    @State private var inputTextName: String = ""
    @State private var inputTextTopic: String = ""
    @State private var durationButtonIndex: Int?
    @State private var selectedOption: String?

    var body: some View {
        Text("What are the deets?")
          .font(
            Font.custom("Satoshi", size: 24)
              .weight(.medium)
          )
          .foregroundColor(.black)
        
        Text("What do you want to call this?")
          .font(
            Font.custom("Satoshi", size: 20)
              .weight(.medium)
          )
          .multilineTextAlignment(.center)
          .foregroundColor(.black)

        HStack(alignment: .center, spacing: 100) {
                    // Add your TextField here
                    TextField("Enter text", text: $inputTextName)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)

                    // Other elements in the HStack
                    // ...
                }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
        .cornerRadius(25)
        
        Text("Duration")
          .font(
            Font.custom("Satoshi", size: 20)
              .weight(.medium)
          )
          .multilineTextAlignment(.center)
          .foregroundColor(.black)
        
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .center, spacing: 10) {
                Text("1 Week")
                    .font(
                        Font.custom("Satoshi", size: 16)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .onTapGesture {
                                durationButtonIndex = 0
                            }

                
            }
            .padding(10)
            .frame(width: 250, alignment: .center)
            .background(durationButtonIndex == 0 ? Color.blue: Color.gray)
            .cornerRadius(25)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 0.5)
                    .stroke(.black, lineWidth: 1)
            )
            HStack(alignment: .center, spacing: 10) {
                Text("1 Month")
                    .font(
                        Font.custom("Satoshi", size: 16)
                            .weight(.medium)
                    )
                    
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .onTapGesture {
                                durationButtonIndex = 1
                            }
                
            }
            .padding(10)
            .frame(width: 250, alignment: .center)
            .background(durationButtonIndex == 1 ? Color.blue: Color.gray)
            .cornerRadius(25)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 0.5)
                    .stroke(.black, lineWidth: 1)
            )
            HStack(alignment: .center, spacing: 10) {
                Text("Custom")
                    .font(
                        Font.custom("Satoshi", size: 16)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .onTapGesture {
                                durationButtonIndex = 2
                            }
                
            }
            .padding(10)
            .frame(width: 250, alignment: .center)
            .background(durationButtonIndex == 2 ? Color.blue: Color.gray)
            .cornerRadius(25)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 0.5)
                    .stroke(.black, lineWidth: 1)
            )
        }
        
        
        Text("What do you want to work on?")
            .font(
                Font.custom("Satoshi", size: 20)
                    .weight(.medium)
            )
            .multilineTextAlignment(.center)
            .foregroundColor(.black)
        
        
        
        
        HStack(alignment: .center, spacing: 10) {
            TextField("Enter text", text: $inputTextTopic)
                .padding()
                .background(Color.white)
                .cornerRadius(8)

        }
        .padding(10)
        .frame(width: 250, alignment: .center)
        .background(Color(red: 0.51, green: 0.51, blue: 0.51))

        .cornerRadius(25)

        HStack(alignment: .center, spacing: 24) {
            NavigationLink(destination: CreateChallengeReview(inputTextName: inputTextName , inputTextTopic: inputTextTopic, selectedIndex: durationButtonIndex, friend: friend)) {
                Text("Continue")
                    .font(.custom("Satoshi", size: 16).weight(.medium))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 10)
            .background(Color(red: 0.23, green: 0.23, blue: 0.23))
            .cornerRadius(25)
            
            // Add other elements here if needed
        }

        
        .padding(0)
        
        
        
    }
    
}

#Preview {
    CreateChallengeStep2()
}
