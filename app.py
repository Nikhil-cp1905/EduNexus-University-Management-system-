#pip install flask-mysqldb'
from flask import Flask, render_template, request, redirect, url_for, session, jsonify
from flask_mysqldb import MySQL
import MySQLdb.cursors
from datetime import date
import re
import os
import sys
import webbrowser
from datetime import date
import base64
from flask import request, jsonify
    
app = Flask(__name__)
   
app.secret_key = 'abcd21234455'  
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'shelter*1'
app.config['MYSQL_DB'] = 'srm_unims'
  
mysql = MySQL(app)
  
@app.route('/')

#login screen will appear first
@app.route('/login', methods =['GET', 'POST'])
def login():
    message = ''
    if request.method == 'POST' and 'email' in request.form and 'password' in request.form:
        email = request.form['email']        
        password = request.form['password']
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM srm_user WHERE status="active" AND email = % s AND password = % s', (email, password, ))
        user = cursor.fetchone()
        if user:
            session['loggedin'] = True
            session['userid'] = user['id']
            session['name'] = user['first_name']
            session['email'] = user['email']
            session['role'] = user['type']
            mesage = 'Logged in successfully !'            
            return redirect(url_for('dashboard'))
        else:
            message = 'Please enter correct email / password !'
    return render_template('login.html', message = message)
    
@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('userid', None)
    session.pop('email', None)
    session.pop('name', None)
    session.pop('role', None)
    return redirect(url_for('login'))
    
@app.route('/profile')
def profile():
     if 'loggedin' in session:
        user_id = session['userid'] 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM srm_user WHERE id = %s', (user_id,))
        users = cursor.fetchall() 
        
        return render_template("profile.html", users = users)
     return redirect(url_for('login'))  

@app.route("/dashboard", methods =['GET', 'POST'])
def dashboard():
    if 'loggedin' in session:        
        return render_template("dashboard.html")
    return redirect(url_for('login'))    

#-------- Teacher section -----------#

@app.route("/teacher", methods =['GET', 'POST'])
def teacher():
    if 'loggedin' in session:   
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT t.teacher_id, t.teacher, s.subject FROM srm_teacher t LEFT JOIN srm_subjects s ON s.subject_id = t.subject_id')
        teachers = cursor.fetchall() 
           
        cursor.execute('SELECT * FROM srm_subjects')
        subjects = cursor.fetchall()  
        return render_template("teacher.html", teachers = teachers, subjects = subjects)
    return redirect(url_for('login')) 
    
@app.route("/edit_teacher", methods =['GET'])
def edit_teacher():
    if 'loggedin' in session:
        teacher_id = request.args.get('teacher_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT t.teacher_id, t.teacher, t.subject_id as t_sid, s.subject FROM srm_teacher t LEFT JOIN srm_subjects s ON s.subject_id = t.subject_id WHERE t.teacher_id = %s', (teacher_id,))
        teachers = cursor.fetchall() 
        
        cursor.execute('SELECT * FROM srm_subjects')
        subjects = cursor.fetchall()  
        
        return render_template("edit_teacher.html", teachers = teachers, subjects = subjects)
    return redirect(url_for('login'))  
    
@app.route("/save_teacher", methods =['GET', 'POST'])
def save_teacher():
    if 'loggedin' in session:    
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)        
        if request.method == 'POST' and 'teacher_name' in request.form and 'specialization' in request.form:
            teacher_name = request.form['teacher_name'] 
            specialization = request.form['specialization']             
            action = request.form['action']             
            
            if action == 'updateTeacher':
                teacherid = request.form['teacherid'] 
                cursor.execute('UPDATE srm_teacher SET teacher = %s, subject_id = %s WHERE teacher_id =% s', (teacher_name, specialization, (teacherid, ), ))
                mysql.connection.commit()        
            else: 
                cursor.execute('INSERT INTO srm_teacher (`teacher`, `subject_id`) VALUES (%s, %s)', (teacher_name, specialization))
                mysql.connection.commit()        
            return redirect(url_for('teacher'))        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('teacher'))        
    return redirect(url_for('login')) 
    
