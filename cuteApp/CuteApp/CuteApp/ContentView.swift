import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                // Background image with overlay
                Image("bunnies")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(ImageOverlay(), alignment: .center)
                
                // VStack for content
                VStack {
                    Spacer()
                    
                    // Button to navigate to TodoListView
                    NavigationLink(destination: TodoListView()) {
                        Text("View To-Do List")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding()
                            .background(Color(red: 0.983, green: 0.402, blue: 0.404))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    .offset(y: -80) // Adjust offset to move the button up
                    
                    Spacer()
                }
                .navigationBarTitle("Home")
            }
        }
    }
}

struct ImageOverlay: View {
    var body: some View {
        VStack {
            Text("Welcome to TaskBunny")
                .font(.title)
                .fontWeight(.semibold)
                .padding(12)
                .foregroundColor(.white)
        }
        .background(Color(red: 0.995, green: 0.605, blue: 0.567))
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
        .offset(y: -150)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
