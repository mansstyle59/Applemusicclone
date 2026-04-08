import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(height: 180)
                        .overlay(Text("Recommandé").font(.largeTitle).bold())

                    WebView(url: URL(string: "https://whjjlqznrwroiwrpmoum.supabase.co/functions/v1/jellyfin-server")!)
                        .frame(height: 500)
                }
                .padding()
            }
            .navigationTitle("Explorer")
        }
    }
}
