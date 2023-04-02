//
//  Animate.swift
//  
//
//  Created by Mihael Isaev on 02.04.2023.
//

import Web
import JavaScriptKit

private var animate: Animate!

public class Animate {
    private static var shared: Animate {
        guard animate == nil else {
            return animate
        }
        animate = Animate()
        return animate
    }
    
    public static func configure() {
        let style = Link().rel(.stylesheet).href("/css/animate.min.css")
        WebApp.shared.document.head.appendChild(style)
    }
}

extension Class {
    // MARK: Animations
    
    static var animated: Class { "animate__animated" }
    
    // Attention seekers
    
    static var bounce: Class { "animate__bounce" }
    static var flash: Class { "animate__flash" }
    static var pulse: Class { "animate__pulse" }
    static var rubberBand: Class { "animate__rubberBand" }
    static var shakeX: Class { "animate__shakeX" }
    static var shakeY: Class { "animate__shakeY" }
    static var headShake: Class { "animate__headShake" }
    static var swing: Class { "animate__swing" }
    static var tada: Class { "animate__tada" }
    static var wobble: Class { "animate__wobble" }
    static var jello: Class { "animate__jello" }
    static var heartBeat: Class { "animate__heartBeat" }
    
    // Back entrances
    
    static var backInDown: Class { "animate__backInDown" }
    static var backInLeft: Class { "animate__backInLeft" }
    static var backInRight: Class { "animate__backInRight" }
    static var backInUp: Class { "animate__backInUp" }
    
    // Back exits
    
    static var backOutDown: Class { "animate__backOutDown" }
    static var backOutLeft: Class { "animate__backOutLeft" }
    static var backOutRight: Class { "animate__backOutRight" }
    static var backOutUp: Class { "animate__backOutUp" }
    
    // Bouncing entrances
    
    static var bounceIn: Class { "animate__bounceIn" }
    static var bounceInDown: Class { "animate__bounceInDown" }
    static var bounceInLeft: Class { "animate__bounceInLeft" }
    static var bounceInRight: Class { "animate__bounceInRight" }
    static var bounceInUp: Class { "animate__bounceInUp" }
    
    // Bouncing exits
    
    static var bounceOut: Class { "animate__bounceOut" }
    static var bounceOutDown: Class { "animate__bounceOutDown" }
    static var bounceOutLeft: Class { "animate__bounceOutLeft" }
    static var bounceOutRight: Class { "animate__bounceOutRight" }
    static var bounceOutUp: Class { "animate__bounceOutUp" }
    
    // Fading entrances
    
    static var fadeIn: Class { "animate__fadeIn" }
    static var fadeInDown: Class { "animate__fadeInDown" }
    static var fadeInDownBig: Class { "animate__fadeInDownBig" }
    static var fadeInLeft: Class { "animate__fadeInLeft" }
    static var fadeInLeftBig: Class { "animate__fadeInLeftBig" }
    static var fadeInRight: Class { "animate__fadeInRight" }
    static var fadeInRightBig: Class { "animate__fadeInRightBig" }
    static var fadeInUp: Class { "animate__fadeInUp" }
    static var fadeInUpBig: Class { "animate__fadeInUpBig" }
    static var fadeInTopLeft: Class { "animate__fadeInTopLeft" }
    static var fadeInTopRight: Class { "animate__fadeInTopRight" }
    static var fadeInBottomLeft: Class { "animate__fadeInBottomLeft" }
    static var fadeInBottomRight: Class { "animate__fadeInBottomRight" }
    
    // Fading exits
    
    static var fadeOut: Class { "animate__fadeOut" }
    static var fadeOutDown: Class { "animate__fadeOutDown" }
    static var fadeOutDownBig: Class { "animate__fadeOutDownBig" }
    static var fadeOutLeft: Class { "animate__fadeOutLeft" }
    static var fadeOutLeftBig: Class { "animate__fadeOutLeftBig" }
    static var fadeOutRight: Class { "animate__fadeOutRight" }
    static var fadeOutRightBig: Class { "animate__fadeOutRightBig" }
    static var fadeOutUp: Class { "animate__fadeOutUp" }
    static var fadeOutUpBig: Class { "animate__fadeOutUpBig" }
    static var fadeOutTopLeft: Class { "animate__fadeOutTopLeft" }
    static var fadeOutTopRight: Class { "animate__fadeOutTopRight" }
    static var fadeOutBottomRight: Class { "animate__fadeOutBottomRight" }
    static var fadeOutBottomLeft: Class { "animate__fadeOutBottomLeft" }
    
    // Flippers
    
    static var flip: Class { "animate__flip" }
    static var flipInX: Class { "animate__flipInX" }
    static var flipInY: Class { "animate__flipInY" }
    static var flipOutX: Class { "animate__flipOutX" }
    static var flipOutY: Class { "animate__flipOutY" }
    
