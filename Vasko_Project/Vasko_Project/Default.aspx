<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Vasko_Project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->


	<!-- search area -->
	<div class="search-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="close-btn"><i class="fas fa-window-close"></i></span>
					<div class="search-bar">
						<div class="search-bar-tablecell">
							<h3>Search For:</h3>
							<input type="text" placeholder="Keywords">
							<button type="submit">Search <i class="fas fa-search"></i></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end search arewa -->
	
	<!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">

			<div class="row">
                <div class="col-md-12">
                    <div class="product-filters">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".strawberry">Strawberry</li>
                            <li data-filter=".berry">Berry</li>
                            <li data-filter=".lemon">Lemon</li>
                        </ul>
                    </div>
                </div>
            </div>

			<div class="row product-lists">
				<div class="col-lg-4 col-md-6 text-center strawberry">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="fonts/assets/img/products/product-img-1.jpg" alt=""></a>
						</div>
						<h3>Strawberry</h3>
						<p class="product-price"><span>Per Kg</span> 8$ </p>
						<a href="Cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center berry">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="fonts/assets/img/products/product-img-2.jpg" alt=""></a>
						</div>
						<h3>Grape</h3>
						<p class="product-price"><span>Per Kg</span> 7$ </p>
						<a href="Cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center lemon">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="fonts/assets/img/products/product-img-3.jpg" alt=""></a>
						</div>
						<h3>Lemon</h3>
						<p class="product-price"><span>Per Kg</span> 3,5$ </p>
						<a href="Cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="fonts/assets/img/products/product-img-4.jpg" alt=""></a>
						</div>
						<h3>Kiwi</h3>
						<p class="product-price"><span>Per Kg</span> 5$ </p>
						<a href="Cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="fonts/assets/img/products/product-img-5.jpg" alt=""></a>
						</div>
						<h3>Green Apple</h3>
						<p class="product-price"><span>Per Kg</span> 4,5$ </p>
						<a href="Cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center strawberry">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="fonts/assets/img/products/product-img-6.jpg" alt=""></a>
						</div>
						<h3>Strawberry</h3>
						<p class="product-price"><span>Per Kg</span> 7$ </p>
						<a href="Cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12 text-center">
					
				</div>
			</div>
		</div>
	</div>
	<!-- end products -->
	
	
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
