//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Noppawit Hansompob on 2019-01-14.
//  Copyright © 2019 Noppawit Hansompob. All rights reserved.
//

import Foundation

class Stopwatch {
    
    private var startTime: Date?
    
    private var pauseTime: Date?
    
    private var isPause = false
    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    var isRunning: Bool {
        return startTime != nil
    }
    
    func start(){
        if(isPause == false){
            startTime = Date()
        } else {
            startTime = pauseTime
        }
        
    }
    
    func stop(){
        pauseTime = startTime
        startTime = nil
        isPause = true
        print(pauseTime)
    }
    
    func reset(){
        startTime = nil
        isPause = false
    }
}
