<cfset testVar = "Create a New Exam:">
<cfoutput>
  <h3 style = "margin-top: 80px">#testVar#</h3>
</cfoutput>
<cfoutput>
  <!--- <cfif isDefined("rc.message") and NOT isEmpty(rc.message)>
    <div class="alert alert-danger" role="alert">
        #rc.message#
    </div>
</cfif> --->
<form action="index.cfm?route=do_exam" method="post">
    <div class="form-group row">
        <label for="name" class="col-sm-2 col-form-label">Exam name:</label>
        <div class="col-sm-6">
            <input id="name" name="name" type="text" class="form-control" placeholder="Enter name of exam">
        </div>
    </div>
    <div class="form-group row">
        <label for="age" class="col-sm-2 col-form-label">Minimum Age:</label>
        <div class="col-sm-6">
            <input type="text" id="age" name="age" placeholder="Enter Minimum Age to take Exam" class="form-control">  
        </div>
    </div>
    <fieldset class="form-group">
        <div class="row">
        <legend class="col-form-label col-sm-2 pt-0">License Required:</legend>
        <div class="col-sm-6">
            <div class="form-check">
            <input class="form-check-input" type="radio" id="licenseRequired" name="licenseRequired" value="Yes">
            <label class="form-check-label" for="licenseRequired">
                Yes
            </label>
            </div>
            <div class="form-check">
            <input class="form-check-input" type="radio" id="licenseRequired" name="licenseRequired" value="No">
            <label class="form-check-label" for="gridRadios2">
                No
            </label>
            </div>
        </div>
        </div>
    </fieldset> 
    <div class="form-group">
      <label for="desc" class="col-sm-2 col-form-label">Enter Exam Description:</label>
      <textarea class="form-control" name="desc" id="desc" rows="4" placeholder="Enter a description of the exam"></textarea>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>      
</form>

</cfoutput>
<a href= "index.cfm?route=home">Return</a>

