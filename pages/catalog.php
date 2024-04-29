<!DOCTYPE html>

<?php
include 'products.php';
include 'itemQuery.php';

$isCustomerIdSet = isset($_SESSION['customerID']);

if (!$isCustomerIdSet) {
    echo '<a href="/account/LoginPage.php">Login</a>';
}

if ($isCustomerIdSet) {
    echo '<a href="/account/logout.php">Logout</a>';
	$customerID = $_SESSION['customerID'];
	$email = $_SESSION['email'];
}


?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Peak Cart</title>

    <link rel="stylesheet" href="catalog.css">


</head>

<body>
  <div class="container">
        <div class="navbar">
        
            <img src="https://i.postimg.cc/bwXcStHR/Logo.png" class="Logo">
            <nav>
                <a href="../pages/cart.php">MY CART</a>
                <a href="../pages/cart.php">
<img src="https://i.postimg.cc/rFR2pJWm/cart.png" class="cart"></a>
            </nav>
        </div>
    </div>

    <div class="Slogan">
        <p></p>
        <p><b>Scaling New Heights in Fashion, Living and Wellness</b></p>
    </div>

    <!-- Navigate between different pages of the website --> 
    <div class="Navigation">
        <a href="/home.php"><button type="button" class="buttonOne">Home</button></a>
        <a href="../pages/catalog.php"><button type="button" class="buttonTwo">Catalog</button></a>
        <a href="../account/accCreate.php"><button type="button" class="buttonThree">Account</button></a>
        <a href="../pages/checkout.php"><button type="button" class="buttonFour">Check Out</button></a>
        <a href="../pages/about.php"><button type="button" class="buttonFive">About Us</button></a>
    </div>

    <div class="catalog">
        <div class="indicator">
            <p>
            <a href="/home.php">Home</a> > 
            <a href="../pages/catalog.php">Product Catalog</a>  
            </p>
        </div>
        <div class="search-div">
            <img src="https://i.postimg.cc/Pq4B7FG6/search.jpg" class="search-icon">
            <form id="search-form" method="get" action="catalog.php">
            <input type="text" name="search" placeholder="Search Catalog">
            <button type="submit" class="go-btn">Go</button>
            </form>
        </div>

        <div class="filter-box">
            <!-- Form for the filters of the catalog page that will be used to limit items queried based on filter conditions. -->
            <form id="filter-form" method="get" action="catalog.php">
                <div class="filter">
                    <h2>FILTER</h2>
                    <!-- Category group of the filter radio buttons-->
                    <h3>Category <strong class="down-arrow">&#x2304;</strong></h3>
                        <!-- Each radio button will remember its previous selection from a previous page -->
                        <p><input type="radio" name="category" value="clothing" <?php echo ($category === 'clothing') ? 'checked' : ''; if(isset($_POST['category']) && $_POST['category'] == 'clothing') echo 'checked="checked"'; ?>> Clothing</p>
                        <p><input type="radio" name="category" value="homeGoods" <?php echo ($category === 'homeGoods') ? 'checked' : ''; if(isset($_POST['category']) && $_POST['category'] == 'homeGoods') echo 'checked="checked"';?>> Home Goods</p>
                        <p><input type="radio" name="category" value="hobbies" <?php echo ($category === 'hobbies') ? 'checked' : ''; if(isset($_POST['category']) && $_POST['category'] == 'hobbies') echo 'checked="checked"';?>> Hobbies</p>
                        <p><input type="radio" name="category" value ="healthWellness" <?php echo ($category === 'healthWellness') ? 'checked' : ''; if(isset($_POST['category']) && $_POST['category'] == 'healthWellness') echo 'checked="checked"';?>> Health/Wellness</p>
                        <p><input type="radio" name="category" value="" <?php echo ($category === '') ? 'checked' : ''; if(isset($_POST['category']) && $_POST['category'] == '') echo 'checked="checked"';?>> None</p>
                    <!-- Price group of the filter radio buttons -->
                    <p class="filter-title"> Price</p>
                        <p><input type="radio" name="filterByPrice" value="0-24.99" <?php echo ($filterByPrice === '0-24.99') ? 'checked="checked"' : ''; if(isset($_POST['filterByPrice']) && $_POST['filterByPrice'] == '0-24.99') echo 'checked';?>> $24.99 or less</p>
                        <p><input type="radio" name="filterByPrice" value="25-49.99" <?php echo ($filterByPrice === '25-49.99') ? 'checked="checked"' : ''; if(isset($_POST['filterByPrice']) && $_POST['filterByPrice'] == '25-49.99') echo 'checked';?>> $25 - $49.99</p>
                        <p><input type="radio" name="filterByPrice" value="50-99.99" <?php echo ($filterByPrice === '50-99.99') ? 'checked' : ''; if(isset($_POST['filterByPrice']) && $_POST['filterByPrice'] == '50-99.99') echo 'checked="checked"';?>> $50 - $99.99</p>
                        <p><input type="radio" name="filterByPrice" value="100" <?php echo ($filterByPrice === '100') ? 'checked="checked"' : ''; if(isset($_POST['filterByPrice']) && $_POST['filterByPrice'] == '100') echo 'checked';?>> $100 and above</p>
                        <p><input type="radio" name="filterByPrice" value="" <?php echo ($filterByPrice === '') ? 'checked="checked"' : ''; if(isset($_POST['filterByPrice']) && $_POST['filterByPrice'] == '') echo 'checked';?>> None</p>
                    <!-- Applies the conditions of the filter form to create a new SQL query of the page, updating the number items-->
                    <button type="submit">Apply</button>
                </div>
            </form>
            <div class="main">
				<form id="personalized_recommendation-form" method="get" action="catalog.php">
					<!-- Button to show the personalized recommendation for account logged in-->
					
				</form>
                <!-- Form for the ordering of the items found on the catalog page -->
                <form id="sort_by-form" method="get" action="catalog.php">
                    <div class="top">
                        <span class="txt">Shop All</span>
                        <span> Sort By
                            <!-- Selection group of different ways to order the items -->
                            <select id="sort-by" name="sort_by">
                                <!-- A selction will be remembered through selecting pages on catalog page --> 
                                <option value="featured" <?php echo ($sortOrder === 'featured') ? 'selected' : ''; ?>>Featured</option>
                                <option value="low_to_high" <?php echo ($sortOrder === 'low_to_high') ? 'selected' : ''; ?>>Price : Low to High</option>
                                <option value="high_to_low" <?php echo ($sortOrder === 'high_to_low') ? 'selected' : ''; ?>>Price : High to Low</option>
					<!-- Personalized recommendation tab should only be available to users who are logged into an account with previous purchase history-->			
								<?php 
								if ($isCustomerIdSet and previousCustHistory($customerID)){
									echo '<option value="personalized_recommendation">Personalized Recommendation</option>';
								}
								?>
                            </select>
                            <!-- Applies the order condition to the SQL query updating the items on the catalog page to be in certain order -->
                            <button type="submit">Apply</button>
                        </span>
                    </div>
                </form>
                <div class="middle-div">
                    <span>Items <?php echo (($currentPage - 1) * $itemsPerPage) + 1; ?>-<?php echo min($currentPage * $itemsPerPage, $totalItems); ?> of <?php echo $totalItems; ?></span>

                    <!-- Selection buttons for scrolling between pages of items will dynamically chage based on filter selection-->
                    <div class="buttons">
                        <?php if ($currentPage > 1): ?>
                            <a href="catalog.php?page=<?php echo $currentPage - 1; ?>&category=<?php echo $category; ?>&sort_by=<?php echo $sortOrder; ?>&filterByPrice=<?php echo $filterByPrice; ?>"><button>Prev</button></a>
                        <?php endif; ?>

                        <?php for ($i = 1; $i <= $totalPages; $i++): ?>
                            <a href="catalog.php?page=<?php echo $i; ?>&category=<?php echo $category; ?>&sort_by=<?php echo $sortOrder; ?>&filterByPrice=<?php echo $filterByPrice; ?>"><button><?php echo $i; ?></button></a>
                        <?php endfor; ?>

                        <?php if ($currentPage < $totalPages): ?>
                            <a href="catalog.php?page=<?php echo $currentPage + 1; ?>&category=<?php echo $category; ?>&sort_by=<?php echo $sortOrder; ?>&filterByPrice=<?php echo $filterByPrice; ?>"><button>Next</button></a>
                        <?php endif; ?>
                    </div>
                </div>

                <div class="bottom-div">
                    <?php
                        $count = 0;
                        while ($row = $result->fetch_assoc()) {
                            echo '<a href="itemPage.php?id=' . $row['ProductID'] . '">';
                            echo '<div class="products">';
                            echo '<img src="' . $row['ImagePath'] . '" alt="' . $row['Name'] . '">';
                            echo '<p>$' . $row['Price'] . '</p>';
                            echo '<p>' . $row['Name'] . '</p>';
                            echo '</div></a>';

                            $count++;
                            if ($count % 4 == 0) {
                                echo '</div><div class="bottom-div">';
                            }
                        }
                    ?>
                </div>

            </div>
        </div>
    </div>


</body>

</html>
