<cfset testVar = "View Current Tests for this location Location:" />
<cfoutput>
    <h1 class="mt-5">#testVar#</h1>
    <h3>Testing Center Location: #center.getCenterName()#</h3>

	<ul>
		<cfloop array="#currentExams#" index="p">
			<li>#p.getName()#</li>
		</cfloop>
	</ul>

	<h1 class="mt-5">Add locations for this exam:</h1>



	<form action = "index.cfm?route=add_exam" method = "post">
		<div class="form-group">
			<label for="location">Choose a Location to Add:</label>
			<input type="hidden" id="centerid" name="centerid" value="#center.getId()#"/>
			<select id="examid" name="examid" class="custom-select" size="3">
				<cfloop array="#exams#" index="e">
					<option value="#e.getId()#">#e.getName()#</option>
				</cfloop>
			</select>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	  </form>



</cfoutput>
<a href= "index.cfm?route=viewschedule">Click here to view all scheduled Exams</a>
