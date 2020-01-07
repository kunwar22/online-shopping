<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../shared/flows-header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-8 offset-2" style="margin-bottom: 20px;">
			<div class="card">
				<div class="card-header bg-light text-dark">
					<h4>Sign Up - Personal</h4>
				</div>
				
				<div class="card-body">
					<sf:form method="POST" class="form-horizontal" id="registerForm" modelAttribute="user">
					
						<div class="form-group">
							<label class="control-label col-12">First Name:</label>
							<div class="col-12">
								<sf:input type="text" path="firstName" class="form-control" placeholder="First Name"/>
								<sf:errors path="firstName" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">Last Name:</label>
							<div class="col-12">
								<sf:input type="text" path="lastName" class="form-control" placeholder="Last Name"/>
								<sf:errors path="lastName" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">Email:</label>
							<div class="col-12">
								<sf:input type="text" path="email" class="form-control" placeholder="abc@xyz.com"/>
								<sf:errors path="email" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">Contact Number:</label>
							<div class="col-12">
								<sf:input type="text" path="contactNumber" class="form-control" placeholder="XXXXXXXXXX" maxlength="10"/>
								<sf:errors path="contactNumber" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">Password:</label>
							<div class="col-12">
								<sf:input type="password" path="password" class="form-control" placeholder="Password" maxlength="10"/>
								<sf:errors path="password" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">Confirm Password:</label>
							<div class="col-12">
								<sf:input type="password" path="confirmPassword" class="form-control" placeholder="Re-enter Password" maxlength="10"/>
								<sf:errors path="confirmPassword" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<!-- Radio button using bootstrap class of radio-inline -->
						<div class="form-group">
							<label class="control-label col-12">Select Role:</label>
							<div class="col-8">
								<label class="radio-inline">
									<sf:radiobutton path="role" value="USER" checked="checked"/> User
								</label>
								<label class="radio-inline">
									<sf:radiobutton path="role" value="SUPPLIER"/> Supplier
								</label>
							</div>
						</div>
						
						<div class="form-group">
							<div class="text-center">
								<button type="submit" class="btn btn-primary" name="_eventId_billing">
									&nbsp;&nbsp;Next - Billing&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-chevron-right"></span>
								</button>
							</div>
						</div>
					
					</sf:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../shared/flows-footer.jsp"%>