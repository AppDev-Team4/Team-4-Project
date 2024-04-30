<?php
include 'dbConnect.php';
session_start();

$search = isset($_GET['search']) ? $_GET['search'] : '';

if (isset($_SESSION['customerID'])) {
    $customerID = $_SESSION['customerID'];
} else {
	$customerID = NULL;
}
/** 
* @brief getItems
*
* Gets the conditions selected on the catalog page to build a
* SQL query for displaying the items according to certain conditions
* and order.
*
* @para limit: Limits number for amount of items on a single page
* @para currentPage: Used to determine what items should be on a
* certain page.
* @para category: Filter condition that is selected in the catalog
* page, limiting items based on their category values
* @para sortorder: Order condition that is selected in the catalog
* page, ordering items based on certian values
* @para filterByPrice: Filter condition that is selected in the catalog
* page, limiting items based on their price values
* @para search: Used for searching certain items
*
* @returns The fully built SQL query which will be used to create the
* items on the catalog page.
*
*/
function getItems($limit, $currentPage, $category, $sortOrder, $filterByPrice, $search, $customerID) {
    global $conn;
    $startItem = ($currentPage - 1) * $limit;

    $sql = "SELECT * FROM Products";
	
	// if the Personalized Recommendation button is clicked it will query items based off AI Model
	if ($sortOrder == 'personalized_recommendation' and $customerID != NULL){
		// check if customer has previous purchase history by checking 
		$id = strval($customerID);
		$sql = "SELECT COUNT(*) FROM customerpurchases WHERE CustomerID = ";
		$sql .= $id;
		
		$result = $conn->query($sql);
		if (!$result) {
			die("Query failed: " . $conn->error);
		}	
		$numrows = $result->fetch_assoc();
		
		if ($numrows != 0) {
			// pass the current session customerID into python fuction to get recommended products for this user.
			$command = "python productQuery.py " . $customerID;
			$output = shell_exec($command);
			//Build item query for the recommended items for this user
			$sql = "SELECT * FROM Products WHERE ProductID in ($output)";
		}
		
	} else {
		//builds the WHERE condition of the item query for the catalog page.
		if ($category != '') {
			$sql .= " WHERE";
			// Adds the condition to WHERE statment of SQL query based on "category" selection in filter.
			switch ($category) {
				case 'clothing':
					$sql .= " Category = 'Clothing'";
					break;
				case 'homeGoods':
					$sql .= " Category = 'Home Goods'";
					break;
				case 'hobbies':
					$sql .= " Category = 'Hobbies'";
					break;
				case 'healthWellness':
					$sql .= " Category = 'Wellness'";
					break;
				default:
					break;
			}
		}
		// Here is the case that no "category" filter selection was made or if both "price" and "category" selction were chosen.
		if($filterByPrice != '' and $category == ''){
			$sql .= ' WHERE';
		} else if($filterByPrice != '' and $category != ''){
			$sql .= ' AND';
		}
		// Adds the condition to WHERE statment of SQL query based on "price" selection in filter.
		if($filterByPrice != ''){
			switch($filterByPrice){
				case '0-24.99':
					$sql .= " Price <= 24.99";
					break;
				case '25-49.99':
					$sql .= " Price >= 25 AND Price <= 49.99";
					break;
				case '50-99.99':
					$sql .= " Price >= 50 AND Price <= 99.99";
					break;
				case '100':
					$sql .= " Price >= 100";
					break;
				default:
					break;
			}
		}
		// Checks if WHERE conditions have been made for "category" and "price" and determines how to build the SQL query.
		if ($search != '') {
			if ($category != '' || $filterByPrice != '') {
				$sql .= " AND";
			} else {
				$sql .= " WHERE";
			}
			$sql .= " Name LIKE '%$search%'";
		}
		// Build the ORDER condition of the SQL query for the items of the catalog page
		switch ($sortOrder) {
			case 'low_to_high':
				$sql .= " ORDER BY Price ASC";
				break;
			case 'high_to_low':
				$sql .= " ORDER BY Price DESC";
				break;
			default:
				$sql .= " ORDER BY Featured DESC";
				break;
		}

		$sql .= " LIMIT $startItem, $limit";
	}
    $result = $conn->query($sql);

    if (!$result) {
        die("Query failed: " . $conn->error);
    }

    return $result;
}

