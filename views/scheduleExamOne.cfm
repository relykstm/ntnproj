
<cfoutput>
    <h1>Where would you like to take the #exam.getName()# exam?</h1>

	<form action = "index.cfm?route=add_appt" method = "post">
		<div class="form-group col-sm-6">
			<label for="location">Select from available locations:</label>
            
            <input type="hidden" id="examid" name="examid" value="#exam.getId()#"/>


            <select id="centerid" name="centerid" class="custom-select" size="3">
				<cfloop array="#currentLocations#" index="e">
					<option value="#e.getId()#">#e.getCenterName()# in #e.getCity()#, #e.getState()#</option>
				</cfloop>
            </select>
            
            <label for="testerName" class="col-sm-2 col-form-label">Please Enter you Full Name:</label>
            <div class="col-sm-6">
                <input id="testerName" name="testerName" type="text" class="form-control">
            </div>

            <label for="testerEmail" class="col-sm-2 col-form-label">Please Enter your Email:</label>
            <div class="col-sm-6">
                <input id="testerEmail" name="testerEmail" type="text" class="form-control">
            </div>

            <label for="examDate" class="col-sm-2 col-form-label">When would you like to take exam:</label>
            <div class="col-sm-6">
                <input id="examDate" name="examDate" type="date" class="form-control">
            </div>


		</div>
		<button type="submit" class="btn btn-primary">Schedule Appointment</button>
	  </form>


      <a href= "index.cfm?route=scheduler">Click here to return to selecting the exam</a>
</cfoutput>
<br>
<a href= "index.cfm?route=home">Return Home</a>




<!--- <a href= "index.cfm?route=scheduleExamOne&amp;id=#exam.getId()#">Click here to return to selecting the exam</a> --->