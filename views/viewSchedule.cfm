<cfset testVar = "Current Exams:">
<cfset testVar2 = "Current Testing Centers:">
<cfoutput>
	<h1>#testVar#</h1>
	
	<table class="table">
		<thead class="thead-dark">
		  <tr>
			<th scope="col">Id</th>
			<th scope="col">Test Name</th>
			<th scope="col">Minimum Age</th>
			<th scope="col">License Required</th>
			<th scope="col">Description</th>
			<th scope="col">Add</th>
		  </tr>
		</thead>
		<tbody>
		<cfloop array="#exams#" index = "e">
		  <tr>
			<th scope="row">#e.getId()#</th>
			<td>#e.getName()#</td>
			<td>#e.getAge()#</td>
			<td>#e.getLicenseRequired()#</td>
			<td>#e.getDesc()#</td>
			<td><a href = "index.cfm?route=eachExam&amp;id=#e.getId()#"><button>Add a Location for this Test</button></a></td>
		  </tr>
		</cfloop>
		</tbody>
	  </table>

	  <h1>#testVar2#</h1>
	  
	  <table class="table">
		<thead class="thead-dark">
		  <tr>
			<th scope="col">Id</th>
			<th scope="col">Testing Center Name</th>
			<th scope="col">City</th>
			<th scope="col">State</th>
			<th scope="col">Add</th>
		  </tr>
		</thead>
		<tbody>
		<cfloop array="#centers#" index = "e">
		  <tr>
			<th scope="row">#e.getId()#</th>
			<td>#e.getCenterName()#</td>
			<td>#e.getCity()#</td>
			<td>#e.getState()#</td>
			<td><a href = "index.cfm?route=eachCenter&amp;id=#e.getId()#"><button>Add a Test to this Locaiton</button></a></td>
		  </tr>
		</cfloop>
		</tbody>
	  </table>
</cfoutput>
<a href= "index.cfm?route=home">Return</a>
