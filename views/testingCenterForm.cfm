<cfset testVar = "Add a Testing Center">
<cfoutput>
    <h1>#testVar#</h1>

    <form action="index.cfm?route=do_center" method="post">
        <div class="form-group row">
            <label for="centerName" class="col-sm-2 col-form-label">Testing Center Name:</label>
            <div class="col-sm-6">
                <input id="centerName" name="centerName" type="text" class="form-control" placeholder="Enter name of Testing Center">
            </div>
        </div>
        <div class="form-group row">
            <label for="city" class="col-sm-2 col-form-label">Testing Center City:</label>
            <div class="col-sm-6">
                <input type="text" id="city" name="city" placeholder="Enter the Testing Center City" class="form-control">  
            </div>
        </div>
        <div class="form-group row">
            <label for="state" class="col-sm-2 col-form-label">Testing Center State:</label>
            <div class="col-sm-6">
                <input type="text" id="state" name="state" placeholder="Enter the Testing Center State" class="form-control">  
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>      
    </form>


</cfoutput>
<a href= "index.cfm?route=home">Return</a>

