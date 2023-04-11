//
//  IBDesignable+Localize1.swift
//  Localize-Swift
//
//  Copyright © 2020 Roy Marmelstein. All rights reserved.
//

import Foundation
#if os(macOS)
import AppKit

// MARK: - NSTextField localize Key extention for language in story board

@IBDesignable public extension NSTextField {
    @IBInspectable var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async {
                self.stringValue = (newValue?.localized() ?? newValue) ?? ""
            }
        }
        get {
            return self.stringValue
        }
    }
}

// MARK: - NSButton localize Key extention for language in story board

@IBDesignable public extension NSButton {
    
    @IBInspectable var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async {
                self.title = (newValue?.localized() ?? newValue) ?? ""
            }
        }
        get {
            return self.title
        }
    }
}

// MARK: - NSTextView localize Key extention for language in story board

@IBDesignable public extension NSTextView {
    
    @IBInspectable var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async {
                self.string = (newValue?.localized() ?? newValue) ?? ""
            }
        }
        get {
            return self.string
        }
    }
}

#else
import UIKit

// MARK: - UILabel localize Key extention for language in story board

@IBDesignable public extension UILabel {
    @IBInspectable var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async {
                self.text = newValue?.localized()
            }
        }
        get {
            return self.text
        }
    }
}

// MARK: - UIButton localize Key extention for language in story board

@IBDesignable public extension UIButton {

    @IBInspectable var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async {
                self.setTitle(newValue?.localized(), for: .normal)
            }
        }
        get {
            return self.titleLabel?.text
        }
    }
}

// MARK: - UITextView localize Key extention for language in story board

@IBDesignable public extension UITextView {

    @IBInspectable var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async {
                self.text = newValue?.localized()
            }
        }
        get {
            return self.text
        }
    }
}

// MARK: - UITextField localize Key extention for language in story board

@IBDesignable public extension UITextField {
    @IBInspectable var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async {
                self.placeholder = newValue?.localized()
            }
        }
        get {
            return self.placeholder
        }
    }
}

// MARK: - UINavigationItem localize Key extention for language in story board

@IBDesignable public extension UINavigationItem {

    @IBInspectable var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async {
                self.title = newValue?.localized()
            }
        }
        get {
            return self.title
        }
    }
}

#endif
