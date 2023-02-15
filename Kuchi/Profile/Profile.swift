//
//  Profile.swift
//  Kuchi
//
//  Created by Ella Ngo on 2/14/23.
//

/// Profile of the learner using the app.
struct Profile : Codable {
  /// (Selected) name of the learner.
  var name: String
  
  /// Initializes a new `Profile` with an empty `name`.
  init() {
    self.name = ""
  }
  
  /// Initializes a new `Profile` with a specified name.
  ///  - Parameters:
  ///     - name Name of the user profile.
  init(named name: String) {
    self.name = name
  }
}
