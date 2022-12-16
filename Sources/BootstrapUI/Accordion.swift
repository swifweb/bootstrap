//
//  Accordion.swift
//  
//
//  Created by Mihael Isaev on 07.12.2022.
//

import Web
import BootstrapRaw

// TODO: with alwaysOpen flag accordion items won't collapse back

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/components/accordion/)
public class Accordion: BaseElement {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public enum Flag {
        case alwaysOpen
        case flush
    }
    
    let flags: [Flag]
    
    public override func postInit() {
        super.postInit()
        self.class(.accordion)
    }
    
    public init(_ flags: [Flag], items: [AccordionItem]) {
        self.flags = flags
        super.init()
        if flags.contains(.flush) {
            self.class(.accordionFlush)
        }
        items.forEach(_appendAccodrionItem)
    }
    
    public convenience init(_ flags: Flag..., items: [AccordionItem]) {
        self.init(flags, items: items)
    }
    
    public init(_ flags: [Flag], @AccordionBuilder content: @escaping AccordionBuilder.Block) {
        self.flags = flags
        super.init()
        if flags.contains(.flush) {
            self.class(.accordionFlush)
        }
        parseAccordionItem(content().accordionBuilderContent)
    }
    
    public convenience init(_ flags: Flag..., @AccordionBuilder content: @escaping AccordionBuilder.Block) {
        self.init(flags, content: content)
    }
    
    required init() {
        self.flags = []
        super.init()
    }
    
    func parseAccordionItem(_ item: AccordionBuilder.Item) {
        switch item {
        case .elements(let elements): elements.compactMap { $0 }.forEach(_appendAccodrionItem)
        case .items(let items): items.forEach(parseAccordionItem)
        case .none: break
        }
    }
    
    private func _appendAccodrionItem(_ item: AccordionItem) {
        let accordionItem = BootstrapRaw.AccordionItem()
        let collapse = BootstrapRaw.AccordionCollapse()
        if !flags.contains(.alwaysOpen) {
            collapse.dataBSParent("#\(self.properties._id)")
        }
        collapse.body {
            BootstrapRaw.AccordionBody(content: item.body)
        }
        let button = BootstrapRaw.AccordionButton(item.title).dataBSTarget("#\(collapse.properties._id)")
        if item.collapsed {
            button.class(.collapsed)
        } else {
            collapse.class(.show)
        }
        accordionItem.body {
            BootstrapRaw.AccordionHeader {
                button
            }
            collapse
        }
        appendChild(accordionItem)
    }
}

public class AccordionItem: AccordionBuilderContent {
    public var accordionBuilderContent: AccordionBuilder.Item { .elements([self]) }
    
    let title: String
    let collapsed: Bool
    let body: DOM.Block
    
    public init(_ title: String, collapsed: Bool = false, @DOM content: @escaping DOM.Block) {
        self.title = title
        self.collapsed = collapsed
        self.body = content
    }
}

// MARK: AccordionBuilder

public protocol AccordionBuilderContent {
    var accordionBuilderContent: AccordionBuilder.Item { get }
}

struct _AccordionContent: AccordionBuilder.Content {
    let accordionBuilderContent: AccordionBuilder.Item
}

@resultBuilder public struct AccordionBuilder {
    public typealias Block = () -> AccordionBuilderContent
    public typealias Content = AccordionBuilderContent
    
    public enum Item {
        case none
        case elements([AccordionItem])
        case items([Item])
    }

    public static func buildBlock() -> Content {
        _AccordionContent(accordionBuilderContent: .none)
    }

    public static func buildBlock(_ attrs: Content...) -> Content {
        buildBlock(attrs)
    }

    public static func buildBlock(_ attrs: [Content]) -> Content {
        _AccordionContent(accordionBuilderContent: .items(attrs.map { $0.accordionBuilderContent }))
    }

    public static func buildIf(_ content: Content?) -> Content {
        guard let content = content else { return _AccordionContent(accordionBuilderContent: .none) }
        return _AccordionContent(accordionBuilderContent: .items([content.accordionBuilderContent]))
    }

    public static func buildEither(first: Content) -> Content {
        _AccordionContent(accordionBuilderContent: .items([first.accordionBuilderContent]))
    }

    public static func buildEither(second: Content) -> Content {
        _AccordionContent(accordionBuilderContent: .items([second.accordionBuilderContent]))
    }
}