@app.route("/delete_teacher", methods =['GET'])
def delete_teacher():
    if 'loggedin' in session:
            teacher_id = request.args.get('teacher_id') 
            cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
            cursor.execute('DELETE FROM srm_teacher WHERE teacher_id = % s', (teacher_id, ))
            mysql.connection.commit()   
            return redirect(url_for('teacher'))
    return redirect(url_for('login'))
    
#------------- Subject session ---------#
    
@app.route("/subject", methods =['GET', 'POST'])
def subject():
    if 'loggedin' in session:       
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM srm_subjects')
        subjects = cursor.fetchall()          
        return render_template("subject.html", subjects = subjects)
    return redirect(url_for('login'))
    
@app.route("/save_subject", methods =['GET', 'POST'])
def save_subject():
    if 'loggedin' in session:    
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)        
        if request.method == 'POST' and 'subject' in request.form and 's_type' in request.form and 'code' in request.form:
            subject = request.form['subject'] 
            s_type = request.form['s_type'] 
            code = request.form['code']               
            action = request.form['action']             
            
            if action == 'updateSubject':
                subjectid = request.form['subjectid'] 
                cursor.execute('UPDATE srm_subjects SET subject = %s, type = %s, code = %s WHERE subject_id  =% s', (subject, s_type, code, (subjectid, ), ))
                mysql.connection.commit()        
            else: 
                cursor.execute('INSERT INTO srm_subjects (`subject`, `type`, `code`) VALUES (%s, %s, %s)', (subject, s_type, code, ))
                mysql.connection.commit()        
            return redirect(url_for('subject'))        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('subject'))        
    return redirect(url_for('login')) 

@app.route("/edit_subject", methods =['GET'])
def edit_subject():
    if 'loggedin' in session:
        subject_id = request.args.get('subject_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT subject_id, subject, type, code FROM srm_subjects WHERE subject_id = %s', (subject_id,))
        subjects = cursor.fetchall() 
        return render_template("edit_subject.html", subjects = subjects)
    return redirect(url_for('login'))    
    
@app.route("/delete_subject", methods =['GET'])
def delete_subject():
    if 'loggedin' in session:
        subject_id = request.args.get('subject_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('DELETE FROM srm_subjects WHERE subject_id = % s', (subject_id, ))
        mysql.connection.commit()   
        return redirect(url_for('subject'))
    return redirect(url_for('login'))

#------- Classes Section ---------#

@app.route("/classes", methods =['GET', 'POST'])
def classes():
    if 'loggedin' in session:  
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT c.id, c.name, s.section FROM srm_classes c LEFT JOIN srm_section s ON s.section_id = c.section LEFT JOIN srm_teacher t ON t.teacher_id = c.teacher_id')
        classes = cursor.fetchall() 
           
        cursor.execute('SELECT * FROM srm_section')
        sections = cursor.fetchall() 
        
        cursor.execute('SELECT * FROM srm_teacher')
        teachers = cursor.fetchall()
        
        return render_template("class.html", classes = classes, sections = sections, teachers = teachers)
    return redirect(url_for('login'))

@app.route("/edit_class", methods =['GET'])
def edit_class():
    if 'loggedin' in session:
        class_id = request.args.get('class_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT c.id, c.name, s.section, t.teacher FROM srm_classes c LEFT JOIN srm_section s ON s.section_id = c.section LEFT JOIN srm_teacher t ON t.teacher_id = c.teacher_id WHERE c.id = %s', (class_id,))
        classes = cursor.fetchall() 
        
        cursor.execute('SELECT * FROM srm_section')
        sections = cursor.fetchall() 
        
        cursor.execute('SELECT * FROM srm_teacher')
        teachers = cursor.fetchall()
        
        return render_template("edit_class.html", classes = classes, sections = sections, teachers = teachers)
    return redirect(url_for('login'))  

@app.route("/save_class", methods =['GET', 'POST'])
def save_class():
    if 'loggedin' in session:    
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)        
        if request.method == 'POST' and 'cname' in request.form:
            cname = request.form['cname'] 
            sectionid = request.form['sectionid']
            teacherid = request.form['teacherid']            
            action = request.form['action']             
            
            if action == 'updateClass':
                class_id = request.form['classid'] 
                cursor.execute('UPDATE srm_classes SET name = %s, section = %s, teacher_id = %s WHERE id  =%s', (cname, sectionid, teacherid, (class_id, ), ))
                mysql.connection.commit()        
            else: 
                cursor.execute('INSERT INTO srm_classes (`name`, `section`, `teacher_id`) VALUES (%s, %s, %s)', (cname, sectionid, teacherid))
                mysql.connection.commit()        
            return redirect(url_for('classes'))        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('classes'))        
    return redirect(url_for('login'))
    

