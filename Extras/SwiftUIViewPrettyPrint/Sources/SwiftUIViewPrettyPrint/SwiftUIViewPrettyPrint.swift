import Foundation

public func prettyPrint<T, U>(_ type: T,
                           in view: U)  {
  printHeader(for: view)
  prettyPrint(type: type)
}

private func printHeader<U>(for view: U) {
  print("\n\(view):")
  print(String(repeating: "=", count: "\(view)".count) + "\n")
}

private func prettyPrint<T>(type: T) {
  print(splitOnGenerics(type)
    .reduce("", +))
}

private func splitOnGenerics<T>(_ type: T) -> [String] {
  var level = 0
  var followsComma = false
  return String(describing: type)
    .map {character in
      
      switch character {
      case "<":
        let string = indent(for: level) + String(character) + " "
        level += 1
        return string
      case "(":
        let string = String(character) + " "
        level += 1
        return string
        
      case ">", ")":
        level -= 1
        return indent(for: level) + String(character)
        
      case ",":
        followsComma = true
        return ","
        
      default:
        if followsComma {
          followsComma = false
          return indent(for: level)
        } else {
          return String(character)
        }
      }
    }
}

private func indent(for level: Int) -> String {
  guard level > 0 else { return "\n"}
  return "\n" + String(repeating: "| ", count: level)
}
            
