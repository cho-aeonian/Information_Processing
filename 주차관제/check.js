function check_info() {
	if(document.frm1.car_number.value == "") {
		// focus 문제 있었음..
		alert("차량번호가 입력되지 않았습니다.");
		frm1.car_number.focus();
	} else if(document.frm1.owner.value == "") {
		alert("소유자이름이 입력되지 않았습니다.");
		frm1.owner.focus();
	} else if(document.frm1.location.value == "") {
		alert("주차위치가 선택되지 않았습니다.");
		frm1.location.focus();
	} else if(document.frm1.in_time.value == "") {
		alert("입차시간이 입력되지 않았습니다.");
		frm1.in_time.focus();
	} else {
		alert("입차가 완료되었습니다!");
		frm1.submit();
	}
}

function check_car_number() {
	if(document.frm2.car_number.value == '') { 
		alert('차량번호가 입력되지 않았습니다!');
		frm2.car_number.focus(); 
	} else {
		document.frm2.submit();
	}
}
function check_out_info() {
	if(document.frm3.car_number.value == "") {
		alert("차량번호가 선택되지 않았습니다.")
		frm3.car_number.focus();
	} else if(document.frm3.out_time.value == "") {
		alert("출차시간이 입력되지 않았습니다.")
		frm3.out_time.focus();
	} else {
		frm3.submit();
	}
}

function get_name(car_number) {

	if (car_number == "11가1111"){
		frm3.owner.value = "박선수";
	}
	else if (car_number == "22가1111"){
		frm3.owner.value = "백선수";
	}
	else if (frm3.car_number.value.indexOf("33가1111") != -1){
		frm3.owner.value = "채선수";
	}
	else if (frm3.car_number.value.indexOf("44가1111") != -1){
		frm3.owner.value = "임선수";
	}
	else if (frm3.car_number.value.indexOf("55가1111") != -1){
		frm3.owner.value = "한선수";
	}
	else {
		alert("oh")
	}
	
	
}