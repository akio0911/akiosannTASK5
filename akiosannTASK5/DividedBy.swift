//
//  VIewModel.swift
//  akiosannTASK5
//
//  Created by IwasakIYuta on 2021/07/24.
//

import Foundation
//委譲するプロトコルで宣言
protocol DividedByAlertDelegate: AnyObject{
    func dividedBydidStart()
    func dialogAlert(message: String)
}

//処理を委任するクラス
class DividedBy {
    //delegateをを通じて委任する
    weak var delegate: DividedByAlertDelegate?
    func dividedBy(){
        delegate?.dividedBydidStart()
    }
    
}
