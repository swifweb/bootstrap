//
//  BootstrapFoundation.swift
//  
//
//  Created by Mihael Isaev on 08.12.2022.
//

import Web

public class Bootstrap {
    public static func configure(avoidStyles: Bool? = nil) {
        if avoidStyles != true {
            let style = Link().rel(.stylesheet).href("/css/bootstrap.min.css")
            WebApp.shared.document.head.appendChild(style)
        }
        let script = Script().src("/js/bootstrap.bundle.min.js")
        WebApp.shared.document.head.appendChild(script)
    }
}

public class AccordionButtonNoOutline: RulesGroup {
    @Rules public override var rules: RuleItems {
        Rule(Class.accordionButton.focus)
            .boxShadow(.none.important)
            .borderColor(.rgba(r: 0, g: 0, b: 0, a: 0.125).important)
    }
}

extension Class {
    // MARK: Accordion
    
    public static var accordion: Class { "accordion" }
    public static var accordionItem: Class { "accordion-item" }
    public static var accordionHeader: Class { "accordion-header" }
    public static var accordionBody: Class { "accordion-body" }
    public static var accordionFlush: Class { "accordion-flush" }
    public static var accordionCollapse: Class { "accordion-collapse" }
    public static var accordionButton: Class { "accordion-button" }
    
    // MARK: Active
    
    public static var active: Class { "active" }
    
    // MARK: Badge
    
    public static var badge: Class { "badge" }
    
    // MARK: Breadcrumbs
    
    public static var breadcrumb: Class { "breadcrumb" }
    public static var breadcrumbItem: Class { "breadcrumb-item" }
    
    // MARK: Button
    
    public static var bgPrimary: Class { "bg-primary" }
    public static var bgSecondary: Class { "bg-secondary" }
    public static var bgSuccess: Class { "bg-success" }
    public static var bgDanger: Class { "bg-danger" }
    public static var bgWarning: Class { "bg-warning" }
    public static var bgInfo: Class { "bg-info" }
    public static var bgLight: Class { "bg-light" }
    public static var bgDark: Class { "bg-dark" }
    
    public static var btnPrimary: Class { "btn btn-primary" }
    public static var btnSecondary: Class { "btn btn-secondary" }
    public static var btnSuccess: Class { "btn btn-success" }
    public static var btnDanger: Class { "btn btn-danger" }
    public static var btnWarning: Class { "btn btn-warning" }
    public static var btnInfo: Class { "btn btn-info" }
    public static var btnLight: Class { "btn btn-light" }
    public static var btnDark: Class { "btn btn-dark" }
    public static var btnLink: Class { "btn btn-link" }
    
    public static var btnOutlinePrimary: Class { "btn btn-outline-primary" }
    public static var btnOutlineSecondary: Class { "btn btn-outline-secondary" }
    public static var btnOutlineSuccess: Class { "btn btn-outline-success" }
    public static var btnOutlineDanger: Class { "btn btn-outline-danger" }
    public static var btnOutlineWarning: Class { "btn btn-outline-warning" }
    public static var btnOutlineInfo: Class { "btn btn-outline-info" }
    public static var btnOutlineLight: Class { "btn btn-outline-light" }
    public static var btnOutlineDark: Class { "btn btn-outline-dark" }
    
    public static var btnLarge: Class { "btn btn-lg" }
    public static var btnSmall: Class { "btn btn-sm" }
    
    // MARK: Clearfix
    
    public static var clearfix: Class { "clearfix" }
    
    // MARK: Container
    
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
    public static var container: Class { "container" }
    
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
    public static var containerSm: Class { "container-sm" }
    
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
    public static var containerMd: Class { "container-md" }
    
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
    public static var containerLg: Class { "container-lg" }
    
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
    public static var containerXl: Class { "container-xl" }
    
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
    public static var containerXxl: Class { "container-xxl" }
    
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
    public static var containerFluid: Class { "container-fluid" }
    
    // MARK: Collapse
    
    public static var collapse: Class { "collapse" }
    public static var collapsed: Class { "collapsed" }
    
    // MARK: Column
    
    public static var col: Class { "col" }
    
