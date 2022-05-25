<?php  
$cart_count =  0 ; 
if(isset($_SESSION['Cart'])){
	foreach($_SESSION['Cart'] as $v){
		$cart_count++;
	}
}
?>

<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop fix-menu-desktop" >
			<!-- Topbar -->

			<div class="wrap-menu-desktop" style="  top: 0px;">
				<nav class="limiter-menu-desktop container ">
					
					<!-- Logo desktop -->		
					<a href="#" class="logo" style="height : 70px;">
						<img src="images/kitchenstorelogo.png" height="100px" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
						<li>
								<a href="index.php">Home</a>
								</li>
							

							<li>
								<a href="product.php">Shop</a>
							</li>

							<li  >
								<a href="shoping-cart.php">Shopping cart</a>
							</li>
							<li  >
								<a href="about.php">About</a>
							</li>
							<li  >
								<a href="contact.php">Contact</a>
							</li>
							<?php
if(isset($_SESSION['loggeduser'])){

echo '
							<li>
								<a href="profile.php?logout=true">Log out </a>
							</li>
							<li>
								<a href="profile.php">Profile </a>
							</li>
	';
}
else{
	echo '

	<li>
		<a href="login.php">Login</a>
	</li>

	<li>
		<a href="Register.php">Regester</a>
	</li>
';	
}
?>
	
							</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="<?php echo $cart_count ; ?>">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

						<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
							<i class="zmdi zmdi-favorite-outline"></i>
						</a>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile" style="height : 60px;">
				<a href="index.php"><img src="images/kitchenstorelogo.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="<?php echo $cart_count; ?>">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
					<i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			

			<ul class="main-menu-m">
				<li>
					<a href="index.php">Home</a>
				</li>

				<li>
					<a href="product.php">Shop</a>
				</li>

				<li>
					<a href="shoping-cart.php" >Shopping cart</a>
				</li>

				<li>
					<a href="about.php">About</a>
				</li>

				<li>
					<a href="contact.php">Contact</a>
				</li>
				<?php
				if(isset($_SESSION['loggeduser'])){

					echo '
												<li>
													<a href="profile.php?logout=true">Log out </a>
												</li>
												<li>
													<a href="profile.php">Profile </a>
												</li>
						';
					}
					else{
						echo '
					
						<li>
							<a href="login.php">Login</a>
						</li>
					
						<li>
							<a href="Register.php">Regester</a>
						</li>
					';	
					}
					?>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>
