
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Welcome to DevOps WebApp</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: #f0f0f0;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 800px;
      margin: 80px auto;
      background: white;
      padding: 30px;
      text-align: center;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      border-radius: 12px;
    }
    h1 {
      color: #2c3e50;
    }
    img {
      width: 200px;
      margin-top: 20px;
    }
    a.button {
      display: inline-block;
      margin-top: 30px;
      padding: 12px 24px;
      background: #3498db;
      color: white;
      text-decoration: none;
      border-radius: 8px;
      font-size: 16px;
    }
    a.button:hover {
      background: #2980b9;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>🚀 Welcome to Docker + Jenkins Maven WebApp</h1>
    <p>This is a sample DevOps-enabled Java web application with CI/CD pipeline.</p>
    
    <img src="logo.png" alt="DevOps Logo" />

    <br/>
    <a class="button" href="hello">Click to Say Hello</a>
  </div>
</body>
</html>
