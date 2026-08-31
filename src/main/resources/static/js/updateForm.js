function goPopup(){
	var pop = window.open("/member/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(maddr1,maddr2, mzipno){
	document.member.maddr1.value = maddr1;
	document.member.maddr2.value = maddr2;
	document.member.mzipno.value = mzipno;
}

function check() {
	let mpasswd = document.member.mpasswd;
	let mpasswd2 = document.member.mpasswd2;
	let mtel1 = document.member.mtel1;
	let mtel2 = document.member.mtel2;
	let mtel3 = document.member.mtel3;
	let maddr1 = document.member.maddr1;
	
	let expMpasswd = /^[a-zA-Z0-9!@#$%^&*?]{8,15}$/;
	let expMtel2 = /^[0-9]{3,4}$/;
	let expMtel3 = /^[0-9]{4}$/;
	
	if(!mpasswd.value) {
		alert("비밀번호를 입력해주세요");
		mpasswd.focus();
		return false;
	}
	
	if(!expMpasswd.test(mpasswd.value)) {
		alert("비밀번호는 영문 대,소문자와 숫자, 특수기호(!@#$%^&*?)의 조합 8~15자만 가능합니다");
		mpasswd.value="";
		mpasswd.focus();
		return false;
	}
	
	if(mpasswd.value != mpasswd2.value) {
		alert("비밀번호가 일치하지 않습니다");
		mpasswd.value = "";
		mpasswd2.value = "";
		mpasswd.focus();
		return false;
	}
	
	if(!mtel1.value) {
		alert("연락처를 입력해주세요");
		return false;
	}
	
	if(!mtel2.value) {
		alert("연락처를 입력해주세요");
		return false;
	}
	
	if(!mtel3.value) {
		alert("연락처를 입력해주세요");
		return false;
	}
	
	if(!expMtel2.test(mtel2.value)) {
		alert("연락처를 올바르게 입력해주세요");
		mtel2.value = "";
		mtel3.value = "";
		return false;
	}
		
	if(!expMtel3.test(mtel3.value)) {
		alert("연락처를 올바르게 입력해주세요");
		mtel2.value = "";
		mtel3.value = "";
		return false;
	}
	
	if(!maddr1.value) {
		alert("주소를 입력해주세요");
		return false;
	}
}