@app.route("/delete_class", methods =['GET'])
def delete_class():
    if 'loggedin' in session:
        class_id = request.args.get('class_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('DELETE FROM srm_classes WHERE id = % s', (class_id, ))
        mysql.connection.commit()   
        return redirect(url_for('classes'))
    return redirect(url_for('login'))     


#------- Exams Section ---------#

@app.route("/exams", methods =['GET', 'POST'])
def exams():
    if 'loggedin' in session:  
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT e.exam_id, c.course_name, e.exam_date, e.total_marks FROM srm_exams e LEFT JOIN srm_courses c ON e.course_id = c.course_id')
        exams = cursor.fetchall() 
           
        cursor.execute('SELECT * FROM srm_courses')
        courses = cursor.fetchall() 
        
        return render_template("exams.html", exams = exams, courses = courses)
    return redirect(url_for('login'))

@app.route("/edit_exam", methods =['GET'])
def edit_exam():
    if 'loggedin' in session:
        exam_id = request.args.get('exam_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT e.exam_id, c.course_name, e.exam_date, e.total_marks FROM srm_exams e LEFT JOIN srm_courses c ON e.course_id = c.course_id WHERE e.exam_id = %s', (exam_id,))
        exams = cursor.fetchall() 
           
        cursor.execute('SELECT * FROM srm_courses')
        courses = cursor.fetchall() 
        
        return render_template("edit_exam.html", exams = exams, courses = courses)
    return redirect(url_for('login'))  

@app.route("/save_exam", methods =['GET', 'POST'])
def save_exam():
    if 'loggedin' in session:    
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
        if request.method == 'POST':
            course_id = request.form['course_id'] 
            exam_date = request.form['exam_date']
            total_marks = request.form['total_marks']            
            action = request.form['action']             

            if action == 'updateExam':
                exam_id = request.form['exam_id'] 
                cursor.execute('UPDATE srm_exams SET course_id = %s, exam_date = %s, total_marks = %s WHERE exam_id  =%s', (course_id, exam_date, total_marks, (exam_id, ), ))
                mysql.connection.commit()        
            else: 
                cursor.execute('INSERT INTO srm_exams (`course_id`, `exam_date`, `total_marks`) VALUES (%s, %s, %s)', (course_id, exam_date, total_marks))
                mysql.connection.commit()        
            return redirect(url_for('exams'))        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('exams'))        
    return redirect(url_for('login'))
    

@app.route("/delete_exam", methods =['GET'])
def delete_exam():
    if 'loggedin' in session:
        exam_id = request.args.get('exam_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('DELETE FROM srm_exams WHERE exam_id = % s', (exam_id, ))
        mysql.connection.commit()   
        return redirect(url_for('exams'))
    return redirect(url_for('login')) 

#------- Circular Section ---------#

@app.route("/circular", methods =['GET', 'POST'])
def circular():
    if 'loggedin' in session:  
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * from srm_circular')
        circulars = cursor.fetchall() 
         
        return render_template("circular.html", circulars = circulars)
    return redirect(url_for('login'))

@app.route("/edit_circular", methods =['GET'])
def edit_circular():
    if 'loggedin' in session:
        circular_id = request.args.get('circular_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM srm_circular WHERE circular_id = %s', (circular_id,))
        circulars = cursor.fetchall() 
           
   
        return render_template("edit_circular.html", circulars = circulars)
    return redirect(url_for('login'))  

@app.route("/save_circular", methods =['GET', 'POST'])
def save_circular():
    if 'loggedin' in session:    
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
        if request.method == 'POST':
            circular_id = request.form['circular_id'] 
            topic = request.form['topic']
            circular_date= request.form['circular_date']            
            action = request.form['action']             

            if action == 'updateCircular':
                circular_id = request.form['circular_id'] 
                cursor.execute('UPDATE srm_circular SET topic = %s, circular_date = %s WHERE circular_id  =%s', (topic, circular_date,  (circular_id, ), ))
                mysql.connection.commit()        
            else: 
                cursor.execute('INSERT INTO srm_circular (`topic`, `circular_date`) VALUES (%s, %s)', (topic, circular_date))
                mysql.connection.commit()        
            return redirect(url_for('circular'))        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('circular'))        
    return redirect(url_for('login'))
    

