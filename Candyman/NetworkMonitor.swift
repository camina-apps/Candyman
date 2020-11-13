//
//  NetworkMonitor.swift
//  Candyman
//
//  Created by Carmen on 13.11.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import Network

@available(iOS 13.0, *)
class NetworkMonitor: ObservableObject {
    
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "NetworkMonitor")
    
    private (set) var isActive = false
    private (set) var isExpensive = false
    private (set) var isConstrained = false
    private (set) var connectionType = NWInterface.InterfaceType.other
    
    init() {
        monitor.pathUpdateHandler = { path in
            self.isActive = path.status == .satisfied
            self.isExpensive = path.isExpensive
            self.isConstrained = path.isConstrained
            
            let connectionTypes: [NWInterface.InterfaceType] = [.cellular, .wifi, .wiredEthernet]
            self.connectionType = connectionTypes.first(where: path.usesInterfaceType) ?? .other
            
            DispatchQueue.main.async {
                self.objectWillChange.send()
            }
        }
        
        monitor.start(queue: queue)
    }
}
