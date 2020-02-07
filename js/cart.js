$(document).ready(function(){

	update_cart();
	$(".cart_button").click(function(){
		//update_cart();
		//console.log($(this).attr("id"));
		$.post("cart.php",{id:$(this).attr("id")},function(data){
			update_cart();
		});
	});
});

function update_cart(){
	$('.cart').html('');
	$.post("update_cart.php",{}, function(data){
		var product = JSON.parse(data);
		for(var i in product){
			$.post("update_cart.php?cmd=info&id="+product[i], {}, function(data){
				$(".cart").append(data);
				//$('.cart').html('');
			});
		}
		
	});
}