    public static var col1: Class { "col-1" }
    public static var col2: Class { "col-2" }
    public static var col3: Class { "col-3" }
    public static var col4: Class { "col-4" }
    public static var col5: Class { "col-5" }
    public static var col6: Class { "col-6" }
    public static var col7: Class { "col-7" }
    public static var col8: Class { "col-8" }
    public static var col9: Class { "col-9" }
    public static var col10: Class { "col-10" }
    public static var col11: Class { "col-11" }
    public static var col12: Class { "col-12" }
    public static var colAuto: Class { "col-auto" }
    
    public static var colSm1: Class { "col-sm-1" }
    public static var colSm2: Class { "col-sm-2" }
    public static var colSm3: Class { "col-sm-3" }
    public static var colSm4: Class { "col-sm-4" }
    public static var colSm5: Class { "col-sm-5" }
    public static var colSm6: Class { "col-sm-6" }
    public static var colSm7: Class { "col-sm-7" }
    public static var colSm8: Class { "col-sm-8" }
    public static var colSm9: Class { "col-sm-9" }
    public static var colSm10: Class { "col-sm-10" }
    public static var colSm11: Class { "col-sm-11" }
    public static var colSm12: Class { "col-sm-12" }
    public static var colSmAuto: Class { "col-sm-auto" }
    
    public static var colMd1: Class { "col-md-1" }
    public static var colMd2: Class { "col-md-2" }
    public static var colMd3: Class { "col-md-3" }
    public static var colMd4: Class { "col-md-4" }
    public static var colMd5: Class { "col-md-5" }
    public static var colMd6: Class { "col-md-6" }
    public static var colMd7: Class { "col-md-7" }
    public static var colMd8: Class { "col-md-8" }
    public static var colMd9: Class { "col-md-9" }
    public static var colMd10: Class { "col-md-10" }
    public static var colMd11: Class { "col-md-11" }
    public static var colMd12: Class { "col-md-12" }
    public static var colMdAuto: Class { "col-md-auto" }
    
    public static var colLg1: Class { "col-lg-1" }
    public static var colLg2: Class { "col-lg-2" }
    public static var colLg3: Class { "col-lg-3" }
    public static var colLg4: Class { "col-lg-4" }
    public static var colLg5: Class { "col-lg-5" }
    public static var colLg6: Class { "col-lg-6" }
    public static var colLg7: Class { "col-lg-7" }
    public static var colLg8: Class { "col-lg-8" }
    public static var colLg9: Class { "col-lg-9" }
    public static var colLg10: Class { "col-lg-10" }
    public static var colLg11: Class { "col-lg-11" }
    public static var colLg12: Class { "col-lg-12" }
    public static var colLgAuto: Class { "col-lg-auto" }
    
    public static var colXl1: Class { "col-xl-1" }
    public static var colXl2: Class { "col-xl-2" }
    public static var colXl3: Class { "col-xl-3" }
    public static var colXl4: Class { "col-xl-4" }
    public static var colXl5: Class { "col-xl-5" }
    public static var colXl6: Class { "col-xl-6" }
    public static var colXl7: Class { "col-xl-7" }
    public static var colXl8: Class { "col-xl-8" }
    public static var colXl9: Class { "col-xl-9" }
    public static var colXl10: Class { "col-xl-10" }
    public static var colXl11: Class { "col-xl-11" }
    public static var colXl12: Class { "col-xl-12" }
    public static var colXlAuto: Class { "col-xl-auto" }
    
    public static var colXxl1: Class { "col-xxl-1" }
    public static var colXxl2: Class { "col-xxl-2" }
    public static var colXxl3: Class { "col-xxl-3" }
    public static var colXxl4: Class { "col-xxl-4" }
    public static var colXxl5: Class { "col-xxl-5" }
    public static var colXxl6: Class { "col-xxl-6" }
    public static var colXxl7: Class { "col-xxl-7" }
    public static var colXxl8: Class { "col-xxl-8" }
    public static var colXxl9: Class { "col-xxl-9" }
    public static var colXxl10: Class { "col-xxl-10" }
    public static var colXxl11: Class { "col-xxl-11" }
    public static var colXxl12: Class { "col-xxl-12" }
    public static var colXxlAuto: Class { "col-xxl-auto" }
    
    // MARK: Disabled
    
    public static var disabled: Class { "disabled" }
    
    // MARK: Row
    
    public static var row: Class { "row" }
    
