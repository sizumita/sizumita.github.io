import TokamakDOM

struct IntroductionView: View {
    var body: some View {

        VStack {
            Text("長野県安曇野市在住")
                .padding()
            Text("2003年5月26日生まれの17歳です。")
                .padding()
            Text("関数型言語が好きですが、Pythonが一番書けます。最近はElixirを書いています。")
                .padding()
            Text("東京の大学目指して頑張ってます。電通大とか。")
                .padding()
        }
    }
}
