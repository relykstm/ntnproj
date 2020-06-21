<cfset testVar = "Welcome to National Testing Network">
<cfoutput>
	<h1 class="mt-5">#testVar#</h1>
	<br>
	<a href= "index.cfm?route=scheduler">Click here to schedule a time to take an Exam</a>
	<br>
	<br>
	<br>
	<h3>Admin Tasks:</h3>
	<a href= "index.cfm?route=examform">Add a new Exam</a>
	<br>
	<a href= "index.cfm?route=testingcenterform">Add a Testing Center</a>
	<br>
	<a href= "index.cfm?route=viewschedule">View all Exams and All Testing Centers</a>
	<br>
	<a href= "index.cfm?route=viewAllAppointments">View All Appointments</a>

</cfoutput>




