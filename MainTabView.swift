import SwiftUI

struct MainTabView: View {
    @State private var showPlayer = false

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Accueil")
                    }

                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Recherche")
                    }

                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.list")
                        Text("Bibliothèque")
                    }
            }

            MiniPlayer(showPlayer: $showPlayer)
        }
        .sheet(isPresented: $showPlayer) {
            NowPlayingView()
        }
    }
}
