$( document ).ready(function() {

	var qty = 0;
	var price = 0;
    $( ".continue-to-quantity-btn" ).on( "click", function() {
 if(checkEmail($('#email').val())){
 	$('#quantity_content, div.continue-to-price').show();
 	$('#contactinfo_content, div.continue-to-quantity').hide();
 }
 $("div.nav-m>div").css({color: "black"});
 $("#quantity").css({color: "red"});
	});

	$( ".continue-to-price-btn" ).on( "click", function() {
		if($('#quantity_val').val()>1000){
			alert('Більше за 1000'); return;
		}else{
			qty = $('#quantity_val').val();
		}
   if(qty<11){
   	price = 10;
   }
   else if(qty>10 && qty<101){
   	price = 100;
   }
    else if(qty>100 && qty<1001){
   	price = 1000;
   }
    $('#price-num').text(price + '$');
		$('#price-content, div.continue-to-done').show();
 	$('#quantity_content, div.continue-to-price').hide();
 	$("div.nav-m>div").css({color: "black"});
 	$("#price").css({color: "red"});
	});
	
	$( ".back-to-contactinfo-btn" ).on( "click", function() {
		$('#contactinfo_content, div.continue-to-quantity').show();
 	$('#quantity_content, div.continue-to-price').hide();
 	$("div.nav-m>div").css({color: "black"});
 	$("#contactinfo").css({color: "red"});
	});

	$( ".continue-to-done-btn" ).on( "click", function() {
		var name = $('#name').val();
		var email = $('#email').val();
		var phone = $('#phone').val();
		
					$.ajax({
		  url: "mailer.php",
        method: "POST",
        data: {
        	name: name, email: email, phone:  phone, price: price, quantity: qty
        },
         dataType: "json",
         success: function(result) {
            $('#done_success_content, div.start-again').show();
        }, 
        error: function(err) {
            $('#done_warn_content, div.start-again').show();
        }
		 		});
		$("div.nav-m>div").css({color: "black"});
		$("#done").css({color: "red"});
 	$('#price-content, div.continue-to-done').hide();
	});


	$( ".back-to-quantity-btn" ).on( "click", function() {
		$('#quantity_content, div.continue-to-price').show();
 	$('#price-content, div.continue-to-done').hide();
 	$("div.nav-m>div").css({color: "black"});
 	$("#quantity").css({color: "red"});
	});

	$( ".start-again-btn" ).on( "click", function() {
		$('#contactinfo_content, div.continue-to-quantity').show();
 	$('#done_success_content, div.start-again, #done_warn_content').hide();
 	$("div.nav-m>div").css({color: "black"});
 	$("#contactinfo").css({color: "red"});
 	$(':input').not(':button, :submit').val('');
	});

});





 function checkEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}