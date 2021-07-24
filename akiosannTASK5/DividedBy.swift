//
//  VIewModel.swift
//  akiosannTASK5
//
//  Created by IwasakIYuta on 2021/07/24.
//

import Foundation
//委譲する処理をプロトコルで宣言
protocol DividedBydelegate: AnyObject{
    func dividedBydidStart()
}

class DividedBy {
   weak var delegate: DividedBydelegate?
    
    func dividedBy(){
        delegate?.dividedBydidStart()
    }
  
}
