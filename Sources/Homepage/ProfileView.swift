import TokamakDOM
import TokamakStaticHTML

struct ProfileView: View {
    func linkText(url: String, text: String) -> some View {
        HTML("a", ["href": url, "style": "text-decoration: none;"]) {
            Text(text)
                .foregroundColor(Color.init(hex: "58a0f2"))
        }
    }

    var body: some View {
        return VStack {
            Image("icon.png", bundle: .module)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            Text("Sumito Izumita")
                .font(.largeTitle)
                .padding()
            HStack {
                linkText(url: "https://twitter.com/sizumita", text: "Twitter")
                    .padding()
                linkText(url: "https://github.com/sizumita", text: "Github")
                    .padding()
            }
        }
    }
}
