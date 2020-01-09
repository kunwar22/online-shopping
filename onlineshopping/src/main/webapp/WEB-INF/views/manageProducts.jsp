<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class="container">
	<div class="row">
	
		<c:if test="${not empty message}">
		
			<div class="col-12">
				<div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					${message}
				</div>
			</div>
		
		</c:if>
	
		<div class="col-lg-8 offset-lg-2">
			<div class="card  bg-light mb-4">
				<div class="card-header">
					<h5 class="card-title">Product Management</h5>
				</div>
				<div class="card-body">
					<div>
						<!-- Form Element -->
						<sf:form class="form-horizontal" 
									modelAttribute="product" 
									action="${contextRoot}/manage/products" 
									method="POST"
									enctype="multipart/form-data"
						>

							<div class="form-group">
								<label class="control-label" for="name">Enter Product Name:</label>
								<div class="col-12">
									<sf:input type="text" path="name" id="name" placeholder="Product Name" class="form-control" /> 
									<sf:errors path="name" cssClass="help-block" element="em"></sf:errors>
								</div>
							</div>

							<div class="form-group">
								<label class="control-label" for="brand">Enter Brand Name:</label>
								<div class="col-12">
									<sf:input type="text" path="brand" id="brand" placeholder="Brand Name" class="form-control" />
									<sf:errors path="brand" cssClass="help-block" element="em"></sf:errors>
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label" for="description">Product Description:</label>
								<div class="col-12">
									<sf:textarea path="description" id="description" placeholder="Write a description for the product" class="form-control"></sf:textarea>
									<sf:errors path="description" cssClass="help-block" element="em"></sf:errors>
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label" for="unitPrice">Enter Unit Price:</label>
								<div class="col-12">
									<sf:input type="number" path="unitPrice" id="unitPrice" placeholder="Unit Price in &#8377;" class="form-control"/>
									<sf:errors path="unitPrice" cssClass="help-block" element="em"></sf:errors>
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label" for="quantity">Quantity Available:</label>
								<div class="col-12">
									<sf:input type="number" path="quantity" id="quantity" placeholder="Quantity Available" class="form-control"/>
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label" for="file">Select an image:</label>
								<div class="col-12">
									<sf:input type="file" path="file" id="file" class="form-control"/>
									<sf:errors path="file" cssClass="help-block" element="em"></sf:errors>
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label" for="description">Select Category:</label>
								<div class="col-12">
									<sf:select path="categoryId" id="categoryId" class="form-control"
										items="${categories}"
										itemLabel="name"
										itemValue="id"
									/>
								<c:if test="${product.id == 0}">
									<div class="text-right">
										<br/>
										<button type="button", data-toggle="modal", data-target="#myCategoryModal" class="btn btn-warning btn-sm">Add Category</button>
									</div>
								</c:if>
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-4">
									<input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary" />
									<sf:hidden path="id"/>
									<sf:hidden path="code"/>
									<sf:hidden path="supplierId"/>
									<sf:hidden path="active"/>
									<sf:hidden path="purchases"/>
									<sf:hidden path="views"/>
								</div>
							</div>

						</sf:form>

					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col-lg-12">
			<h3>Available Products</h3>
			<hr/>
		</div>
		<div class="col-lg-12">
			<div style="overflow: auto">
				
				<!-- Product table for admin -->
				<div class="container-fluid">
					<div class="table-responsive">
						<table id="adminProductTable" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Id</th>
									<th>&#160;</th>
									<th>Brand</th>
									<th>Name</th>
									<th>Quantity</th>
									<th>Unit Price</th>
									<th>Active</th>
									<th>Edit</th>
								</tr>
							</thead>
							
							<tfoot>
								<tr>
									<th>Id</th>
									<th>&#160;</th>
									<th>Brand</th>
									<th>Name</th>
									<th>Quantity</th>
									<th>Unit Price</th>
									<th>Active</th>
									<th>Edit</th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="modal fade" id="myCategoryModal" role="dialog" tabindex="-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Add New Category</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<!-- Category Form -->
					<sf:form id="categoryForm" modelAttribute="category" action="${contextRoot}/manage/category" method="POST" class="form-horizontal">
						
						<div class="form-group">
							<label for="category_name" class="control-label col-12">Category Name:</label>
							<div class="col-12">
								<sf:input type="text" path="name" id="category_name" class="form-control"></sf:input>
							</div>
						</div>
						
						<div class="form-group">
							<label for="category_description" class="control-label col-12">Description:</label>
							<div class="col-12">
								<sf:textarea cols="" rows="5" path="description" id="category_description" class="form-control"></sf:textarea>
							</div>
						</div>
						
						<div class="form-group">
							<div class="offset-8 col-4">
								<input type="submit" value="Add Category" class="btn btn-primary"/>
							</div>
						</div>
						
					</sf:form>
				</div>
			</div>
		</div>
	</div>


</div>