@app.route("/delete_circular", methods =['GET'])
def delete_circular():
    if 'loggedin' in session:
        circular_id = request.args.get('circular_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('DELETE FROM srm_circular WHERE circular_id = % s', (circular_id, ))
        mysql.connection.commit()   
        return redirect(url_for('circular'))
    return redirect(url_for('login')) 



#------- Library Section ---------#

@app.route("/library", methods =['GET', 'POST'])
def library():
    if 'loggedin' in session:  
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * from srm_library')
        books = cursor.fetchall() 
           
  
        return render_template("library.html", books = books)
    return redirect(url_for('login'))

@app.route("/edit_book", methods =['GET'])
def edit_book():
    if 'loggedin' in session:
        book_id = request.args.get('book_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM srm_library WHERE book_id = %s', (book_id,))
        books = cursor.fetchall() 
           
        
        return render_template("edit_library.html", books = books)
    return redirect(url_for('login'))  

@app.route("/save_book", methods =['GET', 'POST'])
def save_book():
    if 'loggedin' in session:    
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
        if request.method == 'POST':
            title = request.form['title'] 
            author = request.form['author'] 
            isbn = request.form['isbn'] 
            availability = request.form['availability'] 
          
            action = request.form['action']             

            if action == 'updateBook':
                book_id = request.form['book_id'] 
                cursor.execute('UPDATE srm_library SET title = %s, author = %s, isbn = %s, availability = %s WHERE book_id  =%s', (title, author, isbn, availability, (book_id, ), ))
                mysql.connection.commit()        
            else: 
                cursor.execute('INSERT INTO srm_library (`title`, `author`, `isbn`, `availability`) VALUES (%s, %s, %s, %s)', (title, author, isbn, availability))
                mysql.connection.commit()        
            return redirect(url_for('library'))        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('library'))        
    return redirect(url_for('login'))
    

@app.route("/delete_book", methods =['GET'])
def delete_book():
    if 'loggedin' in session:
        book_id = request.args.get('book_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('DELETE FROM srm_library WHERE book_id = % s', (book_id, ))
        mysql.connection.commit()   
        return redirect(url_for('library'))
    return redirect(url_for('login')) 

#--------- Graph -----------#
@app.route("/graph", methods =['GET', 'POST'])
def graph():
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute('SELECT c.course_id, c.course_name, COUNT(e.student_id) AS student_count FROM srm_courses c JOIN srm_enrollments e ON c.course_id = e.course_id GROUP BY c.course_id, c.course_name;')
    stud_count = cursor.fetchall() 
    
    return render_template("graph.html", stud_count = stud_count)

#--------- SECTIONS -----------#

@app.route("/sections", methods =['GET', 'POST'])
def sections():
    if 'loggedin' in session:      
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM srm_section')
        sections = cursor.fetchall()          
        return render_template("sections.html", sections = sections)
    return redirect(url_for('login')) 
    
@app.route("/edit_sections", methods =['GET'])
def edit_sections():
    if 'loggedin' in session:
        section_id = request.args.get('section_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM srm_section WHERE section_id = %s', (section_id,))
        sections = cursor.fetchall() 
        return render_template("edit_section.html", sections = sections)
    return redirect(url_for('login'))    
    
@app.route("/save_sections", methods =['GET', 'POST'])
def save_sections():
    if 'loggedin' in session:    
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)        
        if request.method == 'POST' and 'section_name' in request.form:
            section_name = request.form['section_name']                         
            action = request.form['action']             
            
            if action == 'updateSection':
                section_id = request.form['sectionid'] 
                cursor.execute('UPDATE srm_section SET section = %s WHERE section_id  =%s', (section_name, (section_id, ), ))
                mysql.connection.commit()        
            else: 
                cursor.execute('INSERT INTO srm_section (`section`) VALUES (%s)', (section_name, ))
                mysql.connection.commit()        
            return redirect(url_for('sections'))        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('sections'))        
    return redirect(url_for('login')) 
    
