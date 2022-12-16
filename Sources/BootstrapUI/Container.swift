//
//  Container.swift
//  
//
//  Created by Mihael Isaev on 08.12.2022.
//

import Web
import BootstrapRaw

public class Container: Div {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public enum ContainerType: String {
        /// Sets a **max-width** at each responsive breakpoint
        ///
        /// 100% at Extra small `<576px`
        ///
        /// 540px at Small `≥576px`
        ///
        /// 720px at Medium `≥768px`
        ///
        /// 960px at Large `≥992px`
        ///
        /// 1140px at X-Large `≥1200px`
        ///
        /// 1320px at XX-Large `≥1400px`
        ///
        /// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/containers/)
        case `default`
        
        /// Has **width: 100%** until the specified breakpoint
        ///
        /// 100% at Extra small `100%`
        ///
        /// 540px at Small `540px`
        ///
        /// 720px at Medium `720px`
        ///
        /// 960px at Large `960px`
        ///
        /// 1140px at X-Large `1140px`
        ///
        /// 1320px at XX-Large `1320px`
        ///
        /// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/containers/)
        case small
        
        /// Has **width: 100%** until the specified breakpoint
        ///
        /// 100% at Extra small `100%`
        ///
        /// 540px at Small `100%`
        ///
        /// 720px at Medium `720px`
        ///
        /// 960px at Large `960px`
        ///
        /// 1140px at X-Large `1140px`
        ///
        /// 1320px at XX-Large `1320px`
        ///
        /// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/containers/)
        case medium
        
        /// Has **width: 100%** until the specified breakpoint
        ///
        /// 100% at Extra small `100%`
        ///
        /// 540px at Small `100%`
        ///
        /// 720px at Medium `100%`
        ///
        /// 960px at Large `960px`
        ///
        /// 1140px at X-Large `1140px`
        ///
        /// 1320px at XX-Large `1320px`
        ///
        /// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/containers/)
        case large
        
        /// Has **width: 100%** until the specified breakpoint
        ///
        /// 100% at Extra small `100%`
        ///
        /// 540px at Small `100%`
        ///
        /// 720px at Medium `100%`
        ///
        /// 960px at Large `100%`
        ///
        /// 1140px at X-Large `1140px`
        ///
        /// 1320px at XX-Large `1320px`
        ///
        /// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/containers/)
        case extraLarge
        
        /// Has **width: 100%** until the specified breakpoint
        ///
        /// 100% at Extra small `100%`
        ///
        /// 540px at Small `100%`
        ///
        /// 720px at Medium `100%`
        ///
        /// 960px at Large `100%`
        ///
        /// 1140px at X-Large `100%`
        ///
        /// 1320px at XX-Large `1320px`
        ///
        /// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/containers/)
        case extraExtraLarge
        
        /// Has **width: 100%** at all breakpoints
        ///
        /// 100% at Extra small `100%`
        ///
        /// 540px at Small `100%`
        ///
        /// 720px at Medium `100%`
        ///
        /// 960px at Large `100%`
        ///
        /// 1140px at X-Large `100%`
        ///
        /// 1320px at XX-Large `100%`
        ///
        /// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/containers/)
        case fluid
    }
    
    public private(set) var type: ContainerType
    
    required public init() {
        self.type = .default
        super.init()
        setupType()
    }
    
    public init (type: ContainerType) {
        self.type = type
        super.init()
        setupType()
    }

    /// String initializer
    /// - Parameter title: Pass `String` or `State<String>`
    public convenience init <U>(type: ContainerType, _ title: U) where U: UniValue, U.UniValue == String {
        self.init(title)
        self.type = type
        setupType()
    }
    
    public convenience init (type: ContainerType, @DOM content: @escaping DOM.Block) {
        self.init(content: content)
        self.type = type
        setupType()
    }
    
    func setupType() {
        switch type {
        case .`default`: self.class(.container)
        case .small: self.class(.containerSm)
        case .medium: self.class(.containerMd)
        case .large: self.class(.containerLg)
        case .extraLarge: self.class(.containerXl)
        case .extraExtraLarge: self.class(.containerXxl)
        case .fluid: self.class(.containerFluid)
        }
    }
}
