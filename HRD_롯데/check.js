function joinCheck() {
	if(frm.pid.value.length==0){
		alert("선수이름이 입력되지 않았습니다.");
		frm.pname.focus();
		return false;
	}
	if(frm.pposition.value=="") {
		alert("포지션이 선택되지 않았습니다.");
		frm.pposition.focus();
		return false;
	}
	if(frm.pdate.value.length==0) {
		alert("선수등록일이 입력되지 않았습니다.");
		frm.pdate.focus();
		return false;
	}
	if(frm.pgrade[0].checked==false && frm.pgrade[1].checked==false&&frm.pgrade[2].checked==false&&frm.pgrade[3].checked==false)
	 {
		alert("선수등급이 입력되지 않았습니다.");
		frm.pgrade.focus();
		return false;
	}
		alert("선수등록이 완료되었습니다.");
		document.frm.submit();
		return true;
}

function modify()
{
	alert("선수의 정보수정이 완료되었습니다");
	document.frm.submit();
	return true;
}

function resettt()
{
	alert("선수의 정보수정을 취소합니다");
	window.location = 'list.jsp';
}

function resett()
{
	alert("정보를 지우고 처음부터 다시 입력합니다");
	document.frm.reset();
}