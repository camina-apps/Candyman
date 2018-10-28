//
//  AppInfo.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import UIKit

public struct AppInfo {

    private static func bundle(_ key: String) -> String {
        let info = Bundle.main.infoDictionary?[key] as? String
        return info ?? ""
    }

    public static var name: String {
        return AppInfo.bundle("CFBundleName")
    }

    public static var version: String {
        return AppInfo.bundle("CFBundleShortVersionString")
    }

    public static var build: String {
        return AppInfo.bundle("CFBundleVersion")
    }

    public static var bundleId: String {
        return AppInfo.bundle("CFBundleIdentifier")
    }

}
