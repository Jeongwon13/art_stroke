<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<%-- 문자열 관련 함수(메서드) 제공 JSTL (EL형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	 
 

	<c:forEach var="adminType" items="${adminTypeList}">
	    <c:if test="${adminCode == adminType.adminCode}">
	        <c:set var="adminName" value="${adminType.adminName}" />
	    </c:if>
	</c:forEach>
	
 
 
	<c:set var="pagination" value="${map.pagination}" />
	  

    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
            <link href="${contextPath}/resources/css/admin/admin-chat.css" rel="stylesheet" />
            <link href="${contextPath}/resources/css/admin/admin-styles.css" rel="stylesheet" />
            <link href="${contextPath}/resources/css/admin/admin-data-table.css" rel="stylesheet" />
            <link href="${contextPath}/resources/css/admin/admin-main.css" rel="stylesheet" />
            <link rel="stylesheet" href="${contextPath}/resources/css/admin/admin-icon.css">
    
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
          
         </head>
    
<body>
 <main>

    <div class="admin-write">
      
    
<form action="writeForm/qnaSendBack" method="post">
    <div class="popup-table">
        <table class="writeMessage" style="width: 300px;">
            <tr>
                <td>회원</td>
                <td>
                    <input type="hidden" id="memberId" class="messageContent" name="replyMemberId" maxlength="30" autocomplete="off" value="${memberId}" /> 
                    <input type="text" id="memberNick" class="messageContent" name="memberNick" maxlength="30" autocomplete="off" value="${memberNick}" /> 
                    
                    <input type="hidden" id="qnaId" class="messageContent" name="replyQnANo" maxlength="30" autocomplete="off" value="${qnaId}"/>
                </td>
            </tr> 
            <!-- 여기서는  session에 등록된 로그인 계정의 닉네임. -->
             
            <tr>
                <td>답변</td>
                <td>
                    <textarea id ="messageContent" class="messageContent" name ="replyContent"></textarea>
                </td>
            </tr>
        </table>
    </div>
    <input type="hidden" id="senderId" name="senderId" value="">
    <div class="popupBtn-wrap">
        <button  class="admin-btn" id="Send" type="submit">전송</button>
        <button  type="button" class="admin-btn" onclick="closePopup()">닫기</button>
    </div>
</form>    
</div>
</main>
 
 
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="${contextPath}/resources/js/admin/admin-common.js"></script>

<script src="${contextPath}/resources/js/admin/admin-chat.js"></script> 
<script src="${contextPath}/resources/js/admin/admin-scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="${contextPath}/resources/assets/demo/chart-area-demo.js"></script>
<script src="${contextPath}/resources/assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<script src="${contextPath}/resources/js/admin/datatables-simple-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>

</body>
</html>