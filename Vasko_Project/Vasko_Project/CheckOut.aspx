<%@ Page Title="CheckOut" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Vasko_Project.CheckOut" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- check out section -->
	<div class="checkout-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="checkout-accordion-wrap">
						<div class="accordion" id="accordionExample">
						  <div class="card single-accordion">
						    <div class="card-header" id="headingOne">
						      <h5 class="mb-0">
						        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						          Billing Address
						        </button>
						      </h5>
						    </div>

						    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="billing-address-form">
						        	<form action="index.html">
                                        <p><input type="text" placeholder="Name" id="txtName" runat="server"></p>
						        		<p><input type="email" placeholder="Email" id="txtEmail" runat="server"></p>
						        		<p><input type="text" placeholder="Address" id="txtAddress" runat="server"></p>
						        		<p><input type="tel" placeholder="Phone" id="txtPhone" runat="server"></p>
						        		<p><textarea name="bill" id="bill" cols="30" rows="10" placeholder="Say Something" runat="server"></textarea></p>
						        	</form>
						        </div>
						      </div>
						    </div>
						  </div>
						  <div class="card single-accordion">
						    <div class="card-header" id="headingTwo">
						      <h5 class="mb-0">
						        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
						          Shipping Address
						        </button>
						      </h5>
						    </div>
						    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="shipping-address-form">
						        	<p>Your shipping address form is here.</p>
						        </div>
						      </div>
						    </div>
						  </div>
						  <div class="card single-accordion">
						    <div class="card-header" id="headingThree">
						      <h5 class="mb-0">
						        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
						          Card Details
						        </button>
						      </h5>
						    </div>
						    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="card-details">
						        	<p>Your card details goes here.</p>
						        </div>
						      </div>
						    </div>
						  </div>
						</div>

					</div>
				</div>

				<div class="col-lg-4">
					<div class="order-details-wrap">
						<table class="order-details">
							<thead>
								<tr>
									<th>Your order Details</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody class="order-details-body">
								<tr>
									<td>Product</td>
									<td>Total</td>
								</tr>
								<tr>
									<td>Strawberry</td>
									<td>$85.00</td>
								</tr>
								<tr>
									<td>Berry</td>
									<td>$70.00</td>
								</tr>
								<tr>
									<td>Lemon</td>
									<td>$35.00</td>
								</tr>
							</tbody>
							<tbody class="checkout-details">
								<tr>
									<td>Subtotal</td>
									<td>$190</td>
								</tr>
								<tr>
									<td>Shipping</td>
									<td>$50</td>
								</tr>
								<tr>
									<td>Total</td>
									<td>$240</td>
								</tr>
							</tbody>
						</table>
                        <asp:Button ID="Order_btn" onclick="OrderInsert" runat="server" Text="Place Order"></asp:Button>
						<asp:Button ID="Cancel_Order_btn" onclick="CancelOrder" runat="server" Text="Cancel"></asp:Button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end check out section -->

	<!-- jquery -->
	<script src="fonts/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="fonts/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="fonts/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="fonts/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="fonts/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="fonts/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="fonts/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="fonts/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="fonts/assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="fonts/assets/js/main.js"></script>

</asp:Content>