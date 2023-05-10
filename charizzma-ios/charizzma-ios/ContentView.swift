import SwiftUI
import shared

struct ContentView: View {
	let greet = Greeting().greet()

	var body: some View {
        VStack() {
            Text(greet)
            Text("Hello! World").foregroundColor(Color.theme.primary)
            
            
        }
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
