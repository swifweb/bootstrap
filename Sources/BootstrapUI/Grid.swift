//
//  Grid.swift
//  
//
//  Created by Mihael Isaev on 09.12.2022.
//

import Web
import BootstrapRaw

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/grid/)
public class Row: BaseContentElement {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.row)
    }
    
    public enum ColumnsAmount: String {
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case auto = "auto"
        
        var `class`: Class {
            switch self {
            case .one: return .rowCols1
            case .two: return .rowCols2
            case .three: return .rowCols3
            case .four: return .rowCols4
            case .five: return .rowCols5
            case .six: return .rowCols6
            case .auto: return .rowColsAuto
            }
        }
    }
    
    public enum SizeConstraint {
        case small(ColumnsAmount)
        case medium(ColumnsAmount)
        case large(ColumnsAmount)
        case extraLarge(ColumnsAmount)
        case extraExtraLarge(ColumnsAmount)
        
        var `class`: Class {
            switch self {
            case .small(let amount):
                switch amount {
                case .one: return .rowColsSm1
                case .two: return .rowColsSm2
                case .three: return .rowColsSm3
                case .four: return .rowColsSm4
                case .five: return .rowColsSm5
                case .six: return .rowColsSm6
                case .auto: return .rowColsSmAuto
                }
            case .medium(let amount):
                switch amount {
                case .one: return .rowColsMd1
                case .two: return .rowColsMd2
                case .three: return .rowColsMd3
                case .four: return .rowColsMd4
                case .five: return .rowColsMd5
                case .six: return .rowColsMd6
                case .auto: return .rowColsMdAuto
                }
            case .large(let amount):
                switch amount {
                case .one: return .rowColsLg1
                case .two: return .rowColsLg2
                case .three: return .rowColsLg3
                case .four: return .rowColsLg4
                case .five: return .rowColsLg5
                case .six: return .rowColsLg6
                case .auto: return .rowColsLgAuto
                }
            case .extraLarge(let amount):
                switch amount {
                case .one: return .rowColsXl1
                case .two: return .rowColsXl2
                case .three: return .rowColsXl3
                case .four: return .rowColsXl4
                case .five: return .rowColsXl5
                case .six: return .rowColsXl6
                case .auto: return .rowColsXlAuto
                }
            case .extraExtraLarge(let amount):
                switch amount {
                case .one: return .rowColsXxl1
                case .two: return .rowColsXxl2
                case .three: return .rowColsXxl3
                case .four: return .rowColsXxl4
                case .five: return .rowColsXxl5
                case .six: return .rowColsXxl6
                case .auto: return .rowColsXxlAuto
                }
            }
        }
    }
    
    public init(columns: ColumnsAmount? = nil, constraints: SizeConstraint...) {
        super.init()
        if let columnsAmount = columns {
            self.class(columnsAmount.class)
        }
        constraints.forEach { constraint in
            self.class(constraint.class)
        }
    }
    
    public init(columns: ColumnsAmount? = nil, constraints: SizeConstraint..., @DOM content: @escaping DOM.Block) {
        super.init()
        if let columnsAmount = columns {
            self.class(columnsAmount.class)
        }
        constraints.forEach { constraint in
            self.class(constraint.class)
        }
        self.body(content: content)
    }
    
    required init() {
        super.init()
    }
    
    @discardableResult
    public func columns(_ columnsAmount: ColumnsAmount) -> Self {
        self.class(columnsAmount.class)
    }
    
    @discardableResult
    public func constraints(_ constraints: [SizeConstraint]) -> Self {
        constraints.forEach { constraint in
            self.class(constraint.class)
        }
        return self
    }
    
    @discardableResult
    public func constraints(_ constraints: SizeConstraint...) -> Self {
        constraints.forEach { constraint in
            self.class(constraint.class)
        }
        return self
    }
}

// MARK: Column

