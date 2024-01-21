import Foundation
import Combine

class PostViewModel: ObservableObject {
    @Published var posts: [ChallengeModel] = []
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        guard let url = URL(string: "http://localhost:8080/api/challenges") else {
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [ChallengeModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error fetching posts: \(error)")
                }
            }, receiveValue: { [weak self] posts in
                self?.posts = posts
            })
            .store(in: &cancellables)
    }
    
    func currentDateString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: Date())
    }
    
    private var cancellables: Set<AnyCancellable> = []
}
