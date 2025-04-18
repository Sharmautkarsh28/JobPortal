# Job Portal Web Application
A simple and elegant Job Portal website built using Java Servlets, JSP, JDBC, MySQL, and CSS. This platform allows job seekers to browse and apply for jobs, and enables admins to manage job postings efficiently.
---
## Technologies Used
- *Frontend*: HTML, CSS, JSP
- *Backend*: Java Servlets, JDBC
- *Database*: MySQL
- *Server*: Apache Tomcat 11
- *Jakarta EE 10* (using jakarta.servlet.* packages)
---
## Setup Instructions
1. *Clone the repository*
2. *Open in Eclipse/IDE* with Apache Tomcat 11 configured
3. *Import MySQL Connector JAR*:  
   - Download from: [https://dev.mysql.com/downloads/connector/j/](https://dev.mysql.com/downloads/connector/j/)
   - Add mysql-connector-java-x.x.xx.jar to your project’s lib folder or build path
4. *Set up the Database*:  
   - Create a database named jobportal
   - Run the provided SQL script or create tables manually
5. *Update DB Credentials* in DBConnection.java
6. *Deploy on Tomcat*
7. Visit: http://localhost:8080/JobPortal/
