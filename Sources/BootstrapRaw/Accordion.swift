//
//  Accordion.swift
//  
//
//  Created by Mihael Isaev on 08.12.2022.
//

import Web
import BootstrapFoundation
import CSS

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/components/accordion/)
public class Accordion: Div {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.accordion)
    }
}

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/components/accordion/)
public class AccordionFlush: Div {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.accordionFlush)
    }
}

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/components/accordion/)
public class AccordionItem: Div {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.accordionItem)
    }
}

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/components/accordion/)
public class AccordionHeader: H2 {
    open class override var name: String { "\(H2.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.accordionHeader)
    }
}

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/components/accordion/)
public class AccordionCollapse: Div {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.accordionCollapse, .collapse)
    }
}

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/components/accordion/)
public class AccordionBody: Div {
    open class override var name: String { "\(Div.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.accordionBody)
    }
}

/// [[▶︎▶︎▶︎LEARN MORE IN THE DOCS ◀︎◀︎◀︎]](https://getbootstrap.com/docs/5.0/components/accordion/)
public class AccordionButton: Button {
    open class override var name: String { "\(Button.self)".lowercased() }
    
    public override func postInit() {
        super.postInit()
        self.class(.accordionButton)
        self.dataBSToggle("collapse")
        self.type("button")
    }
}

//            Accordion {
//                AccordionItem {
//                    AccordionHeader {
//                        AccordionButton("Accordion Item #1").dataBSTarget("#collapseOne")
//                    }
//                    AccordionCollapse {
//                        AccordionBody {
//                            Strong("This is the first item's accordion body.")
//                            Span(" It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the ")
//                            Code(".accordion-body")
//                            Span(", though the transition does limit overflow.")
//                        }
//                    }.id("collapseOne").class("show").dataBSParent("#accordionExample")
//                }
//                AccordionItem {
//                    AccordionHeader {
//                        AccordionButton("Accordion Item #2").dataBSTarget("#collapseTwo").class("collapsed")
//                    }
//                    AccordionCollapse {
//                        AccordionBody {
//                            Strong("This is the second item's accordion body.")
//                            Span(" It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the ")
//                            Code(".accordion-body")
//                            Span(", though the transition does limit overflow.")
//                        }
//                    }.id("collapseTwo").dataBSParent("#accordionExample")
//                }
//            }.id("accordionExample")
