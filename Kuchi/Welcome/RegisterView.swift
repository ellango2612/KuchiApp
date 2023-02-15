//
//  RegisterView.swift
//  Kuchi
//
//  Created by Ella Ngo on 2/14/23.
//

import SwiftUI

struct KuchiTextStyle: TextFieldStyle {
    public func _body(
        configuration: TextField<Self._Label>) -> some View {
            return configuration
        }
}

struct RegisterView: View {
// EnvironmentObject atttibute because we'll inject an instance of it once for the whole app, and retrieve it from the environment anywhere it's needed
  @EnvironmentObject var userManager: UserManager
    // this state is for handling focus
  @FocusState var nameFieldFocused: Bool
    
  // @State var name: String = ""
    var body: some View {
        VStack {
            WelcomeMessageView()
            // this won't be needed with the new bordered method: ModifiedContent(content: TextField("Type your name...", text: $name),
            //                modifier: BorderedViewModifier()
            //)
            TextField("Type your name...", text: $userManager.profile.name)
            // focus state is when soft keyboard is shown?
                .focused($nameFieldFocused)
            // when focusField is .name, give this text field focus.
            // when this text field gets focus, set focusField to .name
                .submitLabel(.done) // word to end action and submit is 'done'
                .onSubmit(registerUser)
                .bordered()
                .padding() // pads the left and right sides of the textfield
// add the # of chars entered small underneath - green is abled and red otherwise
            HStack {
                
                Spacer()
                
                Text("\(userManager.profile.name.count)")
                    .font(.caption)
                    .foregroundColor(
                        userManager.isUserNameValid() ? .green : .red)
                // adds some space between # and edge of phone
                    .padding(.trailing)
            }
            // add some space from the OK bottom
            .padding(.bottom)
            
            HStack {
                Spacer() // to push the toggle to the right
                
                Toggle(isOn: $userManager.settings.rememberUser) {
                    Text("Remember me") // appear before the toggle
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .fixedSize() // tells the toggle to pick an ideal size
            }
            
            Button(action: self.registerUser) {
                    HStack {
                      Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                      Text("OK")
                        .font(.body)
                        .bold()
                    }
                  }
                  .bordered()
            // check if name entered if >= 3 characters, if not, button is disabled
                  .disabled(!userManager.isUserNameValid())
        }
    }
}

extension RegisterView {
    func registerUser() {
        userManager.persistProfile()
    }
}