    public static var rowCols1: Class { "row-cols-1" }
    public static var rowCols2: Class { "row-cols-2" }
    public static var rowCols3: Class { "row-cols-3" }
    public static var rowCols4: Class { "row-cols-4" }
    public static var rowCols5: Class { "row-cols-5" }
    public static var rowCols6: Class { "row-cols-6" }
    public static var rowColsAuto: Class { "row-cols-auto" }
    
    public static var rowColsSm1: Class { "row-cols-sm-1" }
    public static var rowColsSm2: Class { "row-cols-sm-2" }
    public static var rowColsSm3: Class { "row-cols-sm-3" }
    public static var rowColsSm4: Class { "row-cols-sm-4" }
    public static var rowColsSm5: Class { "row-cols-sm-5" }
    public static var rowColsSm6: Class { "row-cols-sm-6" }
    public static var rowColsSmAuto: Class { "row-cols-sm-auto" }
    
    public static var rowColsMd1: Class { "row-cols-md-1" }
    public static var rowColsMd2: Class { "row-cols-md-2" }
    public static var rowColsMd3: Class { "row-cols-md-3" }
    public static var rowColsMd4: Class { "row-cols-md-4" }
    public static var rowColsMd5: Class { "row-cols-md-5" }
    public static var rowColsMd6: Class { "row-cols-md-6" }
    public static var rowColsMdAuto: Class { "row-cols-md-auto" }
    
    public static var rowColsLg1: Class { "row-cols-lg-1" }
    public static var rowColsLg2: Class { "row-cols-lg-2" }
    public static var rowColsLg3: Class { "row-cols-lg-3" }
    public static var rowColsLg4: Class { "row-cols-lg-4" }
    public static var rowColsLg5: Class { "row-cols-lg-5" }
    public static var rowColsLg6: Class { "row-cols-lg-6" }
    public static var rowColsLgAuto: Class { "row-cols-lg-auto" }
    
    public static var rowColsXl1: Class { "row-cols-xl-1" }
    public static var rowColsXl2: Class { "row-cols-xl-2" }
    public static var rowColsXl3: Class { "row-cols-xl-3" }
    public static var rowColsXl4: Class { "row-cols-xl-4" }
    public static var rowColsXl5: Class { "row-cols-xl-5" }
    public static var rowColsXl6: Class { "row-cols-xl-6" }
    public static var rowColsXlAuto: Class { "row-cols-xl-auto" }
    
    public static var rowColsXxl1: Class { "row-cols-xxl-1" }
    public static var rowColsXxl2: Class { "row-cols-xxl-2" }
    public static var rowColsXxl3: Class { "row-cols-xxl-3" }
    public static var rowColsXxl4: Class { "row-cols-xxl-4" }
    public static var rowColsXxl5: Class { "row-cols-xxl-5" }
    public static var rowColsXxl6: Class { "row-cols-xxl-6" }
    public static var rowColsXxlAuto: Class { "row-cols-xxl-auto" }
    
    // MARK: Show
    
    public static var show: Class { "show" }
    
    // MARK: Text
    
    public static var textNowrap: Class { "text-nowrap" }
    
    // MARK: Vertical row alignment
    
    public static var alignItemsStart: Class { "align-items-start" }
    public static var alignItemsSmStart: Class { "align-items-sm-start" }
    public static var alignItemsMdStart: Class { "align-items-md-start" }
    public static var alignItemsLgStart: Class { "align-items-lg-start" }
    public static var alignItemsXlStart: Class { "align-items-xl-start" }
    public static var alignItemsXxlStart: Class { "align-items-xxl-start" }
    
    public static var alignItemsCenter: Class { "align-items-center" }
    public static var alignItemsSmCenter: Class { "align-items-sm-center" }
    public static var alignItemsMdCenter: Class { "align-items-md-center" }
    public static var alignItemsLgCenter: Class { "align-items-lg-center" }
    public static var alignItemsXlCenter: Class { "align-items-xl-center" }
    public static var alignItemsXxlCenter: Class { "align-items-xxl-center" }
    
    public static var alignItemsEnd: Class { "align-items-end" }
    public static var alignItemsSmEnd: Class { "align-items-sm-end" }
    public static var alignItemsMdEnd: Class { "align-items-md-end" }
    public static var alignItemsLgEnd: Class { "align-items-lg-end" }
    public static var alignItemsXlEnd: Class { "align-items-xl-end" }
    public static var alignItemsXxlEnd: Class { "align-items-xxl-end" }
    
