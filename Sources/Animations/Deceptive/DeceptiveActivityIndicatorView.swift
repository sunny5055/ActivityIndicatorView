// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class DeceptiveActivityIndicatorView: ActivityIndicatorView {
    private lazy var deceptive: DeceptiveView = {
        let startView = DeceptiveView(frame: .zero)
        startView.scale(to: frame.size)
        //The background color for this custom activity indicator should always be solid
        //Otherwise, the native ActivityIndicatorView animation will be visible
        startView.backgroundColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1)
        return startView
    }()

    override var timeline: Timeline? {
        return DeceptiveTimeline(view: deceptive, duration: 2, repeatCount: .greatestFiniteMagnitude)
    }
    
    override func createView() -> UIView {
        return deceptive
    }
}