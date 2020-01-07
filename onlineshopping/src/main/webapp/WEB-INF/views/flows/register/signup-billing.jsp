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
					<sf:form method="POST" class="form-horizontal" id="billingForm" modelAttribute="billing">
					
						<div class="form-group">
							<label class="control-label col-12">Address Line One:</label>
							<div class="col-12">
								<sf:input type="text" path="addressLineOne" class="form-control" placeholder="Enter Address Line One"/>
								<sf:errors path="addressLineOne" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">Address Line Two:</label>
							<div class="col-12">
								<sf:input type="text" path="addressLineTwo" class="form-control" placeholder="Enter Address Line Two"/>
								<sf:errors path="addressLineTwo" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">City:</label>
							<div class="col-12">
								<sf:input type="text" path="city" class="form-control" placeholder="Enter Your City Name"/>
								<sf:errors path="city" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">Postal Code:</label>
							<div class="col-12">
								<sf:input type="text" path="postalCode" class="form-control" placeholder="XXXXXXXX"/>
								<sf:errors path="postalCode" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">State:</label>
							<div class="col-12">
								<sf:input type="text" path="state" class="form-control" placeholder="Enter State Name"/>
								<sf:errors path="state" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-12">Country:</label>
							<div class="col-12">
								<sf:input type="text" path="country" class="form-control" placeholder="Enter Country Name"/>
								<sf:errors path="country" cssClass="help-block" element="em"/>
							</div>
						</div>
						
						<div class="form-group">
							<div class="text-center">
							
							<!-- Button for moving to the personal -->
							
							<button type="submit" class="btn btn-primary" name="_eventId_personal">
									<span class="glyphicon glyphicon-chevron-left"></span> Previous - Personal
							</button>
							
							<!-- Button for moving to the confirm -->
							
							<button type="submit" class="btn btn-primary" name="_eventId_confirm">
									&nbsp;&nbsp;Next - Confirm&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-chevron-right"></span>
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