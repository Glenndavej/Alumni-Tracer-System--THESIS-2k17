
<form action="alumnireg_processing.php" method="post">
	<div class="alert alert-info">
  	<strong style="font-size:20pt;">General Information</strong>
	</div>
	<div>
	<font style="font-size: 12pt;" color="red"><i>**For the Alumni that changed their name after graduating, please enter your name when you are in college/For female use your maiden name</i></font>
	</div>
	<font><b>1. First Name</b></font>
	<br>
	<input class = "w3-input w3-border" type = "text" name= "fname" placeholder = "First Name" style = "width:350px; margin-top:10px; margin-bottom:10px;" required> 
	
	<font><b>2. Middle Name</b></font> <br>
	<input class = "w3-input w3-border" type = "text" name= "mname" placeholder = "Middle Name" style = "width:350px; margin-top:10px; margin-bottom:10px;" required> 
	
	<font><b>3. Last Name</b></font> <br>
	<input class = "w3-input w3-border" type = "text" name= "lname" placeholder = "Last Name" style = "width:350px; margin-top:10px; margin-bottom:10px;" required> 

<!-- Gender -->
	<font><b>4. Gender</b></font>
	<div style="margin-top: 10px;">
		<input class="w3-radio" type="radio" name="gender" value="Male" id = "gender4">
		<label for="gender4">Male </label>
		&nbsp;
		<input class="w3-radio" type="radio" name="gender" value="Female" id = "gender5">
		<label for="gender5">Female</label>
	</div>
		
<!-- end of Gender -->
	<br>
	
	<font><b>5. Civil Status</b></font> <br>
	<select class = "w3-input w3-border" name = "CivilStat" style="width:350px; margin-top:10px; margin-bottom: 10px;">
		<option></option>
		<option>Single</option>
		<option>Married</option>
		<option>Widowed</option>
		<option>Others</option>
	</select>

<!-- BDAY -->

	<font><b>6. Birthdate</b></font><br>
	<!-- <input type="date" name="bdate" class="w3-input w3-border" onfocus="(this.type='date')" onfocusout="(this.type='text')" style = "width:350px; margin-top:10px; margin-bottom:10px;"> -->
	<input name="bdate" type="text" class="w3-input w3-border" onfocus="(this.type='date')" onblur="if(!this.value)this.type='text'" style = "width:350px; margin-top:10px; margin-bottom:10px;" required>
	<!-- <input type="date" name="bdate" class="w3-input w3-border" style = "width:350px; margin-top:10px; margin-bottom:10px;"> -->