    // MARK: Vertical col alignment
    
    public static var alignSelfStart: Class { "align-self-start" }
    public static var alignSelfSmStart: Class { "align-self-sm-start" }
    public static var alignSelfMdStart: Class { "align-self-md-start" }
    public static var alignSelfLgStart: Class { "align-self-lg-start" }
    public static var alignSelfXlStart: Class { "align-self-xl-start" }
    public static var alignSelfXxlStart: Class { "align-self-xxl-start" }
    
    public static var alignSelfCenter: Class { "align-self-center" }
    public static var alignSelfSmCenter: Class { "align-self-sm-center" }
    public static var alignSelfMdCenter: Class { "align-self-md-center" }
    public static var alignSelfLgCenter: Class { "align-self-lg-center" }
    public static var alignSelfXlCenter: Class { "align-self-xl-center" }
    public static var alignSelfXxlCenter: Class { "align-self-xxl-center" }
    
    public static var alignSelfEnd: Class { "align-self-end" }
    public static var alignSelfSmEnd: Class { "align-self-sm-end" }
    public static var alignSelfMdEnd: Class { "align-self-md-end" }
    public static var alignSelfLgEnd: Class { "align-self-lg-end" }
    public static var alignSelfXlEnd: Class { "align-self-xl-end" }
    public static var alignSelfXxlEnd: Class { "align-self-xxl-end" }
    
    // MARK: Horizontal alignment
    
    public static var justifyContentStart: Class { "justify-content-start" }
    public static var justifyContentSmStart: Class { "justify-content-sm-center" }
    public static var justifyContentMdStart: Class { "justify-content-md-center" }
    public static var justifyContentLgStart: Class { "justify-content-lg-center" }
    public static var justifyContentXlStart: Class { "justify-content-xl-center" }
    public static var justifyContentXxlStart: Class { "justify-content-xxl-center" }
    
    public static var justifyContentCenter: Class { "justify-content-center" }
    public static var justifyContentSmCenter: Class { "justify-content-sm-center" }
    public static var justifyContentMdCenter: Class { "justify-content-md-center" }
    public static var justifyContentLgCenter: Class { "justify-content-lg-center" }
    public static var justifyContentXlCenter: Class { "justify-content-xl-center" }
    public static var justifyContentXxlCenter: Class { "justify-content-xxl-center" }
    
    public static var justifyContentEnd: Class { "justify-content-end" }
    public static var justifyContentSmEnd: Class { "justify-content-sm-center" }
    public static var justifyContentMdEnd: Class { "justify-content-md-center" }
    public static var justifyContentLgEnd: Class { "justify-content-lg-center" }
    public static var justifyContentXlEnd: Class { "justify-content-xl-center" }
    public static var justifyContentXxlEnd: Class { "justify-content-xxl-center" }
    
    public static var justifyContentAround: Class { "justify-content-around" }
    public static var justifyContentSmAround: Class { "justify-content-sm-center" }
    public static var justifyContentMdAround: Class { "justify-content-md-center" }
    public static var justifyContentLgAround: Class { "justify-content-lg-center" }
    public static var justifyContentXlAround: Class { "justify-content-xl-center" }
    public static var justifyContentXxlAround: Class { "justify-content-xxl-center" }
    
    public static var justifyContentBetween: Class { "justify-content-between" }
    public static var justifyContentSmBetween: Class { "justify-content-sm-center" }
    public static var justifyContentMdBetween: Class { "justify-content-md-center" }
    public static var justifyContentLgBetween: Class { "justify-content-lg-center" }
    public static var justifyContentXlBetween: Class { "justify-content-xl-center" }
    public static var justifyContentXxlBetween: Class { "justify-content-xxl-center" }
    
    public static var justifyContentEvenly: Class { "justify-content-evenly" }
    public static var justifyContentSmEvenly: Class { "justify-content-sm-center" }
    public static var justifyContentMdEvenly: Class { "justify-content-md-center" }
    public static var justifyContentLgEvenly: Class { "justify-content-lg-center" }
    public static var justifyContentXlEvenly: Class { "justify-content-xl-center" }
    public static var justifyContentXxlEvenly: Class { "justify-content-xxl-center" }
    
    // MARK: Order classes
    
