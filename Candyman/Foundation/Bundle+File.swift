//
//  Bundle+File.swift
//  Candyman
//
//  Created by Carmen on 23.02.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import Foundation

extension Bundle {

    public enum FileType: String {
        case json
        case png
        case jpeg
        case xml
    }

    /// Loads the data from a given file resource and file type
    public func load(file: String, fileType: FileType) -> Data {
        guard let url = self.url(forResource: file, withExtension: fileType.rawValue) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        return data
    }
}