<!-- end of bday -->
	<font><b>7. Address</b></font> <br>
	<input class = "w3-input w3-border" type = "text" name = "address" placeholder = "Address" style = "width:350px; margin-top:10px; margin-bottom:10px;">
	
	<font><b>8. Telephone Number</b></font> <br>
	<input class = "w3-input w3-border" type = "text" name = "telnum" placeholder = "Telephone Number" oninput="this.value=this.value.replace(/[^0-9]/g,'');" style = "width:350px; margin-top:10px; margin-bottom:10px;">
	
	<font><b>9. Mobile Number</b></font> <br>
	<input class = "w3-input w3-border" type = "text" name = "mobnum" placeholder = "Mobile Number" oninput="this.value=this.value.replace(/[^0-9]/g,'');" style = "width:350px; margin-top:10px; margin-bottom:10px;">

	<font><b>10. Email Address</b></font> <br>
	<input class = "w3-input w3-border" type = "email" name = "emailadd" placeholder = "Email Number" style = "width:350px; margin-top:10px; margin-bottom:10px;">

	<br>
	<div class="alert alert-info">
  	<strong style="font-size:20pt;">Educational Background</strong>
	</div>

	<font><b>11. Year Graduated in Filamer</b></font> <br>
	<select class = "w3-input w3-border" name="yeargrad" style="width:350px; margin-top: 10px; margin-bottom: 10px;" required>
	<option></option>
		<?php
			$year_grad=1995;
			while($year_grad<=2016)
			{
		?>
	<option><?php echo $year_grad; ?></option>
			<?php $year_grad++; } ?>
	</select>		

	
	<font><b>12. Department</b></font> <br>
	<select class = "w3-input w3-border" name = "Department" style = "width:350px; margin-top:10px; margin-bottom:10px;" required>
		<option></option>
		<option>College of Computer Studies</option>
	</select>
	
	<font><b>13. Course</b></font> <br>
	<select class = "w3-input w3-border" name = "Course" style = "margin-top:10px; margin-bottom:10px; width:350px;" required>
		<option></option>
		<option>Bachelor of Science in Information Technology</option>
		<option>Bachelor of Science in Computer Science</option>
		<option>Associate in Computer Science</option>
	</select>

	<font><b>14. Awards/Achievements received while studying at Filamer</b></font> <br>
	<!-- <input class = "w3-input w3-border" type = "text" name = "awards" placeholder = "Awards/Achievements received" style = "width:350px; margin-top:10px; margin-bottom:10px;"> -->
	<!-- awards variable -->
	<div>
		<input type="checkbox" name="awards[]" value="Best in Visual Graphics"> Best in Visual Graphics<br>
		<input type="checkbox" name="awards[]" value="Best in Java Programming"> Best in Java Programming<br>
	  	<input type="checkbox" name="awards[]" value="Academic Awardee"> Academic Awardee<br>
	  	<input type="checkbox" name="awards[]" value="Leadership Awardee"> Leadership Awardee<br>
	  	<input type="checkbox" name="awards[]" value="Sports Awardee"> Sports Awardee<br>
	  	<input type="checkbox" name="awards[]" value="Socio-Cultural Awardee"> Socio-Cultural Awardee<br>
	  	<input type="checkbox" name="awards[]" value="Loyalty Awardee"> Loyalty Awardee<br>
	  	<input type="checkbox" name="awards[]" value="Model Student Awardee"> Model Student Awardee<br>
	</div>
	 Others: <input class = "w3-input w3-border" type="text" name="awards[]" placeholder="Others" style = "width:350px; margin-bottom:10px;">
	<font><b>15. Scholarships received while studying at Filamer</b></font> <br>
	<input class = "w3-input w3-border" type = "text" name = "scholarships" placeholder = "Scholarships received" style = "width:350px; margin-top:10px; margin-bottom:10px;">
	
	<font><b>16. Highest Educational Attainment</b></font> <br>
	<!-- <input class = "w3-input w3-border" type = "text" name = "attainment" placeholder = "Highest Educational Attainment" style = "width:350px; margin-top:10px; margin-bottom:10px;"> -->
	<select class = "w3-input w3-border" name = "attainment" style = "margin-top:10px; margin-bottom:10px; width:350px;">
		<option></option>
		<option>Junior High School Graduate</option>
		<option>Senior High School Graduate</option>
		<option>TESDA/Technical/Vocational Certificate</option>
		<option>Bachelor's Degree</option>
		<option>Master's Degree</option>
		<option>Doctorate Degree</option>
		<option>Elementary Graduate</option>
		<option>Undergraduate</option>
	</select>
	<br>
	<div class="alert alert-info">
  	<strong style="font-size:20pt;">Employement Data</strong>
	</div>

	<font><b>17. Are you Presently Employed?</b></font> <br>
	<div style="margin-bottom: 10px; margin-top: 10px;">
		<input class="w3-radio" type="radio" name="employed" value="Yes" id="emp1" required>
		<label for="emp1">Yes</label>
		&nbsp;
		<input class="w3-radio" type="radio" name="employed" value="No" id="emp2">
		<label for="emp2">No</label>
	</div>
	
	<font><b>18. If employed: Present Employment Status?</b></font> <br>
	<select class = "w3-input w3-border" name = "empstatus" style="width:350px; margin-top: 10px; margin-bottom: 10px;">
		<option></option>
		<option>Regular</option>
		<option>Probationary</option>
		<option>Contractual</option>
		<option>Others</option>
	</select>
	
	<font><b>19. Present Occupation and Company</b></font> <br>
	
	<div class="input_fields_wrap">
	    
	    <div>
	    <input class = "w3-input w3-border" type = "text" name = "presoccup" placeholder = "Present Occupation & Company" style="width:350px; margin-bottom: 10px; margin-top: 10px;">
	    <button class="add_field_button w3-btn w3-green" title="Add"><i class="fa fa-plus" aria-hidden="true"></i> Add Past Occupation</button>
	    </div>
	</div>

	<!-- <font><b>20. Name of company including Work address</b></font> <br>
	<input class = "w3-input w3-border" type = "text" name = "workadd" placeholder = "Company with address" style="width:350px; margin-bottom: 10px; margin-top: 10px;"> -->
	<br>

	<div class="alert alert-info">
  	<strong style="font-size:20pt;">Additional questions</strong>
	</div>

	<font><b>20. Have you taken/Are you currently taking graduate studies?(Masters/Doctorate) </b></font>
	<br>
	<div style="margin-top: 10px; margin-bottom: 10px;">
		<input class="w3-radio" type="radio" name="gradstud" value="Yes" id="grad1" required>
		<label for="grad1">Yes</label>
		&nbsp;
		<input class="w3-radio" type="radio" name="gradstud" value="No" id="grad2">
		<label for="grad2">No</label>
	</div>
	
	<font><b>21. Have you taken any kind of training or advanced studies after college?</b></font>
	<br>
	<div style="margin-top: 10px; margin-bottom: 10px;">
		<input class="w3-radio" type="radio" name="advstud" value="Yes" id="advance1" required> 
		<label for="advance1">Yes</label>
		&nbsp;
		<input class="w3-radio" type="radio" name="advstud" value="No" id="advance2"> 
		<label for="advance2">No</label>
	</div>

	<font><b>22. If yes, What are those courses or trainings have you participated in?</b></font>
	<br>
	<select class = "w3-input w3-border" name = "participated" style="margin-top: 10px; margin-bottom: 10px; width:350px;">
		<option></option>
		<option>Related to my profession</option>
		<option>To obtain other professional skills</option>
		<option>General skills(Foreign Language, Computer, Management, etc.</option>
		<option>Others</option>
	</select>
	
	<font><b>23. Are there any courses/training programs that assist you with finding a job?</b></font>
	<br>
	<div style="margin-bottom: 10px; margin-top: 10px;">
		<input class="w3-radio" type="radio" name="assist" value="Yes" id="assist1" required>
		<label for="assist1">Yes</label>
		&nbsp;
		<input class="w3-radio" type="radio" name="assist" value="No" id="assist2">
		<label for="assist2">No</label>
	</div>

	<font><b>24. If yes, What are those courses/training programs?</b></font>
	<br>
	<select class = "w3-input w3-border" name = "programs" style="width:350px; margin-top: 10px; margin-bottom: 10px;">
		<option></option>
		<option>Communication Courses</option>
		<option>IT Courses</option>
		<option>Human Resource Courses</option>
		<option>Language Courses</option>
		<option>Occupational Skills/Practical Exercises</option>
		<option>C/V writing</option>
		<option>Internship</option>
		<option>Others</option>
	</select>	
	<br>
	<font><b>25.</b> In your opinion, to what extent has the program that you finished in college developed your ______?</font><font color=red>*</font>
	<br>
	<font size = "4"><b>Rate ( 1 - <i>NOT AT ALL</i>, 2 - <i>VERY LITTLE</i>, 3 - <i>SOME</i>, 4 - <i>A LOT</i>, 5 - <i>VERY MUCH</i> )</b></font>
	<br>
	<br>
	<div class="myindention" style="text-indent: 100px;">
	
		a. Critical thinking skills
		<div style="margin-bottom: 8px;  margin-top: 2px;">
		<input class="w3-radio" type="radio" name="cts" value="1"> 1
		<input class="w3-radio" type="radio" name="cts" value="2"> 2
		<input class="w3-radio" type="radio" name="cts" value="3"> 3
		<input class="w3-radio" type="radio" name="cts" value="4"> 4
		<input class="w3-radio" type="radio" name="cts" value="5"> 5
		</div>

		<div style="text-indent: 100px;">
		b. Ability to solve complex problems
		</div>

		<div style="margin-bottom: 8px;  margin-top: 2px;">
		<input class="w3-radio" type="radio" name="solvecomplexprob" value="1"> 1
		<input class="w3-radio" type="radio" name="solvecomplexprob" value="2"> 2
		<input class="w3-radio" type="radio" name="solvecomplexprob" value="3"> 3
		<input class="w3-radio" type="radio" name="solvecomplexprob" value="4"> 4
		<input class="w3-radio" type="radio" name="solvecomplexprob" value="5"> 5
		</div>

		<div style="text-indent: 100px;">
		c. Ability to work with others?
		</div>

		<div style="margin-bottom: 8px;  margin-top: 2px;">
		<input class="w3-radio" type="radio" name="workwithother" value="1"> 1
		<input class="w3-radio" type="radio" name="workwithother" value="2"> 2
		<input class="w3-radio" type="radio" name="workwithother" value="3"> 3
		<input class="w3-radio" type="radio" name="workwithother" value="4"> 4
		<input class="w3-radio" type="radio" name="workwithother" value="5"> 5
		</div>

		<div style="text-indent: 100px;">
		d. Confidence to learn independently?
		</div>

		<div style="margin-bottom: 8px;  margin-top: 2px;">
		<input class="w3-radio" type="radio" name="learnind" value="1"> 1
		<input class="w3-radio" type="radio" name="learnind" value="2"> 2
		<input class="w3-radio" type="radio" name="learnind" value="3"> 3
		<input class="w3-radio" type="radio" name="learnind" value="4"> 4
		<input class="w3-radio" type="radio" name="learnind" value="5"> 5
		</div>

		<div style="text-indent: 100px;">
		e. Written Communication skills?
		</div>

		<div style="margin-bottom: 8px;  margin-top: 2px;">
		<input class="w3-radio" type="radio" name="writtencommskills" value="1"> 1
		<input class="w3-radio" type="radio" name="writtencommskills" value="2"> 2
		<input class="w3-radio" type="radio" name="writtencommskills" value="3"> 3
		<input class="w3-radio" type="radio" name="writtencommskills" value="4"> 4
		<input class="w3-radio" type="radio" name="writtencommskills" value="5"> 5
		</div>

		<div style="text-indent: 100px;">
		f. Spoken Communication skills?
		</div>

		<div style="margin-bottom: 8px;  margin-top: 2px;">
		<input class="w3-radio" type="radio" name="spokencommskills" value="1"> 1
		<input class="w3-radio" type="radio" name="spokencommskills" value="2"> 2
		<input class="w3-radio" type="radio" name="spokencommskills" value="3"> 3
		<input class="w3-radio" type="radio" name="spokencommskills" value="4"> 4
		<input class="w3-radio" type="radio" name="spokencommskills" value="5"> 5
		</div>

		<div style="text-indent: 100px;">
		g. Knowledge of the field?
		</div>

		<div style="margin-bottom: 8px;  margin-top: 2px;">
		<input class="w3-radio" type="radio" name="knowfield" value="1"> 1
		<input class="w3-radio" type="radio" name="knowfield" value="2"> 2
		<input class="w3-radio" type="radio" name="knowfield" value="3"> 3
		<input class="w3-radio" type="radio" name="knowfield" value="4"> 4
		<input class="w3-radio" type="radio" name="knowfield" value="5"> 5
		</div>

		<div style="text-indent: 100px;">
		h. Development of work related knowledge and skills?
		</div>

		<div style="margin-bottom: 8px;  margin-top: 2px;">
		<input class="w3-radio" type="radio" name="workrelatedknow" value="1"> 1
		<input class="w3-radio" type="radio" name="workrelatedknow" value="2"> 2
		<input class="w3-radio" type="radio" name="workrelatedknow" value="3"> 3
		<input class="w3-radio" type="radio" name="workrelatedknow" value="4"> 4
		<input class="w3-radio" type="radio" name="workrelatedknow" value="5"> 5
		</div>

	</div><!--end of myindetion-->
	<br>
	<font><b>26. Do you think your college degree was relevant to your first job?</b></font><font color=red>*</font> <br>
	<div style="margin-top: 10px; margin-bottom: 10px;">
		<input class="w3-radio" type="radio" name="relevantdegree" value="Yes" id="relevant1" required>
		<label for="relevant1">Yes</label>
		&nbsp;
		<input class="w3-radio" type="radio" name="relevantdegree" id="relevant2" value="No">
		<label for="relevant2">No</label>
	</div>
	If no, Why?: <input class = "w3-input w3-border" type = "text" name = "comment" placeholder = "Comment" style = "width:350px; margin-top:10px; margin-bottom:10px;">
	<font><b>27. What do you think is the most important factor for getting a good job?</b></font><font color=red>*</font> <br>
	<select class = "w3-input w3-border" name="impfctr" style="margin-bottom: 10px; margin-top: 10px; width: 350px;" required>
		<option></option>
		<option>University Ranking</option>
		<option>Work Experience</option>
		<option>Personal Connection</option>
		<option>Occupational Skill</option>
		<option>Language Skills</option>
		<option>IT Skills</option>
		<option>Gender</option>
		<option>Religion</option>
		<option>Contract Period</option>
	</select>

	<font><b>28. As an overall assessment would you say that the curriculum you finished taking in college/university enabled you to compete in the labor market?</b></font><font color=red>*</font>
	<br>
	
	<div style="margin-top: 10px; margin-bottom: 10px;">	
		<input class="w3-radio" type="radio" name="overall" value="Yes" id="yesah" required>
		<label for = "yesah"><b>Yes</b></label>
		&nbsp;
		<input class="w3-radio" type="radio" name="overall" id="noah" value="No">
		<label for = "noah">No</label>
	</div>

	<font size="4" color="red"><i>***Before submitting the data above, kindly recheck the data that you've entered or else it will not be accepted. Thank you!</i></font><br>
	
	<button name="submit" type="submit" class="btn btn-success" target="_blank"><font size="4"><i class="fa fa-paper-plane" aria-hidden="true"></i> SUBMIT</font></button>
</form>