    public static var orderFirst: Class { "order-first" }
    public static var orderLast: Class { "order-last" }
    public static var order1: Class { "order-1" }
    public static var order2: Class { "order-2" }
    public static var order3: Class { "order-3" }
    public static var order4: Class { "order-4" }
    public static var order5: Class { "order-5" }
    public static var order6: Class { "order-6" }
    
    // MARK: Offset classes
    
    public static var offsetSm0: Class { "offset-sm-0" }
    public static var offsetSm1: Class { "offset-sm-1" }
    public static var offsetSm2: Class { "offset-sm-2" }
    public static var offsetSm3: Class { "offset-sm-3" }
    public static var offsetSm4: Class { "offset-sm-4" }
    public static var offsetSm5: Class { "offset-sm-5" }
    public static var offsetSm6: Class { "offset-sm-6" }
    
    public static var offsetMd0: Class { "offset-md-0" }
    public static var offsetMd1: Class { "offset-md-1" }
    public static var offsetMd2: Class { "offset-md-2" }
    public static var offsetMd3: Class { "offset-md-3" }
    public static var offsetMd4: Class { "offset-md-4" }
    public static var offsetMd5: Class { "offset-md-5" }
    public static var offsetMd6: Class { "offset-md-6" }
    
    public static var offsetLg0: Class { "offset-lg-0" }
    public static var offsetLg1: Class { "offset-lg-1" }
    public static var offsetLg2: Class { "offset-lg-2" }
    public static var offsetLg3: Class { "offset-lg-3" }
    public static var offsetLg4: Class { "offset-lg-4" }
    public static var offsetLg5: Class { "offset-lg-5" }
    public static var offsetLg6: Class { "offset-lg-6" }
    
    public static var offsetXl0: Class { "offset-xl-0" }
    public static var offsetXl1: Class { "offset-xl-1" }
    public static var offsetXl2: Class { "offset-xl-2" }
    public static var offsetXl3: Class { "offset-xl-3" }
    public static var offsetXl4: Class { "offset-xl-4" }
    public static var offsetXl5: Class { "offset-xl-5" }
    public static var offsetXl6: Class { "offset-xl-6" }
    
    public static var offsetXxl0: Class { "offset-xxl-0" }
    public static var offsetXxl1: Class { "offset-xxl-1" }
    public static var offsetXxl2: Class { "offset-xxl-2" }
    public static var offsetXxl3: Class { "offset-xxl-3" }
    public static var offsetXxl4: Class { "offset-xxl-4" }
    public static var offsetXxl5: Class { "offset-xxl-5" }
    public static var offsetXxl6: Class { "offset-xxl-6" }
    
    // MARK: Margin utilities
    
    public static var m0: Class { "m-0" }
    public static var m1: Class { "m-1" }
    public static var m2: Class { "m-2" }
    public static var m3: Class { "m-3" }
    public static var m4: Class { "m-4" }
    public static var m5: Class { "m-5" }
    public static var mAuto: Class { "m-auto" }
    
    public static var mx0: Class { "mx-0" }
    public static var mx1: Class { "mx-1" }
    public static var mx2: Class { "mx-2" }
    public static var mx3: Class { "mx-3" }
    public static var mx4: Class { "mx-4" }
    public static var mx5: Class { "mx-5" }
    public static var mxAuto: Class { "mx-auto" }
    
    public static var my0: Class { "my-0" }
    public static var my1: Class { "my-1" }
    public static var my2: Class { "my-2" }
    public static var my3: Class { "my-3" }
    public static var my4: Class { "my-4" }
    public static var my5: Class { "my-5" }
    public static var myAuto: Class { "my-auto" }
    
    public static var mt0: Class { "mt-0" }
    public static var mt1: Class { "mt-1" }
    public static var mt2: Class { "mt-2" }
    public static var mt3: Class { "mt-3" }
    public static var mt4: Class { "mt-4" }
    public static var mt5: Class { "mt-5" }
    public static var mtAuto: Class { "mt-auto" }
    
    public static var me0: Class { "me-0" }
    public static var me1: Class { "me-1" }
    public static var me2: Class { "me-2" }
    public static var me3: Class { "me-3" }
    public static var me4: Class { "me-4" }
    public static var me5: Class { "me-5" }
    public static var meAuto: Class { "me-auto" }
    
