import SwiftUI

struct NowPlayingView: View {
    @State private var progress: Double = 0.35

    var body: some View {
        ZStack {
            LinearGradient(colors: [.purple, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack(spacing: 25) {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 300, height: 300)

                Text("Titre Premium")
                    .font(.title)
                    .bold()

                Text("Artiste / Album")
                    .foregroundColor(.gray)

                Slider(value: $progress)

                HStack {
                    Text("1:24")
                    Spacer()
                    Text("3:45")
                }
                .font(.caption)

                HStack(spacing: 40) {
                    Image(systemName: "backward.fill")
                    Image(systemName: "play.circle.fill")
                        .font(.system(size: 65))
                    Image(systemName: "forward.fill")
                }
                .font(.title)
            }
            .padding()
        }
    }
}
