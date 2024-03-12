// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
public class JSONParser {

  public static func parse<T: Decodable>(data: Data) throws -> T {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  }
}
