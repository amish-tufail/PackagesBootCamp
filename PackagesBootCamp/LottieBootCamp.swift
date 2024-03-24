//
//  LottieBootCamp.swift
//  PackagesBootCamp
//
//  Created by Amish Tufail on 24/03/2024.
//

import SwiftUI
import Lottie

struct LottieBootCamp: View {
    // This way you can make it generic and call it anywhere and wont be needing to import Lottie everywehre
    var fileName: String = "Star.json"
    var loop: LottieLoopMode = .playOnce
    var body: some View {
        VStack {
            LottieView(animation: .named(fileName))
                .playbackMode(.playing(.toProgress(1, loopMode: .loop)))
                .frame(width: 50.0, height: 50.0)
            LottieView(animation: .named("Star.json"))
                .playbackMode(.playing(.toProgress(0.50, loopMode: loop)))
                .frame(width: 50.0, height: 50.0)
            LottieView(animation: .named("Star.json"))
                .playbackMode(.playing(.toProgress(1, loopMode: .playOnce)))
                .animationDidFinish({ completed in
                    // Execute code after it is done animatinh
                })
                .frame(width: 50.0, height: 50.0)
            LottieView(animation: .named("Star.json"))
                .playbackMode(.playing(.toProgress(1, loopMode: .loop)))
                .configure({ LottieAnimationView in
                    LottieAnimationView.contentMode = .scaleToFill
                })
                .frame(width: 50.0, height: 50.0)
        }
    }
}

#Preview {
    LottieBootCamp()
}
