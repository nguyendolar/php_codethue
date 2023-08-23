<?php
session_start();
include("../Database/Connect.php");

if (isset($_SESSION['auth'])) {

    if (isset($_POST['placeOrder'])) {

        $firstname = mysqli_real_escape_string($con, $_POST['fname']);
        $lastname = mysqli_real_escape_string($con, $_POST['lname']);
        $phone = mysqli_real_escape_string($con, $_POST['phone']);
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $country = mysqli_real_escape_string($con, $_POST['country']);
        $address = mysqli_real_escape_string($con, $_POST['address']);
        $city = mysqli_real_escape_string($con, $_POST['city']);
        $pin = mysqli_real_escape_string($con, $_POST['pin']);
        $payment_id = mysqli_real_escape_string($con,$_POST['payment_id']);
        $payment_method = mysqli_real_escape_string($con,$_POST['payment_method']);
        
        if($payment_method === "momo"){
            $payment_id = 1;
        }else if($payment_method === "paypal"){
            $payment_id = 2;
        }else if($payment_method === "credit_card"){
            $payment_id = 3;
        }

        if (empty($firstname) || empty($lastname) || empty($phone) || empty($email) || empty($country) || empty($address) || empty($city) || empty($pin)) {
            $_SESSION['message'] = "All fields must be filled";
            header("Location: ../payment.php");
            exit(); // Make sure to exit after redirection
        }

        // Retrieve cart items
        $userID = $_SESSION['auth_user']['id'];
        $sql1 = "SELECT c.cart_id as cid, c.product_id as pid, c.product_qty, p.product_name, p.product_price, pi.image_source, cat.category_name
        FROM carts c
        JOIN product p ON c.product_id = p.product_id
        JOIN product_image pi ON p.product_id = pi.product_id
        JOIN category cat on p.category_id = cat.category_id
        WHERE user_id = '$userID'
        ORDER BY c.cart_id DESC";

        $cartItems = mysqli_query($con, $sql1);

        $totalPrice = 0;
        foreach ($cartItems as $item) {
            $totalPrice += $item['product_price'] * $item['product_qty'];
        }

        // Set other variables (shipping, payment, etc.)
        $user_id = $_SESSION['auth_user']['id'];
        $shipping_firstname = $firstname;
        $shipping_lastname = $lastname;

        // Insert order into the database
        $sql2 = "INSERT INTO orders(user_id, shipping_firstname, shipping_lastname, shipping_phone, shipping_email, shipping_country, shipping_address, shipping_city, shipping_pin, total_price, payment_method, payment_id) 
        VALUES ('$user_id', '$shipping_firstname', '$shipping_lastname', '$phone', '$email', '$country', '$address', '$city', '$pin', '$totalPrice', '$payment_method', '$payment_id')";
        $orderInsert = mysqli_query($con,$sql2);

        if ($orderInsert) {
            $order_id = mysqli_insert_id($con);

            foreach ($cartItems as $item) {
                $product_id = $item['pid'];
                $item_price = $item['product_price'];
                $item_qty = $item['product_qty'];

                $sql3 = "INSERT INTO order_items(order_id, product_id, item_qty, item_price) 
                VALUES ('$order_id', '$product_id', '$item_qty', '$item_price')";   
                $itemInsert = mysqli_query($con,$sql3);

                $sql4 = "SELECT * FROM product WHERE product_id ='$product_id' LIMIT 1";
                $product = mysqli_query($con,$sql4);

                $productData = mysqli_fetch_array($product);
                $currentQty = $productData['product_quantity'];

                $new_qty = $currentQty - $item_qty;

                $sql5 = "UPDATE product SET product_quantity = '$new_qty' WHERE product_id = '$product_id' ";
                $updateProductQty = mysqli_query($con,$sql5);

            }

            $sql3 = "DELETE FROM carts WHERE user_id = '$user_id' ";
            $deleteCart = mysqli_query($con,$sql3);

            $_SESSION['message'] = "Order placed successfully";
            header("Location: ../myOrder.php");
            die();
             } else {
            
        }

    }

} else {
    header("Location: ../index.php");
    exit(); 
}
