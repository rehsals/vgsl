// Copyright 2021 Yandex LLC. All rights reserved.

import CoreGraphics
import Foundation

extension Color {
  public var cgColor: CGColor {
    let colorspace = CGColorSpaceCreateDeviceRGB()
    let components = [red, green, blue, alpha]
    return CGColor(colorSpace: colorspace, components: components)!
  }

  public var hexString: String {
    String(format: "#%02X%02X%02X%02X", intAlpha, intRed, intGreen, intBlue)
  }
}

extension Color: CustomDebugStringConvertible {
  public var debugDescription: String {
    hexString
  }
}

extension Color {
  public static var black = SystemColor.black.rgba
  public static var blue = SystemColor.blue.rgba
  public static var brown: Color = SystemColor.brown.rgba
  public static var clear: Color = SystemColor.clear.rgba
  public static var cyan: Color = SystemColor.cyan.rgba
  public static var darkGray: Color = SystemColor.darkGray.rgba
  public static var gray: Color = SystemColor.gray.rgba
  public static var green: Color = SystemColor.green.rgba
  public static var lightGray: Color = SystemColor.lightGray.rgba
  public static var magenta: Color = SystemColor.magenta.rgba
  public static var orange: Color = SystemColor.orange.rgba
  public static var purple: Color = SystemColor.purple.rgba
  public static var red: Color = SystemColor.red.rgba
  public static var white: Color = SystemColor.white.rgba
  public static var yellow: Color = SystemColor.yellow.rgba
}
