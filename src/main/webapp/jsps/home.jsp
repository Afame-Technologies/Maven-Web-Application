```jsp
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="java.net.InetAddress" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Sunil - Home Page</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f7fb;
            color: #222;
            line-height: 1.6;
        }

        .header {
            background: #0b3d91;
            color: white;
            text-align: center;
            padding: 40px 20px;
        }

        .header h1 {
            font-size: 32px;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 18px;
        }

        .container {
            width: 90%;
            max-width: 1100px;
            margin: 30px auto;
        }

        .card {
            background: white;
            padding: 25px;
            margin-bottom: 25px;
            border-radius: 10px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.10);
        }

        .card h2 {
            color: #0b3d91;
            margin-bottom: 15px;
        }

        .info-grid {
            display: grid;
            grid-template-columns:
                repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .info-box {
            background: #eef4ff;
            padding: 20px;
            border-left: 5px solid #0b3d91;
            border-radius: 6px;
        }

        .info-box h3 {
            color: #0b3d91;
            margin-bottom: 10px;
        }

        .server-info {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 6px;
            font-family: Consolas, monospace;
        }

        .service {
            text-align: center;
        }

        .service a {
            display: inline-block;
            background: #0b3d91;
            color: white;
            text-decoration: none;
            padding: 12px 25px;
            border-radius: 6px;
            margin-top: 10px;
        }

        .service a:hover {
            background: #06275e;
        }

        .footer {
            background: #17202a;
            color: white;
            text-align: center;
            padding: 25px;
            margin-top: 40px;
        }

        @media (max-width: 600px) {

            .header h1 {
                font-size: 24px;
            }

            .container {
                width: 95%;
            }

        }

    </style>

</head>

<body>

<!-- HEADER -->

<div class="header">

    <h1>Welcome to Sunil's Profile</h1>

    <p>
        M.Tech AI & ML | Software & DevOps Enthusiast
    </p>

</div>


<div class="container">


    <!-- ABOUT ME -->

    <div class="card">

        <h2>About Me</h2>

        <p>
            Hello! I am <strong>Sunil</strong>, a Computer Science
            professional with a strong interest in Software Development,
            DevOps, Cloud Computing, Artificial Intelligence and
            Machine Learning.
        </p>

        <br>

        <p>
            I have completed my 
            <strong>M.Tech in Artificial Intelligence & Machine Learning</strong>
            and working on developing practical skills in
            Java, Python, DevOps, AWS, Docker, Jenkins, Git and CI/CD.
        </p>

    </div>


    <!-- EDUCATION -->

    <div class="card">

        <h2>Education</h2>

        <div class="info-grid">

            <div class="info-box">

                <h3>M.Tech</h3>

                <p>
                    Artificial Intelligence & Machine Learning
                </p>

                <p>
                    Osmania University
                </p>

                <p>
                    Expected Graduation: 2026
                </p>

            </div>


            <div class="info-box">

                <h3>B.Tech</h3>

                <p>
                    Computer Science & Engineering
                </p>

                <p>
                    Specialization: AI & ML
                </p>

            </div>

        </div>

    </div>


    <!-- TECHNICAL SKILLS -->

    <div class="card">

        <h2>Technical Skills</h2>

        <div class="info-grid">

            <div class="info-box">

                <h3>Programming</h3>

                <p>
                    Python, Java, JavaScript
                </p>

            </div>


            <div class="info-box">

                <h3>DevOps</h3>

                <p>
                    Git, GitHub, Jenkins, Docker,
                    CI/CD, Maven
                </p>

            </div>


            <div class="info-box">

                <h3>Cloud</h3>

                <p>
                    AWS, EC2, S3
                </p>

            </div>


            <div class="info-box">

                <h3>Web Technologies</h3>

                <p>
                    HTML, CSS, JSP, Django,
                    React.js
                </p>

            </div>

        </div>

    </div>


    <!-- PROJECTS -->

    <div class="card">

        <h2>Projects</h2>

        <div class="info-grid">

            <div class="info-box">

                <h3>Automated Video Intelligence System</h3>

                <p>
                    Video transcription, contextual summarization
                    and sentiment analysis using AI/ML.
                </p>

            </div>


            <div class="info-box">

                <h3>Vehicle Number Plate Detection</h3>

                <p>
                    Python-based number plate detection using
                    OpenCV and OCR.
                </p>

            </div>


            <div class="info-box">

                <h3>Student Marks Prediction</h3>

                <p>
                    Machine learning based student performance
                    prediction system.
                </p>

            </div>

        </div>

    </div>


    <!-- SERVER INFORMATION -->

    <div class="card">

        <h2>Server Information</h2>

        <div class="server-info">

            <%
                InetAddress inetAddress =
                        InetAddress.getLocalHost();

                String serverHostName =
                        inetAddress.getHostName();

                String serverIP =
                        inetAddress.getHostAddress();

                String clientIP =
                        request.getRemoteAddr();

                String clientHost =
                        request.getRemoteHost();
            %>

            <p>
                <strong>Server Host Name:</strong>
                <%= serverHostName %>
            </p>

            <p>
                <strong>Server IP Address:</strong>
                <%= serverIP %>
            </p>

            <p>
                <strong>Client IP Address:</strong>
                <%= clientIP %>
            </p>

            <p>
                <strong>Client Host Name:</strong>
                <%= clientHost %>
            </p>

        </div>

    </div>


    <!-- SERVICES -->

    <div class="card service">

        <h2>Application Services</h2>

        <p>
            Access the employee details service:
        </p>

        <a href="services/employee/getEmployeeDetails">
            Get Employee Details
        </a>

    </div>


</div>


<!-- FOOTER -->

<div class="footer">

    <p>
        <strong>Sunil</strong>
    </p>

    <p>
        M.Tech AI & ML | Software & DevOps
    </p>

    <p>
        Java | Python | AWS | Docker | Jenkins | CI/CD
    </p>

    <br>

    <p>
        <small>
            © 2026 Sunil. All Rights Reserved.
        </small>
    </p>

</div>

</body>

</html>
```
