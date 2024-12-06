//
//  ConstraintsMaker+Constraint.swift
//  AlphaConstraintsMaker
//
//  Created by Marsudi Widodo on 06/12/24.
//

import UIKit

extension ConstraintsMaker {
    @discardableResult
    public func top(
        to anchor: NSLayoutYAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.topAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.topAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func bottom(
        to anchor: NSLayoutYAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.bottomAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func leading(
        to anchor: NSLayoutXAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.leadingAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.leadingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.leadingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func left(
        to anchor: NSLayoutXAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.leftAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.leftAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.leftAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func trailing(
        to anchor: NSLayoutXAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.trailingAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.trailingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.trailingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func right(
        to anchor: NSLayoutXAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.rightAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.rightAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.rightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func firstBaseline(
        to anchor: NSLayoutYAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.firstBaselineAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.firstBaselineAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.firstBaselineAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func lastBaseline(
        to anchor: NSLayoutYAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.lastBaselineAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.lastBaselineAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.lastBaselineAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func width(
        _ constant: CGFloat,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.widthAnchor.constraint(equalToConstant: constant)
        case .lessThanOrEqual:
            constraint = view.widthAnchor.constraint(lessThanOrEqualToConstant: constant)
        case .greaterThanOrEqual:
            constraint = view.widthAnchor.constraint(greaterThanOrEqualToConstant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func width(
        to anchor: NSLayoutDimension,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.widthAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.widthAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.widthAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func height(
        _ constant: CGFloat,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.heightAnchor.constraint(equalToConstant: constant)
        case .lessThanOrEqual:
            constraint = view.heightAnchor.constraint(lessThanOrEqualToConstant: constant)
        case .greaterThanOrEqual:
            constraint = view.heightAnchor.constraint(greaterThanOrEqualToConstant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func height(
        to anchor: NSLayoutDimension,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        
        switch relation {
        case .equal:
            constraint = view.heightAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.heightAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.heightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func centerX(
        to anchor: NSLayoutXAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = view.centerXAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.centerXAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.centerXAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func centerY(
        to anchor: NSLayoutYAxisAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority? = nil,
        relation: NSLayoutConstraint.Relation = .equal
    ) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = view.centerYAnchor.constraint(equalTo: anchor, constant: constant)
        case .lessThanOrEqual:
            constraint = view.centerYAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = view.centerYAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        }
        if let priority = priority { constraint.priority = priority }
        constraint.isActive = true
        return constraint
    }
}
