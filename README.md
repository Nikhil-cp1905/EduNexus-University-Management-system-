# 🎓 University Management System

A comprehensive University Management System designed to digitize and streamline core administrative and academic operations such as student enrollment, course registration, attendance tracking, and results management.

## 📌 Features

- 🔐 Multi-level User Authentication System (Admin, Faculty, Student)
- 🧑‍🎓 Student Registration and Profile Management with Photo Upload
- 👨‍🏫 Teacher Management with Subject Specialization
- 📚 Subject and Course Management
- 📆 Class and Section Management
- 📝 Attendance Tracking System
- 📋 Exam Management and Results Recording
- 📖 Library Management (Book Tracking)
- 📮 Circular/Announcement Distribution
- 📊 Interactive Data Visualization and Reports
- 🧩 Modular Flask Routes for Easy Extension

## 🛠️ Tech Stack

| Layer | Technology |
|-------------|-------------------|
| Frontend | HTML/CSS, Bootstrap, Jinja2 Templates |
| Backend | Python (Flask) |
| Database | MySQL |
| Versioning | Git & GitHub |
| Tools | VSCode, Flask Development Server |

## 📁 Project Structure

```
University-Management-System/
│ 
├── app.py                  # Main Flask application file
├── templates/              # Jinja2 HTML templates
│   ├── login.html          # Authentication interface
│   ├── dashboard.html      # Main dashboard
│   ├── profile.html        # User profile management
│   ├── teacher.html        # Teacher management
│   ├── student.html        # Student management
│   ├── subject.html        # Subject management
│   ├── class.html          # Class management
│   ├── exams.html          # Exam management
│   ├── attendance.html     # Attendance tracking
│   ├── library.html        # Library management
│   ├── circular.html       # Circulars management
│   ├── sections.html       # Sections management
│   ├── report.html         # Reporting interface
│   ├── graph.html          # Data visualization
│   └── edit_*.html         # Edit forms for various modules
├── static/                 # CSS, JS, and image files
├── database/               # SQL scripts for MySQL setup
├── README.md               # Project overview
└── LICENSE                 # (Optional) License file
```

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/university-management-system.git
cd university-management-system
```

### 2. Setup the Environment

* Install required packages:
   ```bash
   pip install flask flask-mysqldb
   ```
* Set up MySQL database:
   * Create a database named `srm_unims`
   * Import database structure from the SQL files in the `/database` directory
   * Configure database connection in `app.py`:
     ```python
     app.config['MYSQL_HOST'] = 'localhost'
     app.config['MYSQL_USER'] = 'root'
     app.config['MYSQL_PASSWORD'] = 'your_password'
     app.config['MYSQL_DB'] = 'srm_unims'
     ```

### 3. Run the Project

* Start the Flask development server:
  ```bash
  python app.py
  ```
* The application will automatically open in your default web browser at `http://127.0.0.1:5000`
* Log in with your credentials (default admin: check database setup)

## 🔒 User Roles

| Role | Permissions |
|------|-------------|
| Admin | Full access to all system modules including user management, teacher management, student management, class management, attendance, library, and reports |
| Faculty | Manage attendance, exams, grades, view class schedules, access library and circulars |
| Student | View personal information, attendance records, exam results, access library and circulars |

The role-based access is controlled through the `session['role']` variable after login authentication.

## 📷 Screenshots

*(Key screenshots to be added:)*

1. **Login Screen**
   * User authentication interface

2. **Dashboard**
   * Main system overview with navigation

3. **Student Management**
   * Student registration form
   * Student list view

4. **Attendance Tracking**
   * Class-wise attendance interface
   * Attendance reports

5. **Exam Management**
   * Exam scheduling interface
   * Results recording

6. **Library Management**
   * Book inventory interface
   * Book management form

7. **Analytics & Reports**
   * Enrollment statistics visualization
   * Various data reports

## ✅ System Modules

### Core Modules:
1. **User Authentication System**
   - Login/logout functionality with session management
   - Profile management

2. **Student Management**
   - Student registration with photo upload
   - Academic details tracking (admission no, roll no, year)
   - Personal information management

3. **Teacher Management**
   - Teacher registration and subject specialization
   - Faculty assignment to classes

4. **Subject & Course Management**
   - Subject creation with type and code
   - Course tracking and enrollment statistics

5. **Class & Section Management**
   - Class creation and assignment of teachers
   - Section organization

6. **Attendance System**
   - Date-wise attendance tracking
   - Class and section-wise attendance reports

7. **Exam Management**
   - Exam scheduling
   - Total marks and results recording

8. **Library Management**
   - Book inventory with title, author, ISBN
   - Availability tracking

9. **Circulars & Announcements**
   - Date-based announcement system
   - Topic organization

10. **Reporting & Analytics**
    - Course enrollment statistics visualization
    - Various administrative reports

## ✅ Future Improvements

* Mobile App Integration (Android/iOS)
* Real-Time Notifications
* Biometric-based Attendance
* Enhanced Analytics Dashboard with Advanced Visualizations
* Payment Gateway for Fee Management
* Student Portal for Self-Service
* Parent Portal for Monitoring Student Progress
* Online Assignment Submission System
* Integration with Learning Management System (LMS)

## 💾 Database Structure

The system uses a MySQL database with the following key tables:

- `srm_user` - User authentication and profile information
- `srm_students` - Complete student records with personal and academic details
- `srm_teacher` - Teacher information with subject specialization
- `srm_subjects` - Subject information with type and codes
- `srm_classes` - Class information with assigned teachers
- `srm_section` - Section information for organizational structure
- `srm_attendance` - Daily attendance records
- `srm_exams` - Exam schedules and details
- `srm_courses` - Course information
- `srm_enrollments` - Student course enrollments
- `srm_library` - Book inventory and availability tracking
- `srm_circular` - Announcements and circulars

## 📄 License

This project is open-source and available under the MIT License.

## 👥 Contributors

* **Nikhil** – Full Stack Developer / Project Lead
* *(Add team members with roles)*

## 📞 Contact

For queries or contributions, contact:
📧 nikhil.dev@example.com
🌐 GitHub Profile
