//
//  URL+Query.swift
//  ios-url-scheme-launch
//
//  Created by Eiji Kushida on 2016/12/18.
//  Copyright © 2016年 Eiji Kushida. All rights reserved.
//

import UIKit

extension URL {
    func getKeyVals() -> [String: String]? {
        var results = [String:String]()
        let keyValues = self.query?.components(separatedBy:"&")
        let count = keyValues?.count ?? 0

        if count > 0 {
            for pair in keyValues! {
                let kv = pair.components(separatedBy:"=")
                if kv.count > 1 {
                    results.updateValue(kv[1].removingPercentEncoding ?? "", forKey: kv[0])
                }
            }
        }
        return results
    }
}
