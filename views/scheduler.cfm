<cfset testVar = "Please select the exam you would like to schedule:">
<cfoutput>
    <h1>#testVar#</h1>
    
    <table class="table">
		<thead class="thead-dark">
		  <tr>
			<th scope="col">Id</th>
			<th scope="col">Test Name</th>
			<th scope="col">Minimum Age</th>
			<th scope="col">Drivers License Required</th>
			<th scope="col">Description</th>
		  </tr>
		</thead>
		<tbody>
		<cfloop array="#exams#" index = "e">
		  <tr>
            <th scope="row">#e.getId()#</th>
            <td><a href = "index.cfm?route=scheduleExamOne&amp;id=#e.getId()#">#e.getName()#</a></td>
			<td>#e.getAge()#</td>
			<td>#e.getLicenseRequired()#</td>
			<td>#e.getDesc()#</td>
		  </tr>
		</cfloop>
		</tbody>
	  </table>

</cfoutput>
<a href= "index.cfm?route=home">Return</a>
