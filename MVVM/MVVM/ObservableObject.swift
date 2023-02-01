//
//  ObservableObject.swift
//  MVVM
//
//  Created by Samith on 2023-01-30.
//

import Foundation

class observableObject<T>
{
    
    var value: T?
    
    private var listener: ((T?) -> Void)? // in here this use an a single object but we can adjust it to used as array that multiple objects can subcribe. 
    
    init(_ value: T?)
    {
        self.value = value
    }
    
    func bind(_ listener: @escaping(T?) -> Void)
    {
        listener(value)
        self.listener = listener
    }
}

