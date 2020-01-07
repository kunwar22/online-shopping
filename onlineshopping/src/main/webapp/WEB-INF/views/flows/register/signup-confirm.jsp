
<%@include file="../shared/flows-header.jsp"%>

<div class="container">
<div class="row">

	<!-- Column to display the personal details -->

	<div class="col-sm-6">
		<div class="card">
			<div class="card-header bg-light text-dark">
				<h4>Personal Details</h4>
			</div>
			<div class="card-body">
				<div class="text-center">
					<h4>${registerModel.user.firstName} ${registerModel.user.firstName}</h4>
					<h5>Email: ${registerModel.user.email}</h5>
					<h5>Contact Number: ${registerModel.user.contactNumber}</h5>
					<h5>Role: ${registerModel.user.role}</h5>
				</div>
			</div>
			<div class="card-footer">
				<div class="text-center">
					<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Edit</a>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Column to display the address -->
	
	<div class="col-sm-6">
		<div class="card">
			<div class="card-header bg-light text-dark">
				<h4>Billing Address</h4>
			</div>
			<div class="card-body">
				<div class="text-center">
					<h5>${registerModel.billing.addressLineOne}</h5>
					<h5>${registerModel.billing.addressLineTwo}</h5>
					<h5>${registerModel.billing.city} - ${registerModel.billing.postalCode}</h5>
					<h5>${registerModel.billing.state} - ${registerModel.billing.country}</h5>
				</div>
			</div>
			<div class="card-footer">
				<div class="text-center">
					<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Edit</a>
				</div>
			</div>
		</div>
	</div>
	
</div>

<div class="row" style="margin-top: 20px; margin-bottom: 20px">
	<div class="col-4 offset-4">
		<div class="text-center">
			<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-primary">Confirm</a>
		</div>
	</div>
</div>
</div>
<%@include file="../shared/flows-footer.jsp"%>