    // Lightspeed
    
    static var lightSpeedInRight: Class { "animate__lightSpeedInRight" }
    static var lightSpeedInLeft: Class { "animate__lightSpeedInLeft" }
    static var lightSpeedOutRight: Class { "animate__lightSpeedOutRight" }
    static var lightSpeedOutLeft: Class { "animate__lightSpeedOutLeft" }
    
    // Rotating entrances
    
    static var rotateIn: Class { "animate__rotateIn" }
    static var rotateInDownLeft: Class { "animate__rotateInDownLeft" }
    static var rotateInDownRight: Class { "animate__rotateInDownRight" }
    static var rotateInUpLeft: Class { "animate__rotateInUpLeft" }
    static var rotateInUpRight: Class { "animate__rotateInUpRight" }
    
    // Rotating exits
    
    static var rotateOut: Class { "animate__rotateOut" }
    static var rotateOutDownLeft: Class { "animate__rotateOutDownLeft" }
    static var rotateOutDownRight: Class { "animate__rotateOutDownRight" }
    static var rotateOutUpLeft: Class { "animate__rotateOutUpLeft" }
    static var rotateOutUpRight: Class { "animate__rotateOutUpRight" }
    
    // Specials
    
    static var hinge: Class { "animate__hinge" }
    static var jackInTheBox: Class { "animate__jackInTheBox" }
    static var rollIn: Class { "animate__rollIn" }
    static var rollOut: Class { "animate__rollOut" }
    
    // Zooming entrances
    
    static var zoomIn: Class { "animate__zoomIn" }
    static var zoomInDown: Class { "animate__zoomInDown" }
    static var zoomInLeft: Class { "animate__zoomInLeft" }
    static var zoomInRight: Class { "animate__zoomInRight" }
    static var zoomInUp: Class { "animate__zoomInUp" }
    
    // Zooming exits
    
    static var zoomOut: Class { "animate__zoomOut" }
    static var zoomOutDown: Class { "animate__zoomOutDown" }
    static var zoomOutLeft: Class { "animate__zoomOutLeft" }
    static var zoomOutRight: Class { "animate__zoomOutRight" }
    static var zoomOutUp: Class { "animate__zoomOutUp" }
    
    // Sliding entrances
    
    static var slideInDown: Class { "animate__slideInDown" }
    static var slideInLeft: Class { "animate__slideInLeft" }
    static var slideInRight: Class { "animate__slideInRight" }
    static var slideInUp: Class { "animate__slideInUp" }
    
    // Sliding exits
    
    static var slideOutDown: Class { "animate__slideOutDown" }
    static var slideOutLeft: Class { "animate__slideOutLeft" }
    static var slideOutRight: Class { "animate__slideOutRight" }
    static var slideOutUp: Class { "animate__slideOutUp" }
}

public enum AnimationType {
    case bounce
    case flash
    case pulse
    case rubberBand
    case shakeX
    case shakeY
    case headShake
    case swing
    case tada
    case wobble
    case jello
    case heartBeat
    case backInDown
    case backInLeft
    case backInRight
    case backInUp
    case backOutDown
    case backOutLeft
    case backOutRight
    case backOutUp
    case bounceIn
    case bounceInDown
    case bounceInLeft
    case bounceInRight
    case bounceInUp
    case bounceOut
    case bounceOutDown
    case bounceOutLeft
    case bounceOutRight
    case bounceOutUp
    case fadeIn
    case fadeInDown
    case fadeInDownBig
    case fadeInLeft
    case fadeInLeftBig
    case fadeInRight
    case fadeInRightBig
    case fadeInUp
    case fadeInUpBig
    case fadeInTopLeft
    case fadeInTopRight
    case fadeInBottomLeft
    case fadeInBottomRight
    case fadeOut
    case fadeOutDown
    case fadeOutDownBig
    case fadeOutLeft
    case fadeOutLeftBig
    case fadeOutRight
    case fadeOutRightBig
    case fadeOutUp
    case fadeOutUpBig
    case fadeOutTopLeft
    case fadeOutTopRight
    case fadeOutBottomRight
    case fadeOutBottomLeft
    case flip
    case flipInX
    case flipInY
    case flipOutX
    case flipOutY
    case lightSpeedInRight
    case lightSpeedInLeft
    case lightSpeedOutRight
    case lightSpeedOutLeft
    case rotateIn
    case rotateInDownLeft
    case rotateInDownRight
    case rotateInUpLeft
    case rotateInUpRight
    case rotateOut
    case rotateOutDownLeft
    case rotateOutDownRight
    case rotateOutUpLeft
    case rotateOutUpRight
    case hinge
    case jackInTheBox
    case rollIn
    case rollOut
    case zoomIn
    case zoomInDown
    case zoomInLeft
    case zoomInRight
    case zoomInUp
    case zoomOut
    case zoomOutDown
    case zoomOutLeft
    case zoomOutRight
    case zoomOutUp
    case slideInDown
    case slideInLeft
    case slideInRight
    case slideInUp
    case slideOutDown
    case slideOutLeft
    case slideOutRight
    case slideOutUp
    
