<!DOCTYPE html>
<html>
<head>
    <title>Add Order</title>
</head>
<body>
  <%@ include file="mainnavbar.jsp" %>

    <h3 style="text-align: center;"><u>Add Order</u></h3>
    <div class="form-container">
        <form method="post" action="insertorder">
            <table>
                <tr>
                    <td><label for="orderId">Enter Order ID</label></td>
                    <td><input type="number" id="orderId" name="orderId" required/></td>
                </tr>
                <tr>
                    <td><label for="productName">Enter Product Name</label></td>
                    <td><input type="text" id="productName" name="productName" required/></td>
                </tr>
                <tr>
                    <td><label for="quantity">Enter Quantity</label></td>
                    <td><input type="number" id="quantity" name="quantity" required/></td>
                </tr>
                <tr>
                    <td><label for="orderDate">Enter Order Date</label></td>
                    <td><input type="date" id="orderDate" name="orderDate" required/></td>
                </tr>
                <tr>
                    <td><label for="customerName">Enter Customer Name</label></td>
                    <td><input type="text" id="customerName" name="customerName" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Submit Order"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