@app.route("/delete_sections", methods =['GET'])
def delete_sections():
    if 'loggedin' in session:
        section_id = request.args.get('section_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('DELETE FROM srm_section WHERE section_id = % s', (section_id, ))
        mysql.connection.commit()   
        return redirect(url_for('sections'))
    return redirect(url_for('login'))  

#------- Students section ---------#
    
@app.route("/student", methods =['GET', 'POST'])
def student():
    if 'loggedin' in session:       
        
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT s.id as id, s.admission_no, s.roll_no, s.name, s.photo as photo, c.name AS class, sec.section FROM srm_students s LEFT JOIN srm_section sec ON sec.section_id = s.section LEFT JOIN srm_classes c ON c.id = s.class')
        students = cursor.fetchall() 
       
        images = []
        for student in students:
            image_data = student['photo']
            if image_data:
                image_base64 = base64.b64encode(image_data).decode('utf-8')
                student['photo'] = image_base64
             
        
        cursor.execute('SELECT * FROM srm_classes')
        classes = cursor.fetchall() 
        
        cursor.execute('SELECT * FROM srm_section')
        sections = cursor.fetchall()
        
        return render_template("student.html", students = students, classes = classes, sections = sections)
    return redirect(url_for('login')) 
    
@app.route("/edit_student", methods =['GET'])
def edit_student():
    if 'loggedin' in session:
        student_id = request.args.get('student_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT s.id, s.admission_no, s.academic_year, s.roll_no, s.name, s.photo, s.dob, s.email, s.mobile, s.father_name,s.mother_name, s.admission_date, c.name AS class, sec.section FROM srm_students s LEFT JOIN srm_section sec ON sec.section_id = s.section LEFT JOIN srm_classes c ON c.id = s.class WHERE s.id = %s', (student_id,))
        students = cursor.fetchall() 
        
        cursor.execute('SELECT * FROM srm_classes')
        classes = cursor.fetchall() 
        
        cursor.execute('SELECT * FROM srm_section')
        sections = cursor.fetchall()
        
        return render_template("edit_student.html", students = students, classes = classes, sections = sections)
    return redirect(url_for('login'))  

@app.route("/save_student", methods =['GET', 'POST'])
def save_student():
    if 'loggedin' in session:    
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)        
        if request.method == 'POST' and 'sname' in request.form:
            
            action = request.form['action']          
            
            admission_no = request.form['admission_no'] 
            roll_no = request.form['roll_no']
            academic_year = request.form['academic_year']
            admission_date = request.form['admission_date']
            class_id = request.form['class_id']
            section_id = request.form['section_id']
            sname = request.form['sname']
            photo = request.files['photo']
            photo_blob = photo.read()
            gender = request.form['gender']
            dob = request.form['dob']
            email = request.form['email']
            mobile = request.form['mobile']
            address = request.form['address']
            fname = request.form['fname']
            mname = request.form['mname']

            
            if action == 'updateStudent':
                section_id = request.form['sectionid'] 
                cursor.execute('UPDATE srm_section SET section = %s WHERE section_id  =%s', (section_name, (section_id, ), ))
                mysql.connection.commit()        
            else: 
                cursor.execute('INSERT INTO srm_students (`name`,`gender`,`dob`,`photo`,`mobile`,`email`,`address`,`father_name`,`mother_name`,`admission_no`,`roll_no`,`class`,`section`,`admission_date`,`academic_year`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', (sname,gender,dob,photo_blob,mobile,email,address,fname,mname, admission_no,roll_no,class_id,section_id,admission_date,academic_year))
                                                                                                                                                                                                                                                            
                mysql.connection.commit()        
            return redirect(url_for('student'))        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('student'))        
    return redirect(url_for('login'))     
    
