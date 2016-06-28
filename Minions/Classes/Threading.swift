//
//  CMAsyncHelper.swift
//  
//
//  Created by Malte Bünz on 23/06/16.
//
//

import Foundation

public class Threading {
    
    /// Global Helper Functions
    /**
     Executes the closure on the main queue after a set amount of seconds.
     
     - parameter delay:   Delay in seconds
     - parameter closure: Code to execute after delay
     */
    public func delayOnMainQueue(delay: Double, clousure: () -> ()) {
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        let queue = dispatch_get_main_queue()
        dispatch_after(dispatchTime, queue, clousure)
    }
    
    /**
     Executes the closure on a background queue after a set amount of seconds.
     
     - parameter delay:   Delay in seconds
     - parameter closure: Code to execute after delay
     */
    public func delayOnBackgroundQueue(delay: Double, closure: () -> ()) {
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        let qos = QOS_CLASS_UTILITY
        let queue = dispatch_get_global_queue(qos, 0)
        dispatch_after(dispatchTime, queue, closure)
    }
}