    var `class`: Class {
        switch self {
        case .bounce: return .bounce
        case .flash: return .flash
        case .pulse: return .pulse
        case .rubberBand: return .rubberBand
        case .shakeX: return .shakeX
        case .shakeY: return .shakeY
        case .headShake: return .headShake
        case .swing: return .swing
        case .tada: return .tada
        case .wobble: return .wobble
        case .jello: return .jello
        case .heartBeat: return .heartBeat
        case .backInDown: return .backInDown
        case .backInLeft: return .backInLeft
        case .backInRight: return .backInRight
        case .backInUp: return .backInUp
        case .backOutDown: return .backOutDown
        case .backOutLeft: return .backOutLeft
        case .backOutRight: return .backOutRight
        case .backOutUp: return .backOutUp
        case .bounceIn: return .bounceIn
        case .bounceInDown: return .bounceInDown
        case .bounceInLeft: return .bounceInLeft
        case .bounceInRight: return .bounceInRight
        case .bounceInUp: return .bounceInUp
        case .bounceOut: return .bounceOut
        case .bounceOutDown: return .bounceOutDown
        case .bounceOutLeft: return .bounceOutLeft
        case .bounceOutRight: return .bounceOutRight
        case .bounceOutUp: return .bounceOutUp
        case .fadeIn: return .fadeIn
        case .fadeInDown: return .fadeInDown
        case .fadeInDownBig: return .fadeInDownBig
        case .fadeInLeft: return .fadeInLeft
        case .fadeInLeftBig: return .fadeInLeftBig
        case .fadeInRight: return .fadeInRight
        case .fadeInRightBig: return .fadeInRightBig
        case .fadeInUp: return .fadeInUp
        case .fadeInUpBig: return .fadeInUpBig
        case .fadeInTopLeft: return .fadeInTopLeft
        case .fadeInTopRight: return .fadeInTopRight
        case .fadeInBottomLeft: return .fadeInBottomLeft
        case .fadeInBottomRight: return .fadeInBottomRight
        case .fadeOut: return .fadeOut
        case .fadeOutDown: return .fadeOutDown
        case .fadeOutDownBig: return .fadeOutDownBig
        case .fadeOutLeft: return .fadeOutLeft
        case .fadeOutLeftBig: return .fadeOutLeftBig
        case .fadeOutRight: return .fadeOutRight
        case .fadeOutRightBig: return .fadeOutRightBig
        case .fadeOutUp: return .fadeOutUp
        case .fadeOutUpBig: return .fadeOutUpBig
        case .fadeOutTopLeft: return .fadeOutTopLeft
        case .fadeOutTopRight: return .fadeOutTopRight
        case .fadeOutBottomRight: return .fadeOutBottomRight
        case .fadeOutBottomLeft: return .fadeOutBottomLeft
        case .flip: return .flip
        case .flipInX: return .flipInX
        case .flipInY: return .flipInY
        case .flipOutX: return .flipOutX
        case .flipOutY: return .flipOutY
        case .lightSpeedInRight: return .lightSpeedInRight
        case .lightSpeedInLeft: return .lightSpeedInLeft
        case .lightSpeedOutRight: return .lightSpeedOutRight
        case .lightSpeedOutLeft: return .lightSpeedOutLeft
        case .rotateIn: return .rotateIn
        case .rotateInDownLeft: return .rotateInDownLeft
        case .rotateInDownRight: return .rotateInDownRight
        case .rotateInUpLeft: return .rotateInUpLeft
        case .rotateInUpRight: return .rotateInUpRight
        case .rotateOut: return .rotateOut
        case .rotateOutDownLeft: return .rotateOutDownLeft
        case .rotateOutDownRight: return .rotateOutDownRight
        case .rotateOutUpLeft: return .rotateOutUpLeft
        case .rotateOutUpRight: return .rotateOutUpRight
        case .hinge: return .hinge
        case .jackInTheBox: return .jackInTheBox
        case .rollIn: return .rollIn
        case .rollOut: return .rollOut
        case .zoomIn: return .zoomIn
        case .zoomInDown: return .zoomInDown
        case .zoomInLeft: return .zoomInLeft
        case .zoomInRight: return .zoomInRight
        case .zoomInUp: return .zoomInUp
        case .zoomOut: return .zoomOut
        case .zoomOutDown: return .zoomOutDown
        case .zoomOutLeft: return .zoomOutLeft
        case .zoomOutRight: return .zoomOutRight
        case .zoomOutUp: return .zoomOutUp
        case .slideInDown: return .slideInDown
        case .slideInLeft: return .slideInLeft
        case .slideInRight: return .slideInRight
        case .slideInUp: return .slideInUp
        case .slideOutDown: return .slideOutDown
        case .slideOutLeft: return .slideOutLeft
        case .slideOutRight: return .slideOutRight
        case .slideOutUp: return .slideOutUp
        }
    }
}

