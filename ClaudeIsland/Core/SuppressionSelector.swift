//
//  SuppressionSelector.swift
//  ClaudeIsland
//
//  Manages sound suppression selection state for the settings menu
//

import Combine
import Foundation

@MainActor
class SuppressionSelector: ObservableObject {
    static let shared = SuppressionSelector()

    @Published var isPickerExpanded: Bool = false

    private let optionCount = 3
    private let rowHeight: CGFloat = 44

    private init() {}

    var expandedPickerHeight: CGFloat {
        guard isPickerExpanded else { return 0 }
        return CGFloat(optionCount) * rowHeight + 8
    }
}
