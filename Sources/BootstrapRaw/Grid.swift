//
//  Grid.swift
//  
//
//  Created by Mihael Isaev on 09.12.2022.
//

import Web
import BootstrapFoundation

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/grid/)
public class Row: Div {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.row)
    }
}

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/grid/)
public class Col: Div {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.col)
    }
}
