<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <script th:inline="javascript">
    function onScriptLoad(){
    var config = {
    "root": "",
    "flow": "DEFAULT",
    "data": {
    "orderId": /*[[${orderId}]]*/ 'default',
    "token": /*[[${txnToken}]]*/ 'default',
    "tokenType": "TXN_TOKEN",
    "amount": /*[[${amount}]]*/ 'default'
    },
    "handler": {
    "notifyMerchant": function(eventName,data){
    console.log("notifyMerchant handler function called");
    console.log("eventName => ",eventName);
    console.log("data => ",data);
    }
    }
    };
    if(window.Paytm && window.Paytm.CheckoutJS){
    console.log(window.Paytm);
    window.Paytm.CheckoutJS.onLoad(function excecuteAfterCompleteLoad() {
    // initialze configuration using init method
    window.Paytm.CheckoutJS.init(config).then(function onSuccess() {
    // after successfully updating configuration, invoke JS Checkout
    window.Paytm.CheckoutJS.invoke();
    }).catch(function onError(error){
    console.log("error => ",error);
    });
    });
    }
    }
    </script>
    <script type="application/javascript" src="https://securegw.paytm.in/merchantpgpui/checkoutjs/merchants/{merchant_id}.js" onload="onScriptLoad();" crossorigin="anonymous"></script>
</head>
<body>

</body>
</html>