//
//  ContentView.swift
//  Seeds
//
//  Created by Aamhish Rao on 1/13/24.
//

import SwiftUI

struct ContentView: View {
    func currentDateString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: Date())
    }

    var body: some View {
         NavigationView {
             VStack {
                 Image(systemName: "globe")
                     .imageScale(.large)
                     .foregroundStyle(.tint)
                 Text("Hello, user!")
                     .padding()

                 Text("Today's Date")
                     .font(Font.custom("Satoshi", size: 24).weight(.medium))
                     .foregroundColor(.black)


                 HStack(alignment: .center, spacing: 24) {
                     NavigationLink(destination: CreateChallengeStep1()) {
                         Text("Do a Challenge")
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
                 Text(currentDateString())

             }
         }
     }
}

#Preview {
    ContentView()
}
