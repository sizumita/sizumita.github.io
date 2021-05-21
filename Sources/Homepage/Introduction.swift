import TokamakDOM
import Foundation

struct IntroductionView: View {
    var body: some View {
        let calendar = Calendar(identifier: .gregorian)

        let birthday = calendar.date(from: DateComponents(year: 2003, month: 5, day: 26, hour: 0, minute: 0, second: 0))
        let elapsedDays = Calendar.current.dateComponents([.year], from: birthday!, to: Date()).year

        return VStack {
            Text("長野県安曇野市在住")
                .padding()
            Text("2003年5月26日生まれの" + String(elapsedDays!) + "歳です。")
                .padding()
            Text("関数型言語が好きですが、Pythonが一番書けます。最近はElixirを書いています。")
                .padding()
            Text("東京の大学目指して頑張ってます。電通大とか。")
                .padding()
        }
    }
}
