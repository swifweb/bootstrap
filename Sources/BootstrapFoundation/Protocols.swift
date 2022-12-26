//
//  Protocols.swift
//  
//
//  Created by Mihael Isaev on 08.12.2022.
//

import Web

// MARK: - Active

public protocol ActiveAttrable: ClassAttrable {
    @discardableResult
    func active(_ value: Bool) -> Self
    @discardableResult
    func active<S>(_ value: S) -> Self where S: StateConvertible, S.Value == Bool
}

extension ActiveAttrable {
    /// [More info →](https://getbootstrap.com/docs/5.0/components/breadcrumb/)
    @discardableResult
    public func active(_ value: Bool) -> Self {
        if value {
            return self.class(.active)
        } else {
            return self.removeClass(.active)
        }
    }
    
    /// [More info →](https://getbootstrap.com/docs/5.0/components/breadcrumb/)
    @discardableResult
    public func active<S>(_ value: S) -> Self where S: StateConvertible, S.Value == Bool {
        active(value.stateValue.wrappedValue)
        value.stateValue.listen { self.active($0) }
        return self
    }
}

extension Button: ActiveAttrable {}
extension Li: ActiveAttrable {}

// MARK: Breadcrumbs

public protocol Breadcrumbable: DOMElement, CSSRulable, ClassAttrable {
    @discardableResult
    func breadcrumbDivider(_ value: String) -> Self
    
    @discardableResult
    func breadcrumb() -> Self
    
    @discardableResult
    func breadcrumbItem() -> Self
}

extension Breadcrumbable {
    /// [More info →](https://getbootstrap.com/docs/5.0/components/breadcrumb/)
    @discardableResult
    public func breadcrumbDivider(_ value: String) -> Self {
        custom("--bs-breadcrumb-divider", "'\(value)'", force: true)
    }
    
    /// [More info →](https://getbootstrap.com/docs/5.0/components/breadcrumb/)
    @discardableResult
    public func breadcrumb() -> Self {
        self.class(.breadcrumb)
    }
    
    @discardableResult
    public func breadcrumbItem() -> Self {
        self.class(.breadcrumbItem)
    }
}

extension BaseElement: Breadcrumbable {}

// MARK: Data-BS

public protocol DataBSable: DOMElement, CSSRulable, ClassAttrable {
    @discardableResult
    func dataBSToggle(_ value: String) -> Self
    
    @discardableResult
    func dataBSTarget(_ value: String) -> Self
    
    @discardableResult
    func dataBSParent(_ value: String) -> Self
    
    @discardableResult
    func dataBSDismiss(_ value: String) -> Self
}

extension DataBSable {
    @discardableResult
    public func dataBSToggle(_ value: String) -> Self {
        attribute("data-bs-toggle", value)
    }
    
    @discardableResult
    public func dataBSTarget(_ value: String) -> Self {
        attribute("data-bs-target", value)
    }
    
    @discardableResult
    public func dataBSParent(_ value: String) -> Self {
        attribute("data-bs-parent", value)
    }
    
    @discardableResult
    public func dataBSDismiss(_ value: String) -> Self {
        attribute("data-bs-dismiss", value)
    }
}

extension BaseElement: DataBSable {}
