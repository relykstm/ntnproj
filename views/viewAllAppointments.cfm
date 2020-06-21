<cfset testVar = "All Appointments:">
<cfoutput>
    <h1>#testVar#</h1>
        <div style="width: 1025px; height: 450px; background-color: azure; overflow: auto;">
            <cfloop array="#appts#" index = "e">
                <div class="card" style="width: 18rem; margin: 25px; display: inline-block;">
                    <div class="card-body">
                        <p class="card-text">ID: #e.getId()#</p>
                        <p class="card-text">Exam Date: #e.getExamDate().dateFormat('mm-dd-yyyy')#</p>
                        <h5 class="card-title">#e.getName()#</h5>
                        <h6 class="card-subtitle mb-2 text-muted">#e.getCenterName()#</h6>
                        <h6 class="card-subtitle mb-2 text-muted">#e.getCity()#, #e.getState()#</h6>
                        <p class="card-text">#e.getTesterName()#</p>
                        <p class="card-text">#e.getTesterEmail()#</p>
                    </div>
                </div>

            </cfloop>
        </div>
</cfoutput>
<br>
<a href= "index.cfm?route=home">Return</a>