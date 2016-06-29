//
//  CMAsyncHelper.swift
//  
//
//  Created by Malte Bünz on 23/06/16.
//
//

import Foundation

class Threading {
    
    typealias BackgroundTask = () -> ()
    typealias MainTask = () -> ()
    
    /// Global Helper Functions
    /**
     Executes the closure on the main queue after a set amount of seconds.
     
     - parameter delay:   Delay in seconds
     - parameter closure: Code to execute after delay
     */
    static func delayOnMainQueue(delay: Double, clousure: MainTask) {
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        let queue = dispatch_get_main_queue()
        dispatch_after(dispatchTime, queue, clousure)
    }
    
    /**
     Executes the closure on a background queue after a set amount of seconds.
     
     - parameter delay:   Delay in seconds
     - parameter closure: Code to execute after delay
     */
    static func delayOnBackgroundQueue(delay: Double, closure: BackgroundTask) {
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        let qos = QOS_CLASS_UTILITY
        let queue = dispatch_get_global_queue(qos, 0)
        dispatch_after(dispatchTime, queue, closure)
    }
    
    /**
     Executes the closure on a background queue and then runs a task on the main queue
     
     - parameter background: clousure to run in the background
     - parameter main:       clousure to run on the main queue
     */
    static func mainToBackground(background: BackgroundTask, main: MainTask) {
        let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
        dispatch_async(dispatch_get_global_queue(priority, 0)) {
            background()
            dispatch_async(dispatch_get_main_queue()) {
                main()
            }
        }
    }
}
