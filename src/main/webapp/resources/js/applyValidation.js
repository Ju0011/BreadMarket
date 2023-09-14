function CheckApplyClass() {

	let id = document.getElementById("id");
	let name = document.getElementById("name");
	let phone = document.getElementById("phone");
	let people = document.getElementById("people");


	// 회원 아이디	
	if (!check(/^[a-zA-z0-9]{4,12}$/, id, "[회원 아이디]\n영어와 숫자를 조합하여 5~12자까지 입력하세요"))
		return false;

	//회원 아이디, 이름 공백일때
	if (id.value == null) {
		alert("[회원 아이디]\n회원 아이디를 입력해주세요");
		id.select();
		id.focus();
		return false;
	}
	if (name.value == null) {
		alert("[이름]\n이름을 입력해주세요");
		name.select();
		name.focus();
		return false;
	}
	
	// 핸드폰 번호 길이
	if (phone.value.length < 10 || name.value.length > 13) {
		alert("[핸드폰 번호]\n최소 10자에서 최대 12자까지 입력하세요");
		phone.select();
		phone.focus();
		return false;
	}
	// 회원 핸드폰 번호
	if (phone.value.length == 0 || isNaN(phone.value)) {
		alert("[핸드폰 번호]\n숫자만 입력하세요");
		phone.select();
		phone.focus();
		return false;
	}
	
	//신청 인원수 검사
	if (people.value.length < 0) {
		alert("[인원수]]\n한명 이상");
		phone.select();
		phone.focus();
		return false;
	}
	
	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	document.applyClass.submit()
}