    public static var mb0: Class { "mb-0" }
    public static var mb1: Class { "mb-1" }
    public static var mb2: Class { "mb-2" }
    public static var mb3: Class { "mb-3" }
    public static var mb4: Class { "mb-4" }
    public static var mb5: Class { "mb-5" }
    public static var mbAuto: Class { "mb-auto" }
    
    public static var ms0: Class { "ms-0" }
    public static var ms1: Class { "ms-1" }
    public static var ms2: Class { "ms-2" }
    public static var ms3: Class { "ms-3" }
    public static var ms4: Class { "ms-4" }
    public static var ms5: Class { "ms-5" }
    public static var msAuto: Class { "ms-auto" }
    
    public static var p0: Class { "p-0" }
    public static var p1: Class { "p-1" }
    public static var p2: Class { "p-2" }
    public static var p3: Class { "p-3" }
    public static var p4: Class { "p-4" }
    public static var p5: Class { "p-5" }
    
    public static var px0: Class { "px-0" }
    public static var px1: Class { "px-1" }
    public static var px2: Class { "px-2" }
    public static var px3: Class { "px-3" }
    public static var px4: Class { "px-4" }
    public static var px5: Class { "px-5" }
    
    public static var py0: Class { "py-0" }
    public static var py1: Class { "py-1" }
    public static var py2: Class { "py-2" }
    public static var py3: Class { "py-3" }
    public static var py4: Class { "py-4" }
    public static var py5: Class { "py-5" }
    
    public static var pt0: Class { "pt-0" }
    public static var pt1: Class { "pt-1" }
    public static var pt2: Class { "pt-2" }
    public static var pt3: Class { "pt-3" }
    public static var pt4: Class { "pt-4" }
    public static var pt5: Class { "pt-5" }
    
    public static var pe0: Class { "pe-0" }
    public static var pe1: Class { "pe-1" }
    public static var pe2: Class { "pe-2" }
    public static var pe3: Class { "pe-3" }
    public static var pe4: Class { "pe-4" }
    public static var pe5: Class { "pe-5" }
    
    public static var pb0: Class { "pb-0" }
    public static var pb1: Class { "pb-1" }
    public static var pb2: Class { "pb-2" }
    public static var pb3: Class { "pb-3" }
    public static var pb4: Class { "pb-4" }
    public static var pb5: Class { "pb-5" }
    
    public static var ps0: Class { "ps-0" }
    public static var ps1: Class { "ps-1" }
    public static var ps2: Class { "ps-2" }
    public static var ps3: Class { "ps-3" }
    public static var ps4: Class { "ps-4" }
    public static var ps5: Class { "ps-5" }
    
    public static var fontMonospace: Class { "font-monospace" }
    
    public static var fs1: Class { "fs-1" }
    public static var fs2: Class { "fs-2" }
    public static var fs3: Class { "fs-3" }
    public static var fs4: Class { "fs-4" }
    public static var fs5: Class { "fs-5" }
    public static var fs6: Class { "fs-6" }
    
    public static var fstItalic: Class { "fst-italic" }
    public static var fstNormal: Class { "fst-normal" }
    
    public static var fwLight: Class { "fw-light" }
    public static var fwLighter: Class { "fw-lighter" }
    public static var fwNormal: Class { "fw-normal" }
    public static var fwBold: Class { "fw-bold" }
    public static var fwBolder: Class { "fw-bolder" }
    
    public static var lh1: Class { "lh-1" }
    public static var lhSm: Class { "lh-sm" }
    public static var lhBase: Class { "lh-base" }
    public static var lhLg: Class { "lh-lg" }
    
    public static var textStart: Class { "text-start" }
    public static var textEnd: Class { "text-end" }
    public static var textCenter: Class { "text-center" }
    
    public static var msSmAuto: Class { "ms-sm-auto" }
    public static var msMdAuto: Class { "ms-md-auto" }
    public static var msLgAuto: Class { "ms-lg-auto" }
    public static var msXlAuto: Class { "ms-xl-auto" }
    public static var msXxlAuto: Class { "ms-xxl-auto" }
    
    public static var meSmAuto: Class { "me-sm-auto" }
    public static var meMdAuto: Class { "me-md-auto" }
    public static var meLgAuto: Class { "me-lg-auto" }
    public static var meXlAuto: Class { "me-xl-auto" }
    public static var meXxlAuto: Class { "me-xxl-auto" }
}