/** 
* @brief getTotalItems
*
* Finds the total items based upon the limiting conditions
* of the filters and search, which is used for determining
* how many pages are created.
*
* @para category: The filter condition that limits items 
* based on "category" value.
* @para filterByPrice:The filter condition that limits
* items based on "price" value.
* @para search: Condition that directly searches for items.
*
* @returns The total number of items based on limiting
* condtion of SQL query.
*/
function getTotalItems($category, $filterByPrice, $search, $customerID, $sortOrder) {
    global $conn;

    $sql = "SELECT COUNT(*) as totalItems FROM Products";
	// if the Personalized Recommendation button is clicked it will query items based off AI Model
	if ($sortOrder == 'personalized_recommendation' and $customerID != NULL){
		// check if customer has previous purchase history by checking 
		$id = strval($customerID);
		$sql = "SELECT COUNT(*) FROM customerpurchases WHERE CustomerID = ";
		$sql .= $id;
		
		$result = $conn->query($sql);
		if (!$result) {
			die("Query failed: " . $conn->error);
		}	
		$numrows = $result->fetch_assoc();
		
		if ($numrows != 0) {
			// Personalized recommendation only suggests 8 products
			$totalItems = 8;
		}
			
	} else {
	   if ($category != '') {
			$sql .= " WHERE";
			switch ($category) {
				case 'clothing':
					$sql .= " Category = 'Clothing'";
					break;
				case 'homeGoods':
					$sql .= " Category = 'Home Goods'";
					break;
				case 'hobbies':
					$sql .= " Category = 'Hobbies'";
					break;
				case 'healthWellness':
					$sql .= " Category = 'Wellness'";
					break;
				default:
					break;
			}
		}
		if($filterByPrice != '' and $category == ''){
			$sql .= ' WHERE';
		} else if($filterByPrice != '' and $category != ''){
			$sql .= ' AND';
		}
		if($filterByPrice != ''){
			switch($filterByPrice){
				case '0-24.99':
					$sql .= " Price <= 24.99";
					break;
				case '25-49.99':
					$sql .= " Price >= 25 AND Price <= 49.99";
					break;
				case '50-99.99':
					$sql .= " Price >= 50 AND Price <= 99.99";
					break;
				case '100':
					$sql .= " Price >= 100";
					break;
				default:
					break;
			}
		}

		if ($search != '') {
			if ($category != '' || $filterByPrice != '') {
				$sql .= " AND";
			} else {
				$sql .= " WHERE";
			}
			$sql .= " Name LIKE '%$search%'";
		}

    $totalItemsQuery = $conn->query($sql);
    $totalItemsResult = $totalItemsQuery->fetch_assoc();
    $totalItems = $totalItemsResult['totalItems'];
	}

    return $totalItems;
}
/**
* @brief previousCustHistory
*
* Finds if current account logged into website has previous purchase history.
* Used to determine if account has access to personalized recommendation 
* feature
*
* @para customerID: customerID of the current account in session on website
*
* @returns True if current account has previous purchase and false if it doesn't.
*
*/
function previousCustHistory($customerID){
    global $conn;
    $id = intval($customerID);
    $sql = "SELECT COUNT(*) as count FROM customerpurchases WHERE CustomerID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    return $row['count'] > 0;
}

	

// All the basic values that will be used to add items to catalog page
$itemsPerPage = 12;
$currentPage = isset($_GET['page']) ? $_GET['page'] : 1;
$category = isset($_GET['category']) ? $_GET['category'] : '';
$sortOrder = isset($_GET['sort_by']) ? $_GET['sort_by'] : 'featured';
$filterByPrice = isset($_GET['filterByPrice']) ? $_GET['filterByPrice'] : '';

$result = getItems($itemsPerPage, $currentPage, $category, $sortOrder, $filterByPrice, $search, $customerID);
$totalItems = getTotalItems($category, $filterByPrice, $search, $customerID, $sortOrder);
$totalPages = ceil($totalItems / $itemsPerPage);
?>
