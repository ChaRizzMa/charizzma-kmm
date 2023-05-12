import SwiftUI
import shared

struct ContentView: View {
	let greet = Greeting().greet()
    @State var inputText = ""
    @State private var editing = false

	var body: some View {
        VStack() {
            Text("Title Main").font(.TITLE).foregroundColor(.theme.primary)
            Text("Subtitle").font(.SUBTITLE)
            Text(greet).font(.BODY)
            Text("Hello! World").font(.BODY).foregroundColor(.theme.primary)
            Button("Primary") {
                // on press
            }.buttonStyle(PrimaryButtonStyle())
            Button("Outlined Button") {
                // on press
            }.buttonStyle(SecondaryButtonStyle())
            Button("Faded Button") {
                // on press
            }.buttonStyle(FadedButtonStyle())
            
        }
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