/// Aka **Col** aka `<col>`
///
/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/layout/grid/)
public class Column: Div {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.col)
    }
    
    public enum Size: String {
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
        case ten = "10"
        case eleven = "11"
        case twelve = "12"
        case auto = "auto"
        
        var `class`: Class {
            switch self {
            case .one: return .col1
            case .two: return .col2
            case .three: return .col3
            case .four: return .col4
            case .five: return .col5
            case .six: return .col6
            case .seven: return .col7
            case .eight: return .col8
            case .nine: return .col9
            case .ten: return .col10
            case .eleven: return .col11
            case .twelve: return .col12
            case .auto: return .colAuto
            }
        }
    }
    
    public enum SizeConstraint {
        case small(Size)
        case medium(Size)
        case large(Size)
        case extraLarge(Size)
        case extraExtraLarge(Size)
        
        var `class`: Class {
            switch self {
            case .small(let amount):
                switch amount {
                case .one: return .colSm1
                case .two: return .colSm2
                case .three: return .colSm3
                case .four: return .colSm4
                case .five: return .colSm5
                case .six: return .colSm6
                case .seven: return .colSm7
                case .eight: return .colSm8
                case .nine: return .colSm9
                case .ten: return .colSm10
                case .eleven: return .colSm11
                case .twelve: return .colSm12
                case .auto: return .colSmAuto
                }
            case .medium(let amount):
                switch amount {
                case .one: return .colMd1
                case .two: return .colMd2
                case .three: return .colMd3
                case .four: return .colMd4
                case .five: return .colMd5
                case .six: return .colMd6
                case .seven: return .colMd7
                case .eight: return .colMd8
                case .nine: return .colMd9
                case .ten: return .colMd10
                case .eleven: return .colMd11
                case .twelve: return .colMd12
                case .auto: return .colMdAuto
                }
            case .large(let amount):
                switch amount {
                case .one: return .colLg1
                case .two: return .colLg2
                case .three: return .colLg3
                case .four: return .colLg4
                case .five: return .colLg5
                case .six: return .colLg6
                case .seven: return .colLg7
                case .eight: return .colLg8
                case .nine: return .colLg9
                case .ten: return .colLg10
                case .eleven: return .colLg11
                case .twelve: return .colLg12
                case .auto: return .colLgAuto
                }
            case .extraLarge(let amount):
                switch amount {
                case .one: return .colXl1
                case .two: return .colXl2
                case .three: return .colXl3
                case .four: return .colXl4
                case .five: return .colXl5
                case .six: return .colXl6
                case .seven: return .colXl7
                case .eight: return .colXl8
                case .nine: return .colXl9
                case .ten: return .colXl10
                case .eleven: return .colXl11
                case .twelve: return .colXl12
                case .auto: return .colXlAuto
                }
            case .extraExtraLarge(let amount):
                switch amount {
                case .one: return .colXxl1
                case .two: return .colXxl2
                case .three: return .colXxl3
                case .four: return .colXxl4
                case .five: return .colXxl5
                case .six: return .colXxl6
                case .seven: return .colXxl7
                case .eight: return .colXxl8
                case .nine: return .colXxl9
                case .ten: return .colXxl10
                case .eleven: return .colXxl11
                case .twelve: return .colXxl12
                case .auto: return .colXxlAuto
                }
            }
        }
    }
    
    public init(size: Size? = nil, constraints: SizeConstraint...) {
        super.init()
        if let size = size {
            self.class(size.class)
        }
        constraints.forEach { constraint in
            self.class(constraint.class)
        }
    }
    
    public init(size: Size? = nil, constraints: SizeConstraint..., @DOM content: @escaping DOM.Block) {
        super.init()
        if let size = size {
            self.class(size.class)
        }
        constraints.forEach { constraint in
            self.class(constraint.class)
        }
        self.body(content: content)
    }
    
    required init() {
        super.init()
    }
    
    @discardableResult
    public func size(_ size: Size) -> Self {
        self.class(size.class)
    }
    
    @discardableResult
    public func constraints(_ constraints: [SizeConstraint]) -> Self {
        constraints.forEach { constraint in
            self.class(constraint.class)
        }
        return self
    }
    
    @discardableResult
    public func constraints(_ constraints: SizeConstraint...) -> Self {
        constraints.forEach { constraint in
            self.class(constraint.class)
        }
        return self
    }
}
