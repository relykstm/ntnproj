<!--- <cfset ORMReload() /> --->
<cfparam name="URL.route" default="home" />

<cfinclude template="views/_header.cfm" />

<cfswitch expression="#URL.route#">

	<cfcase value="home">
        <cfinclude template="views/home.cfm" />
	</cfcase>
	
	<cfcase value="examform">
        <cfinclude template="views/examForm.cfm" />
	</cfcase>


	<cfcase value="add_appt">
		<cfset exam = EntityLoadByPK("Exam", '#FORM.examid#') />
		<cfset center = EntityLoadByPK("TestingCenter", '#FORM.centerid#') />
		<cfset appt = EntityNew("Appointment",
			{ 
				testerName: '#FORM.testerName#', 
				testerEmail:'#FORM.testerEmail#',
				examDate: '#FORM.examDate#',

				name: '#exam.getName()#', 
				age: '#exam.getAge()#',
				licenseRequired: '#exam.getLicenseRequired()#',
				desc: '#exam.getDesc()#',
				
				centerName: '#center.getCenterName()#',
				city: '#center.getCity()#',
				state: '#center.getState()#'
			}) 
		/>
		<cfset EntitySave(appt) />
        <cfinclude template="views/home.cfm" />
	</cfcase>



	<cfcase value="viewAllAppointments">
		<cfset appts = entityLoad("Appointment", {}, "id") />
        <cfinclude template="views/viewAllAppointments.cfm" />
	</cfcase>


	<cfcase value="scheduleExamOne">
		<cfparam name="URL.id" default="0" />
		<cfset exam = EntityLoadByPK("Exam", URL.id) />
		<cfset currentLocations = []/>
		<cfset joins = entityLoad("centers_exams", {examid: URL.id}) />
		<cfloop array="#joins#" index="p">
			<cfset temp = EntityLoadByPK("TestingCenter", p.getCenterId()) />
			<cfscript>
				ArrayAppend(currentLocations, temp);
			</cfscript>
		</cfloop>
        <cfinclude template="views/scheduleExamOne.cfm" />
	</cfcase>
	
	<cfcase value="scheduler">
		<cfset exams = entityLoad("Exam", {}, "id") />
        <cfinclude template="views/scheduler.cfm" />
	</cfcase>
	
	<cfcase value="testingcenterform">
        <cfinclude template="views/testingCenterForm.cfm" />
	</cfcase>

	<cfcase value="eachCenter">
		<cfparam name="URL.id" default="0" />
		<cfset center = EntityLoadByPK("TestingCenter", URL.id) />
		<cfset exams = entityLoad("Exam", {}, "id") />
		<cfset currentExams = []/>
		<cfset joins = entityLoad("centers_exams", {centerid: URL.id}) />

		<cfloop array="#joins#" index="p">
			<cfset temp = EntityLoadByPK("Exam", p.getExamId()) />
			<cfscript>
				ArrayAppend(currentExams, temp);
				ArrayDelete(exams, temp);
			</cfscript>
		</cfloop>

        <cfinclude template="views/eachCenter.cfm" />
	</cfcase>



	<cfcase value="eachExam">
		<cfparam name="URL.id" default="0" />
		<cfset exam = EntityLoadByPK("Exam", URL.id) />
		<cfset locations = entityLoad("TestingCenter", {}, "id") />
		<cfset currentLocations = []/>
		<cfset joins = entityLoad("centers_exams", {examid: URL.id}) />

		<cfloop array="#joins#" index="p">
			<cfset temp = EntityLoadByPK("TestingCenter", p.getCenterId()) />
			<cfscript>
				ArrayAppend(currentLocations, temp);
				ArrayDelete(locations, temp);
			</cfscript>
		</cfloop>

        <cfinclude template="views/eachExam.cfm" />
	</cfcase>

	<cfcase value="viewschedule">
		<cfset exams = entityLoad("Exam", {}, "id")/>
		<cfset centers = entityLoad("TestingCenter", {}, "id")/>
        <cfinclude template="views/viewSchedule.cfm" />
	</cfcase>

	<cfcase value="add_exam">

		<cfparam name="FORM.centerid" default="0" />
		<cfparam name="FORM.examid" default="0" />

		<cfset join = EntityNew("centers_exams", {centerid: '#FORM.centerid#', examid:'#FORM.examid#'}) />

		<cfset EntitySave(join) />
		<cflocation url= "index.cfm?route=viewschedule" />
	</cfcase>


	<cfcase value="add_location">

		<cfparam name="FORM.locationid" default="0" />
		<cfparam name="FORM.examid" default="0" />

		<cfset join = EntityNew("centers_exams", {centerid: '#FORM.locationid#', examid:'#FORM.examid#'}) />

		<cfset EntitySave(join) />
		<cflocation url= "index.cfm?route=viewschedule" />
	</cfcase>

	<cfcase value="do_exam">
        <cfparam name="FORM.name" default="" />
        <cfparam name="FORM.age" default= "0" />
        <cfparam name="FORM.licenseRequired" default="" />
		<cfparam name="FORM.desc" default="" />
		
		<cfset exam = EntityNew("exam", {name:'#FORM.name#',age:'#FORM.age#',licenseRequired:'#FORM.licenseRequired#', desc: '#FORM.desc#'}) />
		
        <cfset EntitySave(exam) />

        <cflocation url="index.cfm?route=viewschedule" />
	</cfcase>
	
	<cfcase value="do_center">
        <cfparam name="FORM.centerName" default="" />
        <cfparam name="FORM.city" default="" />
		<cfparam name="FORM.state" default="" />
		
		<cfset center = EntityNew("TestingCenter", {centerName:'#FORM.centerName#',city:'#FORM.city#',state:'#FORM.state#'}) />
		
        <cfset EntitySave(center) />

        <cflocation url="index.cfm?route=viewschedule" />
    </cfcase>
	

    <cfdefaultcase>
        <cfinclude template="views/home.cfm" />
	</cfdefaultcase>
	
</cfswitch>

<cfinclude template="views/_footer.cfm" />