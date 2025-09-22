<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Patient - Hospital Management System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        :root {
            --primary-color: #1a4d8c;
            --secondary-color: #e0f2fe;
            --dark-color: #2c3e50;
            --light-bg: #f8f9fa;
            --form-bg: #ffffff;
            --border-color: #e0e0e0;
        }
        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--light-bg);
            color: var(--dark-color);
        }
        .sidebar {
            height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            width: 250px;
            background: var(--primary-color);
            padding-top: 70px;
            color: white;
            transition: all 0.3s ease;
        }
        .sidebar a, .sidebar .dropdown-item {
            color: #d1e5f4;
            padding: 15px 25px;
            display: flex;
            align-items: center;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        .sidebar a:hover, .sidebar .dropdown-item:hover {
            background: rgba(255, 255, 255, 0.1);
            color: white;
            transform: translateX(5px);
        }
        .sidebar a svg {
            margin-right: 15px;
        }
        .content {
            margin-left: 250px;
            padding: 30px;
            transition: all 0.3s ease;
        }
        .navbar {
            z-index: 1000;
        }
        .navbar .navbar-brand {
            font-weight: 700;
        }
        footer {
            background: var(--dark-color);
            color: #95a5a6;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.08);
            border: none;
            transition: all 0.3s ease;
        }
        h1.main-heading {
            font-weight: 600;
            color: var(--dark-color);
        }
        .text-muted {
            color: #7f8c8d !important;
        }
        .form-control, .form-select {
            border-radius: 8px;
            border-color: var(--border-color);
            padding: 10px 15px;
            box-shadow: none !important;
            transition: all 0.2s ease;
        }
        .form-control:focus, .form-select:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.25rem rgba(26, 77, 140, 0.25) !important;
        }
        .btn-primary {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
            font-weight: 600;
            border-radius: 8px;
            transition: background-color 0.2s ease;
        }
        .btn-primary:hover {
            background-color: #153e77;
            border-color: #153e77;
        }
        .btn-outline-secondary {
            border-color: var(--border-color);
            color: var(--dark-color);
            font-weight: 500;
            border-radius: 8px;
            transition: all 0.2s ease;
        }
        .btn-outline-secondary:hover {
            background-color: var(--border-color);
            color: var(--dark-color);
        }
        .legend {
            font-size: 1.1rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-activity"><path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.93a2 2 0 0 1 1.66.76L12 7l-2.41-2.24a2 2 0 0 1 1.66-.76H20a2 2 0 0 1 2 2v14z"></path></svg>
                Hospital Dashboard
            </a>
            <div class="ms-auto search-form">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                    </button>
                </form>
            </div>
        </div>
    </nav>

    <div class="sidebar">
        <div class="sidebar-header">
            <h5 class="mb-0">Main Menu</h5>
        </div>
        <a href="dashboard.jsp">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
            Home
        </a>

        <div class="dropdown">
            <a href="#" class="d-flex align-items-center dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path></svg>
                Doctors
            </a>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item" href="add_doctor.jsp">Add Doctor</a></li>
                <li><a class="dropdown-item" href="select_all_doctors.jsp">Select All Doctors</a></li>
            </ul>
        </div>
        
        <div class="dropdown">
            <a href="#" class="d-flex align-items-center dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                Patients
            </a>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item" href="Patient/savePatient">Add Patient</a></li>
                <li><a class="dropdown-item" href="select_all_patients.jsp">Select All Patients</a></li>
            </ul>
        </div>

        <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path></svg>
            Pharmacy
        </a>
        <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
            Appointments
        </a>
        <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path></svg>
            Departments
        </a>
        <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
            Staff
        </a>
        <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg>
            Billing
        </a>
        <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="3"></circle><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1.07 1.07A1.65 1.65 0 0 0 15 19.4a1.65 1.65 0 0 0 1.82.33l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1.07-1.07A1.65 1.65 0 0 0 12 19.4a1.65 1.65 0 0 0-1.82-.33l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33 1.65 1.65 0 0 0 1.07-1.07A1.65 1.65 0 0 0 12 15a1.65 1.65 0 0 0-1.07 1.07"></path></svg>
            Settings
        </a>
        <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path><polyline points="10 17 15 12 10 7"></polyline><line x1="15" y1="12" x2="3" y2="12"></line></svg>
            Logout
        </a>
    </div>

    <div class="content">
        <div class="container-fluid">
            <h1 class="main-heading mt-4">Add New Patient</h1>
            <p class="text-muted">Fill out the form below to register a new patient.</p>

            <div class="card p-5 shadow-sm rounded-lg">
                <div class="card-body">
                    <h2 class="card-title fw-bold text-center text-primary mb-5">Patient Registration Form</h2>
                    <form action="addPatientServlet" method="post" class="needs-validation" novalidate>
                        
                        <div class="mb-5">
                            <h5 class="legend">Patient Details</h5>
                            <hr class="mt-0">
                            <div class="row g-4">
                                <div class="col-md-6">
                                    <label for="name" class="form-label">Full Name</label>
                                    <input type="text" class="form-control" id="name" name="name" required>
                                    <div class="invalid-feedback">
                                        Please provide a valid name.
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="email" class="form-label">Email Address</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                    <div class="invalid-feedback">
                                        Please provide a valid email.
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label for="gender" class="form-label">Gender</label>
                                    <select id="gender" name="gender" class="form-select" required>
                                        <option value="" selected disabled>Select Gender</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Other">Other</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a gender.
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label for="age" class="form-label">Age</label>
                                    <input type="number" class="form-control" id="age" name="age" min="0" required>
                                    <div class="invalid-feedback">
                                        Please provide a valid age.
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label for="phone" class="form-label">Phone Number</label>
                                    <input type="tel" class="form-control" id="phone" name="phone" pattern="[0-9]{10}" required>
                                    <div class="invalid-feedback">
                                        Please provide a 10-digit phone number.
                                    </div>
                                </div>
                                <div class="col-12">
                                    <label for="address" class="form-label">Address</label>
                                    <textarea class="form-control" id="address" name="address" rows="3" required></textarea>
                                    <div class="invalid-feedback">
                                        Please provide an address.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="mb-5">
                            <h5 class="legend">Medical Information</h5>
                            <hr class="mt-0">
                            <div class="row g-4">
                                <div class="col-md-6">
                                    <label for="disease" class="form-label">Disease</label>
                                    <input type="text" class="form-control" id="disease" name="disease" required>
                                    <div class="invalid-feedback">
                                        Please enter the disease.
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="admitDate" class="form-label">Admit Date</label>
                                    <input type="date" class="form-control" id="admitDate" name="admitDate" required>
                                    <div class="invalid-feedback">
                                        Please select an admit date.
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="discharge_date" class="form-label">Discharge Date</label>
                                    <input type="date" class="form-control" id="discharge_date" name="dischargeDate">
                                    <div class="invalid-feedback">
                                        Please select a discharge date if applicable.
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="assignedDoctorId" class="form-label">Assigned Doctor ID</label>
                                    <input type="number" class="form-control" id="assignedDoctorId" name="assignedDoctorId">
                                    <div class="invalid-feedback">
                                        Please enter the Doctor ID.
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="roomNumber" class="form-label">Room Number</label>
                                    <input type="number" class="form-control" id="roomNumber" name="roomNumber" required>
                                    <div class="invalid-feedback">
                                        Please enter the room number.
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="status" class="form-label">Status</label>
                                    <select id="status" name="status" class="form-select" required>
                                        <option value="" selected disabled>Select Status</option>
                                        <option value="true">Active</option>
                                        <option value="false">Inactive</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a status.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button type="reset" class="btn btn-outline-secondary btn-lg me-md-2">Clear Form</button>
                            <button type="submit" class="btn btn-primary btn-lg">Add Patient</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <footer>
            <p class="mb-0">© 2025 Hospital Management System | Designed with ❤️ by Gemini</p>
        </footer>
    </div>

    <script>
    (function () {
      'use strict'
      var forms = document.querySelectorAll('.needs-validation')
      Array.prototype.slice.call(forms)
        .forEach(function (form) {
          form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
              event.preventDefault()
              event.stopPropagation()
            }
            form.classList.add('was-validated')
          }, false)
        })
    })()
    </script>

</body>
</html>