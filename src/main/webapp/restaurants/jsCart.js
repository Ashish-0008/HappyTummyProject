function addtocart(pName, proPrize) 
{

    let cart = localStorage.getItem("cart");
    if (cart == null) 
    {
        // initial  empty cart

        let products = [];
        let product = { productName: pName, productPrize: proPrize, productQuantity: 1 };

        products.push(product);
        localStorage.setItem("cart", JSON.stringify(products));
        // console.log("item added  to a empty cart")
        showtoast("item added  to a empty cart");
    }

  else {

        // initial some items 
        let pcart = JSON.parse(cart);
        let oldProduct = pcart.find((item) => item.productName == pName);


        if (oldProduct) {
            // only increase quantity if product is present in cart
            oldProduct.productQuantity = oldProduct.productQuantity + 1;
            pcart.map((item) => {
                if (item.productName == oldProduct.productName); {
                    item.productQuantity = oldProduct.productQuantity;

                }

            });
            localStorage.setItem("cart", JSON.stringify(pcart));
            // console.log("product quantity updated")
            showtoast("Product quantity updated");

        }
   else {
            // add new product when other product are present 
        let product = { productName: pName, productPrize: proPrize, productQuantity: 1 };
            pcart.push(product);
            localStorage.setItem("cart", JSON.stringify(pcart));
            // console.log("product is added first time")
            showtoast("New Product added");

        }
    }
    updateCart();
}
// cart update on adding item

function updateCart() {
    let cartString = localStorage.getItem("cart");
    let cart = JSON.parse(cartString);

    if (cart == null || cart.length == 0) {
        console.log("cart is empty");
        $(".cart-items").html("(0)");
        $(".cart-body").html("<h3>Cart does not have any items </h3>");
        $(".checkout-btn").addClass("disabled");
        $(".prcd-bt").addClass("disabled");

        // $(".proceedtopay-btn").addClass("disabled");


    }
    else {
        console.log(cart);
        $(".cart-items").html(`(${cart.length})`);

 let table = `
<table class='table table-primary table-hover'>
<thead class='thread-light'>
<tr>
<th>Product Name</th>
<th>Price</th>
<th>Quantity</th>
<th>TotalPrice</th>
<th>Action</th>


</tr>
</thead>

`;

            let totalPrice =0 ;
        cart.map((item) => {

            table += ` 
    

 <tr>


 <td>  ${item.productName} </td>
 <td>  ${item.productPrize} </td>
 <td>  ${item.productQuantity} </td>
 <td>  ${item.productQuantity*item.productPrize} </td>
 <td> <button onclick=" deleteItemFromCart( '${item.productName }')" class="btn btn-danger btn-sm" > Remove </button> </td>
 
 </tr>
 
 
 `
            totalPrice += item.productPrize * item.productQuantity;

        });
        

       table = table + ` 
<tr> <td colspan='5 class='text-left' ><b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Total Cart Value: &#8377 ${totalPrice} </td> </tr>
 
</table>`
        
        $(".cart-body").html(table);
        
        $(".checkout-btn").removeClass("disabled");
        $(".prcd-bt").removeClass("disabled");

    }

}
 function deleteItemFromCart(pName) {
    let cart= JSON.parse(localStorage.getItem('cart'));
   let newcart= cart.filter((item)=> item.productName != pName );
localStorage.setItem("cart", JSON.stringify(newcart));
updateCart();
showtoast("Items removed");



 }
$(document).ready(function () {
    updateCart();
});

// toast function
function showtoast(content) {
    $("#toast").addClass("display");
    $("#toast").html(content);

    setTimeout(() => {
        $("#toast").removeClass("display");

    }, 2000);
}

