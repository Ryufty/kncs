<!--S:modal/modal_maintain_classes-->
    <!-- Portfolio Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl">
                            </div>
                        </div>
                    </div>
    
                <!--S:maintain_classes-->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2>Maintain Classes</h2>
                                <h3 class="item-intro text-muted">Individual Work</h3>
                
                                <address class="text-right">
                                        <a href="#team">
                                            <string>Sang Min Lee</string>(124-192-154)
                                            <img class="img-circle" src="public/img/team/2.jpg" alt="..." style="width:32px;height:32px;margin-bottom:0" >
                                        </a>
                                </address>
                
                                <article class="text-left" style="margin-top: 4em;">
    
                                    <h4>Lab8: System Use Case Diagram</h4>
                                    <img class="img-responsive img-centered click-img btn-modal-img" src="media/sys366-group9-lab8-SangminLee.png" alt="">
                                    <p>You can download the file <a href="downloads/sys366-group9-lab8-SangminLee.uml" download>here</a>.</p>
    
                                    <h4>Lab9: System Use Case Specification: 
                                        <span class="section-subheading text-capitalize text-muted">ScheduleClasses</span>
                                    </h4>
    
                                    <div class="text-left">

                                        <dl class="row use-case-desc">
                                            <dt class="col-md-12">
                                                <h5 class="section-heading">Brief Description:</h5>
                                            </dt>
                                            <dd class="col-md-12">
                                                <div class="col-md-11">This use case enables the ClassOrganizer to create a new class into a specific date and time, which include assigning instructor and requesting supplies and tools for the class.</div>
                                            </dd>
                                        </dl>
                                    
                                        <dl class="row use-case-desc">
                                            <dt class="col-md-12">
                                                <h5 class="section-heading">Pre-Conditions:</h5>
                                            </dt>
                                            <dd class="col-md-12">
                                                <ul>
                                                    <li class="col-md-12">All Classes are already saved in the system include the information of required supplies and tools.</li>
                                                    <li class="col-md-12">All available Instructors are already saved in the system.</li>
                                                    <li class="col-md-12">All Classroom are already saved in the system.</li>
                                                    <li class="col-md-12">The ClassOrganizer is logged into the system with a valid id and password.</li>
                                                    <li class="col-md-12">The system displays the main menu.</li>
                                                </ul>
                                            </dd>
                                        </dl>
    
                                        <dl class="row use-case-desc">
                                            <dt class="col-md-12">
                                                <h5 class="section-heading">Scenario Dialogue:</h5>
                                            </dt>
                                            <dd class="col-md-12 inner-table">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered">
                                                        <thead class="bg-darkest-gray text-muted">
                                                            <tr><th>#</th><th>Actor (ClassOrganizer)</th><th>System</th><th>Data Used</th></tr>
                                                        </thead>
                                                        <tbody class="text-left">
                                                            <tr><td>#1</td><td>Request  'Schedule Class' menu.</td><td>Retrieve available classes.<br/>
                                                                    Retrieve available instructors.<br/>
                                                                    Retrieve available classroom.<br/>
                                                                    Display available class list  with the timetable.<br/>
                                                                    </td><td>class<br/>
                                                                            timetable
                                                                            </td></tr>
                                                            <tr><td>#2</td><td>Select an empty timeslot in the timetable.</td><td>Provide a blank new class form.</td><td>date<br/>
                                                                    time
                                                                    </td></tr>
                                                            <tr><td>#3</td><td>Fill in the form with a class choose in available classes.</td><td>Retrieve the class information include required supplies and tools information</td><td>class name<br/>
                                                                    supplies<br/>
                                                                    tools
                                                                    </td></tr>
                                                            <tr><td>#4</td><td>Fill in the form with a instructor choose in available instructors.</td><td>Retrieve the instructor information.</td><td>instructor</td></tr>
                                                            <tr><td>#5</td><td>Fill in the form with  a classroom choose in available classrooms.</td><td>Retrieve the classroom information.</td><td>classroom</td></tr>
                                                            <tr><td>#6</td><td>Request to save the form</td><td>Validate the timeslot availability.<br/>
                                                                    If it is unavailable, display error.<br/>
                                                                    Call SendOrderSupplies.<br/>
                                                                    Call SendRentTools.<br/>
                                                                    Validate the instructor availability.<br/>
                                                                    If it is unavailable change class status to 'pending' and call a Call SendHireInstructors.<br/>
                                                                    Save the schedule for the class.<br/>
                                                                    Display a summary of class and confirm add another class.<br/>
                                                                    </td><td>date<br/>
                                                                    time<br/>
                                                                    class name<br/>
                                                                    classroom<br/>
                                                                    supplies status<br/>
                                                                    tools staus<br/>
                                                                    instructor
                                                                    </td></tr>
                                                            <tr><td>#7</td><td>loop #2 ~ #6</td><td>loop #2 ~ #6</td><td></td></tr>
                                                            <tr><td>#8</td><td>Request to complete schedule.</td><td>Display to main menu.</td><td></td></tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </dd>
                                        </dl>
                                        
                                        <dl class="row use-case-desc">
                                            <dt class="col-md-12">
                                                <h5 class="section-heading">Post-Conditions:</h5>
                                            </dt>
                                            <dd class="col-md-12">
                                                <ul>
                                                    <li>The status of Supplies in the schedule will be updated when StockSupplies finished.</li>
                                                    <li>The status of Tools in the schedule will be updated when StockTools finished.</li>
                                                    <li>The status of Instructor in the schedule will be updated when Instructor is hired.</li>
                                                </ul>
                                            </dd>
                                        </dl>

                                        <dl class="row use-case-desc">
                                            <dt class="col-md-12">
                                                <h5 class="section-heading">Data Used Organization:</h5>
                                            </dt>
                                            <dd class="col-md-12">
                                                
                                                <fieldset class="col-md-3 entity">
                                                    <legend>Instructor</legend>
                                                    <ul>
                                                        <li>name</li>
                                                    </ul>
                                                </fieldset>
                                                
                                                <fieldset class="col-md-3 entity">
                                                    <legend>Classroom</legend>
                                                    <ul>
                                                        <li>name</li>
                                                    </ul>
                                                </fieldset>
                                                
                                                <fieldset class="col-md-3 entity">
                                                    <legend>Class</legend>
                                                    <ul>
                                                        <li>name</li>
                                                        <li>supplies</li>
                                                        <li>tools</li>
                                                    </ul>
                                                </fieldset>
    
                                                <fieldset class="col-md-3 entity">
                                                    <legend>Timetable</legend>
                                                    <ul>
                                                        <li>date</li>
                                                        <li>time</li>
                                                        <li>className</li>
                                                        <li>instructor</li>
                                                        <li>classroom</li>
                                                        <li>supplyStatus</li>
                                                        <li>toolStatus</li>
                                                    </ul>
                                                </fieldset>
                                            </dd>
                                        </dl>
    
                                    </div>
    
                                    <p>You can download the file <a href="downloads/sys366-group9-lab9-SangminLee.docx" download>here</a>.</p>
    
                                    
                                    <h4>Lab10: Business Rules</h4>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered">
                                            <thead class="bg-darkest-gray text-muted">
                                                <tr><th>Rule#</th><th>Description</th></tr>
                                            </thead>
                                            <tbody class="text-left">
                                                <tr><td>BR6</td><td>The Classroom must not be double booked.</td></tr>
                                                <tr><td>BR7</td><td>One class must be designed maximum 10 students</td></tr>
                                                <tr><td>BR8</td><td>One class time must be designed for running 1 - 2 hours.</td></tr>
                                                <tr><td>BR9</td><td>Class materials must be prepared until the class begins.</td></tr>
                                                <tr><td>BR10</td><td>All payment must be paid with one of cash, Interac/debit, MasterCard and Visa.</td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p>You can download the file <a href="downloads/sys366-group9-lab10-SangminLee.docx" download>here</a>.</p>
    
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!--E:maintain_classes-->
    
                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                
                </div>
            </div>
        </div>
    <!--E:modal/modal_maintain_classes-->