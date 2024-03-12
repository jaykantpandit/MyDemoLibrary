// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
public class JSONParser {

  public static func parse<T: Decodable>(data: Data) throws -> T {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  }
}

public class MakeRoundedCorder: UIView{
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.roundedCorner()
    }
    
    required public init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    public override func layoutSubviews() {
            super.layoutSubviews()
            layer.cornerRadius = 10 // Adjust corner radius as needed
            layer.masksToBounds = true
        }
    
    func roundedCorner(){
        self.layer.cornerRadius = 10
        self.layer.backgroundColor = UIColor.green.cgColor
        self.layer.masksToBounds = true
    }
}
