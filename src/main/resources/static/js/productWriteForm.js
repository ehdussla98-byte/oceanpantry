function check() {
	let pcategory = document.product.pcategory;
	let pname = document.product.pname;
	let pupload = document.product.pupload;
	let pprice = document.product.pprice;
	let pstock = document.product.pstock;
		
	if(!pcategory.value) {
		alert("상품분류를 선택해주세요");
		pcategory.focus();
		return false;
	}
	
	if(!pname.value) {
		alert("상품명을 입력해주세요");
		pname.focus();
		return false;
	}
		
	if(!pupload.value) {
		alert("상품이미지를 선택해주세요");
		return false;
	}
		
	if(!pprice.value) {
		alert("가격을 입력해주세요");
		pprice.focus();
		return false;
	}
	
	if(!pstock.value) {
		alert("재고수를 입력해주세요");
		pstock.focus();
		return false;
	}
}