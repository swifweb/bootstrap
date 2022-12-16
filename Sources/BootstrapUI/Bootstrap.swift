//
//  Bootstrap.swift
//  
//
//  Created by Mihael Isaev on 19.11.2022.
//

import Web
@_exported import BootstrapFoundation

extension Button {
    public func primary() -> Button { self.class(.btnPrimary) }
    public func secondary() -> Button { self.class(.btnSecondary) }
    public func success() -> Button { self.class(.btnSuccess) }
    public func danger() -> Button { self.class(.btnDanger) }
    public func warning() -> Button { self.class(.btnWarning) }
    public func info() -> Button { self.class(.btnInfo) }
    public func light() -> Button { self.class(.btnLight) }
    public func dark() -> Button { self.class(.btnDark) }
    public func link() -> Button { self.class(.btnLink) }
    
    public func outlinePrimary() -> Button { self.class(.btnOutlinePrimary) }
    public func outlineSecondary() -> Button { self.class(.btnOutlineSecondary) }
    public func outlineSuccess() -> Button { self.class(.btnOutlineSuccess) }
    public func outlineDanger() -> Button { self.class(.btnOutlineDanger) }
    public func outlineWarning() -> Button { self.class(.btnOutlineWarning) }
    public func outlineInfo() -> Button { self.class(.btnOutlineInfo) }
    public func outlineLight() -> Button { self.class(.btnOutlineLight) }
    public func outlineDark() -> Button { self.class(.btnOutlineDark) }
    
    public func large() -> Button { self.class(.btnLarge) }
    public func small() -> Button { self.class(.btnSmall) }
    
    public func textNowrap() -> Button { self.class(.textNowrap) }
}

extension BaseElement {
    public func backgroundPrimary() -> Self { self.class(.bgPrimary) }
    public func backgroundSecondary() -> Self { self.class(.bgSecondary) }
    public func backgroundSuccess() -> Self { self.class(.bgSuccess) }
    public func backgroundDanger() -> Self { self.class(.bgDanger) }
    public func backgroundWarning() -> Self { self.class(.bgWarning) }
    public func backgroundInfo() -> Self { self.class(.bgInfo) }
    public func backgroundLight() -> Self { self.class(.bgLight) }
    public func backgroundDark() -> Self { self.class(.bgDark) }
}