public struct DelayValue: ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral {
    let value: Float
    
    public init(floatLiteral value: Float) {
        self.value = value
    }
    
    public init(integerLiteral value: UInt) {
        self.value = Float(value)
    }
    
    public static var delay0s: Self { 0 }
    public static var delay1s: Self { 1 }
    public static var delay2s: Self { 2 }
    public static var delay3s: Self { 3 }
    public static var delay4s: Self { 4 }
    public static var delay5s: Self { 5 }
}

public struct DurationValue: ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral {
    let value: Float
    
    public init(floatLiteral value: Float) {
        self.value = value
    }
    
    public init(integerLiteral value: UInt) {
        self.value = Float(value)
    }
    
    public static var slow: Self { 2 }
    public static var slower: Self { 3 }
    public static var fast: Self { 0.8 }
    public static var faster: Self { 0.5 }
}

public struct RepeatValue: ExpressibleByIntegerLiteral {
    let value: Int
    
    private init (_ value: Int) {
        self.value = value
    }
    
    public init(integerLiteral value: Int) {
        if value >= 0 {
            self.value = value
        } else {
            self.value = 0
        }
    }
    
    public static var repeat1: Self { 1 }
    public static var repeat2: Self { 2 }
    public static var repeat3: Self { 3 }
    public static var infinite: Self { .init(-1) }
}

extension BaseElement {
    @discardableResult
    public func animate(
        _ type: AnimationType,
        delay: DelayValue? = nil,
        duration: DurationValue? = nil,
        repeat: RepeatValue? = nil,
        completionHandler: (() -> Void)? = nil
    ) -> Self {
        if let delay {
            self.animateDelay(delay)
        }
        if let duration {
            self.animateDuration(duration)
        }
        if let `repeat` {
            self.animateRepeat(`repeat`)
        }
        return self.class([.animated, type.class]).addEventListener(.animationEnd, options: .init(capture: false, once: true, passive: false)) {
            if delay != nil {
                self.removeAnimateDelay()
            }
            if duration != nil {
                self.removeAnimateDuration()
            }
            if `repeat` != nil {
                self.removeAnimateRepeat()
            }
            self.removeClass(.animated)
            self.removeClass(type.class)
            completionHandler?()
        }
    }
    
    @discardableResult
    public func animate(
        _ type: AnimationType,
        delay: DelayValue? = nil,
        duration: DurationValue? = nil,
        repeat: RepeatValue? = nil,
        completionHandler: @escaping (Self) -> Void
    ) -> Self {
        animate(type, delay: delay, duration: duration, repeat: `repeat`) {
            completionHandler(self)
        }
    }
    
    @discardableResult
    public func animateDuration(_ value: DurationValue) -> Self {
        self.domElement.style
            .setProperty.function?
            .callAsFunction(optionalThis: self.domElement.style.object, arguments: ["--animate-duration", "\(value.value)s"])
        return self
    }
    
    @discardableResult
    public func removeAnimateDuration() -> Self {
        self.domElement.style
            .removeProperty.function?
            .callAsFunction(optionalThis: self.domElement.style.object, arguments: ["--animate-duration"])
        return self
    }
    
    @discardableResult
    public func animateDelay(_ value: DelayValue) -> Self {
        self.domElement.style
            .setProperty.function?
            .callAsFunction(optionalThis: self.domElement.style.object, arguments: ["--animate-delay", "\(value.value)s"])
        return self
    }
    
    @discardableResult
    public func removeAnimateDelay() -> Self {
        self.domElement.style
            .removeProperty.function?
            .callAsFunction(optionalThis: self.domElement.style.object, arguments: ["--animate-delay"])
        return self
    }
    
    @discardableResult
    public func animateRepeat(_ value: RepeatValue) -> Self {
        let val: String
        if value.value == -1 {
            val = "infinite"
        } else {
            val = "\(value.value)"
        }
        self.domElement.style
            .setProperty.function?
            .callAsFunction(optionalThis: self.domElement.style.object, arguments: ["--animate-repeat", val])
        return self
    }
    
    @discardableResult
    public func removeAnimateRepeat() -> Self {
        self.domElement.style
            .removeProperty.function?
            .callAsFunction(optionalThis: self.domElement.style.object, arguments: ["--animate-repeat"])
        return self
    }
}
