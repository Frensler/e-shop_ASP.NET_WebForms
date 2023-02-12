<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Vasko_Project.About" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<!-- cart -->
	<div class="cart-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-12">
					<div class="cart-table-wrap">
						<table class="cart-table">
							<thead class="cart-table-head">
								<tr class="table-head-row">
									<th class="product-remove"></th>
									<th class="product-image">Product Image</th>
									<th class="product-name">Name</th>
									<th class="product-price">Price</th>
									<th class="product-quantity">Quantity</th>
									<th class="product-total">Total</th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-body-row">
									<td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
									<td class="product-image"><img src="fonts/assets/img/products/product-img-1.jpg" alt=""></td>
									<td class="product-name">Strawberry</td>
									<td class="product-price">$8</td>
									<td class="product-quantity"><input type="number" placeholder="0" id="itemNumStw" runat="server"></td>
									<td class="product-total">1</td>
								</tr>
								<tr class="table-body-row">
									<td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
									<td class="product-image"><img src="fonts/assets/img/products/product-img-2.jpg" alt=""></td>
									<td class="product-name">Grape</td>
									<td class="product-price">$7</td>
									<td class="product-quantity"><input type="number" placeholder="0" id="itemNumBer" runat="server"></td>
									<td class="product-total">1</td>
								</tr>
								<tr class="table-body-row">
									<td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
									<td class="product-image"><img src="fonts/assets/img/products/product-img-3.jpg" alt=""></td>
									<td class="product-name">Lemon</td>
									<td class="product-price">$3,5</td>
									<td class="product-quantity"><input type="number" placeholder="0" id="itemNumLem" runat="server"></td>
									<td class="product-total">1</td>
								</tr>
								<tr class="table-body-row">
									<td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
									<td class="product-image"><img src="fonts/assets/img/products/product-img-4.jpg" alt=""></td>
									<td class="product-name">Kiwi</td>
									<td class="product-price">$5</td>
									<td class="product-quantity"><input type="number" placeholder="0" id="itemNumKiwi" runat="server"></td>
									<td class="product-total">1</td>
								</tr>
								<tr class="table-body-row">
									<td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
									<td class="product-image"><img src="fonts/assets/img/products/product-img-5.jpg" alt=""></td>
									<td class="product-name">Green Apple</td>
									<td class="product-price">$4,5</td>
									<td class="product-quantity"><input type="number" placeholder="0" id="itemNumGA" runat="server"></td>
									<td class="product-total">1</td>
								</tr>
								<tr class="table-body-row">
									<td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
									<td class="product-image"><img src="fonts/assets/img/products/product-img-6.jpg" alt=""></td>
									<td class="product-name">Raspberry</td>
									<td class="product-price">$7</td>
									<td class="product-quantity"><input type="number" placeholder="0" id="itemNumRasp" runat="server"></td>
									<td class="product-total">1</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="total-section">
						<table class="total-table">
							<thead class="total-table-head">
								<tr class="table-total-row">
									<th>Total</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody>
								<tr class="total-data">
									<td><strong>Subtotal: </strong></td>
									<td id="subtotalTD" runat="server">$0</td>
								</tr>
								<tr class="total-data">
									<td><strong>Delivery: </strong></td>
									<td id="deliveryCostTD" runat="server"></td>
								</tr>
								<tr class="total-data">
									<td><strong>Total: </strong></td>
									<td id="totalTD" runat="server" >$0</td>
								</tr>
							</tbody>
						</table>
						<div class="cart-buttons">
							<asp:Button ID="Update_btn" runat="server" OnClick="updateButton_Click" Text="Update Cart"></asp:Button>
							<asp:Button ID="Items_btn" runat="server" OnClick="ItemsInsert" Text="Check Out"></asp:Button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- end cart -->

</asp:Content>
