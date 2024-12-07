<!DOCTYPE html>
<html>
<head>
    <title>Add Booking</title>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>

    <h3 style="text-align: center;"><u>Add Booking</u></h3>
    <div class="form-container">
        <form method="post" action="insertbooking">
            <table>
                <tr>
                    <td><label for="bcname">Enter Customer Name</label></td>
                    <td><input type="text" id="bcname" name="bcname" required/></td>
                </tr>
                <tr>
                    <td><label for="bename">Enter Event Name</label></td>
                    <td><input type="text" id="bename" name="bename" required/></td>
                </tr>
                <tr>
                    <td><label for="bdate">Enter Booking Date</label></td>
                    <td><input type="date" id="bdate" name="bdate" required/></td>
                </tr>
                <tr>
                    <td><label for="nticket">Enter Number of Tickets</label></td>
                    <td><input type="number" id="nticket" name="nticket" required/></td>
                </tr>
                <tr>
                    <td><label for="tprice">Enter Total Price</label></td>
                    <td><input type="number" id="tprice" name="tprice" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Submit Booking"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
