<cfset testVar = "View Current Exam Locations:" />
<cfoutput>
	<h1 class="mt-5">#testVar#</h1>

	<ul>
		<cfloop array="#currentLocations#" index="p">
			<li>#p.getCenterName()# in #p.getCity()#, #p.getState()#</li>
		</cfloop>
	</ul>

	<h1 class="mt-5">Add locations for this exam:</h1>

	<h3>Test: #exam.getName()#</h3>



	<form action = "index.cfm?route=add_location" method = "post">
		<div class="form-group">
			<label for="location">Choose a Location to Add:</label>
			<input type="hidden" id="examid" name="examid" value="#exam.getId()#"/>
			<select id="locationid" name="locationid" class="custom-select" size="3">
				<cfloop array="#locations#" index="e">
					<option value="#e.getId()#">#e.getCenterName()# in #e.getCity()#, #e.getState()#</option>
				</cfloop>
			</select>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	  </form>

</cfoutput>
<a href= "index.cfm?route=home">Return</a>
