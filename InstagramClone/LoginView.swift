// LoginView.swift
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            VStack {
                Spacer()

                // Logo/App Name
                Image(systemName: "camera.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.blue)
                    .padding(.bottom, 20)

                Text("Instagram Clone")
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

                // Password Field
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.bottom, 20)

                // Login Button
                Button(action: {
                    // TODO: Implement login logic
                    print("Attempting to log in with email: \(email)")
                }) {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                .padding(.bottom, 20)

                Spacer()

                // Register Navigation Link
                NavigationLink(destination: RegistrationView()) {
                    Text("Don't have an account? Sign Up.")
                        .font(.callout)
                        .foregroundColor(.blue)
                }
                .padding(.bottom)
            }
            .navigationBarHidden(true) // Hide navigation bar for full screen login
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
