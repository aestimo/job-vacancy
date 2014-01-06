# Learning manager app

The Learning manager app runs on Padrino, ActiveRecord and whatever database to manage the following:

1. It will help learning managers manage:
    a. Students == How they learn i.e. lessons, how they pay, how they attend lessons, how they get
                    certified, how they do exams...they can even check their results, payment status e.t.c
    b. Trainers == How they teach i.e. they can check their lesson allocations, how much they've earned for teaching
                    track the exams they've set, check their track records in terms of student results e.t.c.
    c. Payments == The app will help the primary user track they payments coming in i.e. those made by students and the
                    payments going out i.e. those made to trainers. It will be able to print receipts and even enable students
                    to pay in installements.

    d. Exams/Certificates ==  The app will be able to plan exams, set them, manage students taking the exams and can even auto-mark
                                the exams (against pre-defined criteria) and also issue out result slips and certificates.

2. Other functionalities that the app will have are as follows:
    a. Managing user rights and roles -- the available roles are: student, manager, admin and trainer
        + student - can access lessons, sit for CATs/Exams, check results, appeal results and obtain e-certificates (via getyourcertificate.com)
        + manager - the app assumes this is the owner of the institution, therefore they can access everything on read-only basis
        + admin - within the app, this role allows the holder to access everything (within their domain i.e. mounted app
        + trainer -

The app is hosted online and should work in such a way that the primary app serves up unlimited mounted apps that will form the basis
of 'independent' sub-apps that individual schools, colleges e.t.c. can run. These mounted apps should run on sub