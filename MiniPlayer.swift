import SwiftUI

struct MiniPlayer: View {
    @Binding var showPlayer: Bool

    var body: some View {
        Button(action: { showPlayer = true }) {
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 45, height: 45)

                VStack(alignment: .leading) {
                    Text("Now Playing")
                        .bold()
                    Text("Apple Music Clone")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                Spacer()

                Image(systemName: "play.fill")
                Image(systemName: "forward.fill")
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(18)
            .padding()
        }
    }
}
