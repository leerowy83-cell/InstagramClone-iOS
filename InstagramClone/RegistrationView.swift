// RegistrationView.swift
import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var varpassword = ""
    @State private var fullName = ""
    @State private var username = ""

    @Environment(\.presentationMode) var presentationMode // To dismiss the view

    var body: some View {
        VStack {
            Spacer()

            // App Name/Logo - Can be reused from LoginView
            Text("Register")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)

            // Email Field
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                .padding(.horizontal)
                .padding(.bottom, 10)

            // Full Name Field
            TextField("Full Name", text: $fullName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.words)
                .padding(.horizontal)
                .padding(.bottom, 10)

            // Username Field
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .padding(.horizontal)
                .padding(.bottom, 10)

            // Password Field
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.bottom, 20)

            // Register Button
            Button(action: {
                // TODO: Implement registration logic
                print("Attempting to register with email: \(email), username: \(username)")
                // After successful registration, you might want to dismiss this view
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            .padding(.bottom, 20)

            Spacer()

            // Already have an account? Back to login
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Already have an account? Log In.")
                    .font(.callout)
                    .foregroundColor(.green)
            }
            .padding(.bottom)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
