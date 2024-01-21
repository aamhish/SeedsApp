import SwiftUI

struct ContentView: View {
    @ObservedObject var postViewModel = PostViewModel()
    @State private var postIndex = 0

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

                if postViewModel.posts.isEmpty {
                    Text("No challenges in database")
                        .font(Font.custom("Satoshi", size: 20).weight(.medium))
                        .foregroundColor(.black)
                } else {
                    if postIndex >= 0 && postIndex < postViewModel.posts.count {
                        Text("Post \(postIndex + 1)")
                            .font(Font.custom("Satoshi", size: 24).weight(.medium))
                            .foregroundColor(.black)
                        Text(postViewModel.posts[postIndex].title)
                        Text(postViewModel.posts[postIndex].description)

                        HStack {
                            Button(action: {
                                if postIndex > 0 {
                                    postIndex -= 1
                                }
                            }) {
                                Text("Previous")
                            }
                            Spacer()
                            Button(action: {
                                if postIndex < postViewModel.posts.count - 1 {
                                    postIndex += 1
                                }
                            }) {
                                Text("Next")
                            }
                        }
                    }
                }

                Button(action: {
                    postViewModel.fetchPosts() // Refresh Button
                }) {
                    Text("Refresh")
                        .font(.custom("Satoshi", size: 16).weight(.medium))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 10)
                        .background(Color(red: 0.23, green: 0.23, blue: 0.23))
                        .cornerRadius(25)
                }

                Text(postViewModel.currentDateString())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
