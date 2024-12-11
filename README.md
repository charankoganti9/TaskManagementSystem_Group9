# TaskManagementSystem_Group9

## Overview
The **Task Management System** is a web-based application designed to streamline task allocation, tracking, and completion among teams. It provides an intuitive interface and role-specific functionalities for Admins, Supervisors, and Employees to ensure effective team coordination and productivity.

---

## Features

### User Roles
- **Admin**: 
  - Register users (Supervisors and Employees).
  - Assign tasks and track progress.
  - Update task statuses and provide feedback.

- **Supervisor**: 
  - Assign tasks to Employees.
  - Add remarks and prioritize tasks.
  - Track the progress of assigned tasks.

- **Employee**:
  - Accept assigned tasks.
  - Update task statuses upon completion.
  - View priority levels and remarks.

### Core Functionalities
1. **User Registration and Login**:
   - Secure user authentication.
   - Registration with required details, including user roles and profile images.

2. **Task Allocation and Acceptance**:
   - Admin and Supervisors can assign tasks.
   - Employees accept or reject tasks, with real-time updates for Admins.

3. **Task Management**:
   - Priority tagging (High, Medium, Low).
   - Remarks for detailed instructions.
   - Status updates visible to all relevant roles.

4. **Notifications**:
   - Alerts for pending tasks, deadlines, and overdue tasks.

---

## Technology Stack
- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Java, Servlets,JDBC
- **Database**: MySQL
- **Development Tools**: Eclipse

---

## Setup Instructions

### Prerequisites
- Java Development Kit (JDK 8 or higher)
- Database system (e.g., MySQL/PostgreSQL)
- Web browser (e.g., Chrome, Firefox)

### Steps to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repository/task-management-system.git](https://github.com/charankoganti9/TaskManagementSystem_Group9/tree/main/TaskManager
   ```
2. Navigate to the project directory:
   ```bash
   cd task-management-system
   ```
3. Configure the database:
   - Create a database in your SQL system.
   - Update database credentials in the configuration file (`db_config.properties`).

4. Build and run the application:
   - Compile the Java backend using your IDE or the command line.
   - Launch the application server.

5. Open the application in your browser:
   - Default URL: `http://localhost:8080`
