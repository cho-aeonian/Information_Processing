<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
</head>
<body>
<script type="text/script" src="check.js"></script>
<jsp:include page="header.jsp" />
<section>
   <h2><b>차량입차</b></h2>
   <form name="frm"  action="i-action.jsp" method="get">
      <table border="1">
         <tr>
            <td>차량번호</td>
            <td><input type="text" name="car_number">예) 22가1111 </td>
         </tr>
         <tr>
            <td>소유자이름</td>
            <td><input type="text" name="owner">예) 백선수 </td>
         </tr>
         <tr>
            <td>주차위치선택</td>
            <td>
               <input type="radio" name="Location" value="A001"><b>A001</b>
               <input type="radio" name="Location" value="A002"><b>A002</b>
               <input type="radio" name="Location" value="A003"><b>A003</b>
               <input type="radio" name="Location" value="A004"><b>A004</b>
               <input type="radio" name="Location" value="A005"><b>A005</b>
            </td>
         </tr>
         <tr>
            <td>입차시간</td>
            <td><input type="text" name="in_time">예) 22:22 </td>
         </tr>
         <tr>
            <td colspan="2">
               <input type="submit" value="입차등록" onclick="check_info()"> 
               <input type="reset" value="다시쓰기" onclick="alert('정보를 지우고 처음부터 다시 입력합니다!');">
            </td> 
         </tr>
      </table>
   </form> 
</section>

<jsp:include page="footer.jsp" />

</body>
</html>