//
//  TypedNotifications.swift
//  Candyman
//
//  Created by Carmen on 20.10.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation



protocol TypedNotification {
    associatedtype Sender
    static var name: String { get }
    var sender: Sender { get }
}

extension TypedNotification {
    static var notificationName: Notification.Name {
        Notification.Name(rawValue: name)
    }
}



protocol TypedNotificationCenter {
    func post<N : TypedNotification>(_ notification: N)
    func addObserver<N : TypedNotification>(_ forType: N.Type, sender: N.Sender?, queue: OperationQueue?, using block: @escaping (N) -> Void) -> NSObjectProtocol
}

extension NotificationCenter : TypedNotificationCenter {
    static var typedNotificationUserInfoKey = "_TypedNotification"

    func post<N>(_ notification: N) where N : TypedNotification {
        post(name: N.notificationName, object: notification.sender, userInfo: [NotificationCenter.typedNotificationUserInfoKey : notification])
    }

    func addObserver<N>(_ forType: N.Type, sender: N.Sender?, queue: OperationQueue?, using block: @escaping (N) -> Void) -> NSObjectProtocol where N : TypedNotification {
        return addObserver(forName: N.notificationName, object: sender, queue: queue) { notification in
            guard let typedNotification = notification.userInfo?[NotificationCenter.typedNotificationUserInfoKey] as? N else {
                fatalError("Could not construct a typed notification: \(N.name) from notification: \(notification)")
            }

            block(typedNotification)
        }
    }

}