@app.route("/delete_student", methods =['GET'])
def delete_student():
    if 'loggedin' in session:
        student_id = request.args.get('student_id') 
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('DELETE FROM srm_students WHERE id = % s', (student_id, ))
        mysql.connection.commit()   
        return redirect(url_for('student'))
    return redirect(url_for('login'))  


@app.route("/attendance", methods =['GET', 'POST'])
def attendance():
    if 'loggedin' in session:  
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        
        cursor.execute('SELECT * FROM srm_classes')
        classes = cursor.fetchall() 
        
        cursor.execute('SELECT * FROM srm_section')
        sections = cursor.fetchall()

        cursor.execute('SELECT * FROM srm_students')
        students = cursor.fetchall() 
        
        return render_template("attendance.html", classes = classes, sections = sections, students = students)
    return redirect(url_for('login')) 
    
    
@app.route("/getClassAttendance", methods =['GET', 'POST'])
def getClassAttendance():
    if 'loggedin' in session:  
        if request.method == 'POST' and 'classid' in request.form and 'sectionid' in request.form:
        
            classid = request.form['classid']
            sectionid = request.form['sectionid']
            
            cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)   
            
            cursor.execute('SELECT * FROM srm_classes')
            classes = cursor.fetchall() 
            
            cursor.execute('SELECT * FROM srm_section')
            sections = cursor.fetchall() 

            currentDate = date.today().strftime('%Y/%m/%d')
                     
            cursor.execute('SELECT s.id, s.name, s.photo, s.gender, s.dob, s.mobile, s.email, s.current_address, s.father_name, s.mother_name,s.admission_no, s.roll_no, s.admission_date, s.academic_year, a.attendance_status, a.attendance_date FROM srm_students as s LEFT JOIN srm_attendance as a ON s.id = a.student_id WHERE s.class = '+classid+' AND s.section = '+sectionid)              
            students = cursor.fetchall()   
                      
            return render_template("attendance.html", classes = classes, sections = sections, students = students, classId = classid, sectionId = sectionid)        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('attendance'))        
    return redirect(url_for('login')) 
   
@app.route("/save_attendance", methods =['GET', 'POST'])
def save_attendance():
    if 'loggedin' in session:    
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)        
        if request.method == 'POST' and 'studentid' in request.form:
            studentid = request.form['studentid']
            classid = request.form['classid']            
            sectionid = request.form['sectionid']      
            status = request.form['status']
            attandance_date = date.today()
            
            cursor.execute('INSERT INTO srm_attendance (`student_id`, `class_id`, `section_id`,`attendance_status`,`attendance_date` ) VALUES (%s, %s, %s, %s, %s)', (studentid, classid, sectionid, status, attandance_date))
            mysql.connection.commit()        
            return redirect(url_for('attendance'))        
        elif request.method == 'POST':
            msg = 'Please fill out the form field !'        
        return redirect(url_for('attendance'))        
    return redirect(url_for('login'))

@app.route("/report", methods =['GET', 'POST'])
def report():
    if 'loggedin' in session:  
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        
        cursor.execute('SELECT * FROM srm_classes')
        classes = cursor.fetchall() 
        
        cursor.execute('SELECT * FROM srm_section')
        sections = cursor.fetchall()
        
        return render_template("report.html", classes = classes, sections = sections)
    return redirect(url_for('login'))    


    
if __name__ == "__main__":
    #app.run()
    #os.execv(__file__, sys.argv)
    # Open the browser automatically
    webbrowser.open("http://127.0.0.1:5000")
    
    # Run the app
    app.run()
    os.execv(__file__, sys.argv)

