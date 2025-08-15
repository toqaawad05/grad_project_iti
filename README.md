<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Korean Skincare Store – Auth Module</title>
</head>
<body style="font-family: Arial, sans-serif; line-height: 1.6;">

    <h1>🛍️ Korean Skincare Store – Auth Module</h1>
    <p>This project is part of a Korean Skincare Store application.<br>
    It contains <strong>Login</strong> and <strong>Sign Up</strong> screens built using <strong>Flutter</strong> and <strong>Firebase Authentication</strong> with <strong>Bloc</strong> for state management.</p>

    <hr>

    <h3>1️⃣ Login Screen</h3>
    <img src="screenshots/login.png" alt="Login Screen" width="300">
    <p><strong>Description:</strong></p>
    <ul>
        <li>Contains two input fields: <strong>Email</strong> and <strong>Password</strong>.</li>
        <li><strong>Login</strong> button to authenticate the user.</li>
        <li>A link to navigate to the <strong>Sign Up</strong> screen.</li>
        <li>Email and password validation before submitting.</li>
    </ul>

    <h3>2️⃣ Sign Up Screen</h3>
    <img src="screenshots/signup.png" alt="Sign Up Screen" width="300">
    <p><strong>Description:</strong></p>
    <ul>
        <li>Contains fields: <strong>Full Name</strong>, <strong>Email</strong>, <strong>Password</strong>, and <strong>Confirm Password</strong>.</li>
        <li><strong>Create Account</strong> button to register a new user.</li>
        <li>A link to navigate to the <strong>Login</strong> screen.</li>
        <li>Data validation such as matching passwords and valid email format.</li>
    </ul>

    <hr>

    <h2>🛠️ Tech Stack</h2>
    <ul>
        <li><strong>Flutter</strong> (Dart)</li>
        <li><strong>Firebase Authentication</strong></li>
        <li><strong>Bloc</strong> (State Management)</li>
    </ul>

    <hr>

    <h2>📂 Project Structure</h2>
    <pre>
lib/
  blocs/         # Bloc files for authentication state
  screens/       # Login & Sign Up UI screens
  themes/        # App theme and colors
  main.dart      # App entry point
    </pre>

    <hr>

    <h2>🚀 Getting Started</h2>
    <ol>
        <li><strong>Clone the repository</strong>
            <pre>git clone https://github.com/USERNAME/grad_project_iti.git</pre>
        </li>
        <li><strong>Install dependencies</strong>
            <pre>flutter pub get</pre>
        </li>
        <li><strong>Run the app</strong>
            <pre>flutter run</pre>
        </li>
    </ol>

    <hr>

    <h2>🔑 Firebase Setup</h2>
    <ol>
        <li>Create a new project in <a href="https://console.firebase.google.com/" target="_blank">Firebase Console</a>.</li>
        <li>Enable <strong>Email/Password</strong> authentication.</li>
        <li>Download the <code>google-services.json</code> (Android) and <code>GoogleService-Info.plist</code> (iOS) files and place them in the correct directories.</li>
    </ol>

</body>
</html>
