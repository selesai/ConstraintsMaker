//
//  ConstraintsMaker.swift
//  ToolKit
//
//  Created by Marsudi Widodo on 27/09/24.
//

import UIKit

public class ConstraintsMaker {
    public let view: UIView
    
    init(view: UIView) {
        self.view = view
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @discardableResult
    public func apply(
        for type: ConstraintsType,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> Self {
        switch type {
        case let .top(to):
            top(to: to, constant: constant, priority: priority, relation: relation)
        case let .bottom(to):
            bottom(to: to, constant: constant, priority: priority, relation: relation)
        case let .leading(to):
            leading(to: to, constant: constant, priority: priority, relation: relation)
        case let .trailing(to):
            trailing(to: to, constant: constant, priority: priority, relation: relation)
        case let .left(to):
            left(to: to, constant: constant, priority: priority, relation: relation)
        case let .right(to):
            right(to: to, constant: constant, priority: priority, relation: relation)
        case let .firstBaseline(to):
            firstBaseline(to: to, constant: constant, priority: priority, relation: relation)
        case let .lastBaseline(to):
            lastBaseline(to: to, constant: constant, priority: priority, relation: relation)
        case let .width(to):
            width(to: to, constant: constant, priority: priority, relation: relation)
        case let .height(to):
            height(to: to, constant: constant, priority: priority, relation: relation)
        case let .centerX(to):
            centerX(to: to, constant: constant, priority: priority, relation: relation)
        case let .centerY(to):
            centerY(to: to, constant: constant, priority: priority, relation: relation)
        case let .size(size):
            switch size {
            case let .width(constant):
                width(constant, priority: priority, relation: relation)
            case let .height(constant):
                height(constant, priority: priority, relation: relation)
            }
        }
        return self
    }
    @discardableResult
    public func centerInSuperview() -> Self {
        guard let superview = view.superview else { return self }
        return apply(for: .centerX(to: superview.centerXAnchor))
            .apply(for: .centerY(to: superview.centerYAnchor))
        return self
    }
    
    @discardableResult
    public func pinEdges(
        to superview: UIView,
        with insets: UIEdgeInsets = .zero
    ) -> Self {
        return apply(for: .top(to: superview.topAnchor), constant: insets.top)
            .apply(for: .leading(to: superview.leadingAnchor), constant: insets.left)
            .apply(for: .trailing(to: superview.trailingAnchor), constant: -insets.right)
            .apply(for: .bottom(to: superview.bottomAnchor), constant: -insets.bottom)
    }
    
    @discardableResult
    public func pinEdges(
        to layoutGuide: UILayoutGuide,
        with insets: UIEdgeInsets = .zero
    ) -> Self {
        return apply(for: .top(to: layoutGuide.topAnchor), constant: insets.top)
            .apply(for: .leading(to: layoutGuide.leadingAnchor), constant: insets.left)
            .apply(for: .trailing(to: layoutGuide.trailingAnchor), constant: -insets.right)
            .apply(for: .bottom(to: layoutGuide.bottomAnchor), constant: -insets.bottom)
    }
    
    @discardableResult
    public func pinToSafeArea(
        of viewController: UIViewController,
        with insets: UIEdgeInsets = .zero
    ) -> Self {
        return pinEdges(to: viewController.view.safeAreaLayoutGuide, with: insets)
    }
}

public extension ConstraintsMaker {
    public enum ConstraintsType {
        case top(to: NSLayoutYAxisAnchor)
        case bottom(to: NSLayoutYAxisAnchor)
        case leading(to: NSLayoutXAxisAnchor)
        case trailing(to: NSLayoutXAxisAnchor)
        case left(to: NSLayoutXAxisAnchor)
        case right(to: NSLayoutXAxisAnchor)
        case firstBaseline(to: NSLayoutYAxisAnchor)
        case lastBaseline(to: NSLayoutYAxisAnchor)
        case width(to: NSLayoutDimension)
        case height(to: NSLayoutDimension)
        case centerX(to: NSLayoutXAxisAnchor)
        case centerY(to: NSLayoutYAxisAnchor)
        case size(for: Size)
        
        public enum Size {
            case width(constant: CGFloat)
            case height(constant: CGFloat)
        }
    }
}

public extension UIView {
    var makeConstraints: ConstraintsMaker {
        return ConstraintsMaker(view: self)
    }
    
    func attach(to superview: UIView) -> ConstraintsMaker {
        superview.addSubview(self)
        return ConstraintsMaker(view: self)
    }
}
