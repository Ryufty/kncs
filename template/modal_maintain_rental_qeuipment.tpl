<!--S:modal/modal_maintain_rental_qeuipment-->
    <!-- Portfolio Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
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
                                <h2>Maintain List of Rental Equipment</h2>
                                <h3 class="item-intro text-muted">Individual Work</h3>
                
                                <address class="text-right">
                                        <a href="#team">
                                            <string>Guozhao Liang</string>(040-695-157)
                                            <img class="img-circle" src="public/img/team/1.jpg" alt="..." style="width:32px;height:32px;margin-bottom:0" >
                                        </a>
                                </address>
                
                                <article class="text-left" style="margin-top: 4em;">
    
                                    <h4>Lab8: System Use Case Diagram</h4>
                                    <img class="img-responsive img-centered click-img btn-modal-img" src="media/sys366-group9-lab8-GuozhaoLiang.png" alt="">
                                    <p>You can download the file <a href="downloads/sys366-group9-lab8-GuozhaoLiang.uml" download>here</a>.</p>
    
                                    <h4>Lab9: Use Case Specification</h4>
    
                                    <div class="text-left">
                                        <div class="row use-case-desc">
                                            <dl class="col-md-12">
                                                <dt>
                                                    <h5 class="section-heading">Brief Description:</h5>
                                                </dt>
                                                <dd class="row">
                                                    <div class="col-md-9"> This use case enables the RentalManager to keep in track and modify the availability of the equipment for rent, the condition of the equipment, the status of the rented equipment and to add new equipment for rent.</div>
                                                </dd>
                                            </dl>
                                        </div>
    
                                        
                                        <h5 class="section-heading">Section 1:
                                            <span class="section-subheading text-capitalize text-muted">ScheduleEquipmentRental</span>
                                        </h5>
                                        <dl class="use-case-desc">
                                            <dd class="row paragraph">
                                                <label class="col-md-3">Pre-Conditions:</label>
                                                <ul>
                                                    <li class="col-md-12">RentalManager is logged into the system.</li>
                                                </ul>
                                            </dd>
    
                                            <dd class="row">
                                                <label class="col-md-3">Scenario Dialogue:</label>
                                            </dd>
    
                                            <dd class="row inner-table">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered">
                                                        <thead class="bg-darkest-gray text-muted">
                                                            <tr><th>#</th><th>Actor (RentalManager)</th><th>System</th><th>Data Used</th></tr>
                                                        </thead>
                                                        <tbody class="text-left">
                                                            <tr><td>#1</td><td>RentalManager selects an equipment</td><td>Display the equipment’s Information.</td><td>EquipmentID<br>EquipmentName<br>CustomerID<br>CustomerName<br>CustomerAddress</td></tr>
                                                            <tr><td>#2</td><td>RentalManager selects rent option</td><td>The system prompt insert starts date and end date of rental period.</td><td>EquipmentID<br>StartDate<br>EndDate</td></tr>
                                                            <tr><td>#3</td><td>RentalManager selects customer’s name option</td><td>Display input customer’s name option.</td><td>CustomerID<br>CustomerName</td></tr>
                                                            <tr><td>#4</td><td>RentalManager selects customer’s address option</td><td>Display input customer’s address option.</td><td>CustomerID<br>CustomerAddress</td></tr>
                                                            <tr><td>#5</td><td>RentalManager selects to confirm all the inputs or changes</td><td>The system display the equipment status and information have been changed.</td><td>EquipmentID<br>EquipmentName<br>CustomerID<br>CustomerName<br>CustomerAddress<br>StartDate<br>EndDate</td></tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </dd>
    
                                            <dd class="row">
                                                <label class="col-md-3">Post-Conditions:</label>
                                                <ul>
                                                    <li class="col-md-12">The equipment information is updated.</li>
                                                    <li class="col-md-12">The equipment status is updated.</li>
                                                </ul>
                                            </dd>
    
                                        </dl>
    
                                        <h5 class="section-heading">Section 2:
                                            <span class="section-subheading text-capitalize text-muted">Data Used Organization</span>
                                        </h5>
                                    
                                        <dl class="use-case-desc">
                                            <dd class="row">
                                                <fieldset class="col-md-3 entity">
                                                    <legend>Customers</legend>
                                                    <ul>
                                                        <li>CustomerID</li>
                                                        <li>CustomerName</li>
                                                        <li>CustomerAddress</li>
                                                        <li>RentalID</li>
                                                    </ul>
                                                </fieldset>
    
                                                <fieldset class="col-md-3 entity">
                                                    <legend>Equipments</legend>
                                                    <ul>
                                                        <li>EquipmentID</li>
                                                        <li>EquipmentName</li>
                                                    </ul>
                                                </fieldset>
    
                                                <fieldset class="col-md-3 entity">
                                                    <legend>Rentals</legend>
                                                    <ul>
                                                        <li>RentalID</li>
                                                        <li>StartDate</li>
                                                        <li>EndDate</li>
                                                        <li>EquipmentID</li>
                                                        <li>RepairDate</li>
                                                    </ul>
                                                </fieldset>
                                            </dd>
                                        </dl>
    
                                    </div>
    
                                    <p>You can download the file <a href="downloads/sys366-group9-lab9-GuozhaoLiang.docx" download>here</a>.</p>
    
                                    
                                    <h4>Lab10: Business Rules</h4>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered">
                                            <thead class="bg-darkest-gray text-muted">
                                                <tr><th>Rule#</th><th>Description</th></tr>
                                            </thead>
                                            <tbody class="text-left">
                                                <tr><td>BR1</td><td>Every equipment must have an ID</td></tr>
                                                <tr><td>BR2</td><td>Every equipment must have a name</td></tr>
                                                <tr><td>BR3</td><td>A rented equipment cannot have 2 customers in the renting period</td></tr>
                                                <tr><td>BR4</td><td>A rented equipment cannot have 2 addresses in the renting period</td></tr>
                                                <tr><td>BR5</td><td>All equipment in renting status must have a start date and end date for the renting period</td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p>You can download the file <a href="downloads/sys366-group9-lab10-GuozhaoLiang.docx" download>here</a>.</p>
    
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
    <!--E:modal/modal_maintain_rental_qeuipment-->