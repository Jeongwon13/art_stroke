<img src="https://capsule-render.vercel.app/api?type=waving&color=auto&height=200&section=header&text=art_stroke&fontSize=90" />

### 프로젝트 설명
**아트 편집샵**

젊은 층을 중심으로 'Art'에 관심이 높아지는 요즘,<br> 한국의 젊은 작가들에게 정당한 저작권을 지급하고<br> 
작품을 굿즈로 만들어 작품을 소유할 수 있도록 하는 아트 편집샵입니다.<br>

작가와 소비자가 직접 교류하며 작가의 작품 세계를 공유하고 소통하는 플랫폼을 제공합니다.

### 전체 기능
- 회원 가입 및 로그인 기능(일반 및 소셜(구글, 네이버, 카카오)) - 일반회원, 관리자 회원
- 회원정보 수정, 탈퇴
- 상품 목록 출력, 조회 및 결제(신용카드, 카카오페이, 무통장입금)
- 상품/게시글 좋아요, 공유하기
- 마이페이지 최근 본 상품, 관심 상품, 쪽지함 구현
- 리뷰 작성, 수정, 삭제
- 게시글 작성, 수정, 삭제(작가게시판, 자유게시판, 공지사항, 문의사항)
- 게시글 댓글 작성, 수정, 삭제
- 관리자 페이지


### 내가 맡은 역할

★ DB 구축 및 배포
- AWS 사용하여 RDS 구축
- EC2 Linux Ubuntu 활용하여 도메인 있는 http 사이트 배포

★ 관리자 페이지 <br>
   
- 로그인 <br>
  &nbsp;&nbsp;관리자 페이지 이동 후, 권한이 있을 경우에만 로그인 가능 <br><br>
    
- 관리자 메인 페이지 <br>
  &nbsp;&nbsp;NAVER Analytics 사용하여 방문자 수 등 통계 페이지 생성<br>
  &nbsp;&nbsp;Best 게시판, Best 상품 화면에 출력하여 클릭 시 해당 페이지로 이동<br>
- 상품 관리 <br>
  &nbsp;&nbsp;상품 목록 구현(상품 DB 출력) <br>
  &nbsp;&nbsp;상품 검색 구현(키워드 검색 정보 출력) <br>
  &nbsp;&nbsp;상품 등록(이미지 및 상품 정보 등록) <br>
  &nbsp;&nbsp;상품 삭제(체크박스 체크 후 상품 삭제) <br>
  &nbsp;&nbsp;썸네일 클릭 시 모달 출력 <br>
- 회원 관리 <br>
  &nbsp;&nbsp;회원 목록 및 검색 구현(회원 List DB, 회원 정보 검색 출력) <br>
  &nbsp;&nbsp;작가 승인(체크박스 체크 후 작가 승인 버튼 클릭 시, 0 → 1로 UPDATE /
   권한 1일 경우 활동 영역 폭이 넓어짐) <br>
  &nbsp;&nbsp;블랙리스트 강제 탈퇴(탈퇴여부 N → Y) <br>

- 회원 Q&A <br>
  &nbsp;&nbsp;Q&A 목록 출력 및 주문 내용 검색 구현(주문 List DB 출력, 키워드 검색 정보 출력)<br>
  &nbsp;&nbsp;제목 클릭 시, 문의 한 상품 페이지로 이동<br>
  &nbsp;&nbsp;내용 클릭 시, 답변 메세지 팝업(문의 회원(받는 이) 자동 등록 / 전송 시, 해당 회원 쪽지함에 출력) <br>
  &nbsp;&nbsp;답변 완료 출력(미완료(red) → 답변완료(green)) <br>

- 신고 관리 <br>
  &nbsp;&nbsp;신고 내역 목록 및 검색 구현(신고 List DB 출력 및 신고 검색 정보 출력)<br>
  &nbsp;&nbsp;제목 클릭 시, 해당 게시판 이동<br>
  &nbsp;&nbsp;내용 클릭 시, 전체 내용 출력 <br>
  &nbsp;&nbsp;신고자 클릭 시, 메시지 팝업(신고자 자동 등록(받는 이) / 전송 시, 해당 회원 쪽지함에 출력) <br>
  &nbsp;&nbsp;신고 처리 여부(Null → Y로 바뀌면서 필터 적용 가능)<br>

- 리뷰 관리 <br>
  &nbsp;&nbsp;리뷰 목록 출력 및 리뷰 내용/별점 검색 구현(리뷰 List DB 출력, 키워드 검색 정보 출력)<br>
  &nbsp;&nbsp;이미지 클릭 시, 모달 구현 <br>
  &nbsp;&nbsp;리뷰 삭제 구현(체크박스 체크 후 삭제 클릭 시 리뷰 DELETE) <br> 

- 주문 관리 <br>
  &nbsp;&nbsp;주문 목록 출력(주문 List DB 출력)<br>
  &nbsp;&nbsp;주문 날짜 필터 구현(라디오 버튼(일주일, 1개월, 3개월))<br>
  &nbsp;&nbsp;주문 내용 검색 구현(키워드 검색 정보 출력) <br> 
  &nbsp;&nbsp;결제 방법 필터 구현(라디오 버튼(전체, 신용카드, 핸드폰, 카카오페이)) <br>
  
- 주문 관리 <br>
  &nbsp;&nbsp;주문 목록 출력(주문 List DB 출력)<br>
  &nbsp;&nbsp;주문 날짜 필터 구현(라디오 버튼(일주일, 1개월, 3개월))<br>
  &nbsp;&nbsp;주문 내용 검색 구현(키워드 검색 정보 출력) <br> 
  &nbsp;&nbsp;결제 방법 필터 구현(라디오 버튼(전체, 신용카드, 핸드폰, 카카오페이)) <br>
    
- 주문 취소 요청 <br>
  &nbsp;&nbsp;취소 요청 목록 출력(취소 요청 DB 출력)<br>
  &nbsp;&nbsp;주문자 클릭 시, 요청 회원에게 쪽지 전송 팝업(취소 여부 처리 후, 회원에게 쪽지 전송 / 해당 회원 쪽지함에 전송됨)<br>
  &nbsp;&nbsp;고객 취소 요청 승인 및 거절 기능(응답대기(D), 취소 승인(Y), 취소 거절(N)) <br> 
  &nbsp;&nbsp;취소사유 클릭 시 전체 내용 출력<br>
  
- 게시판 <br>
  &nbsp;&nbsp;게시판 목록 출력 및 게시글 관련 검색 구현(게시판 List DB 출력, 키워드 검색 정보 출력)<br>
  &nbsp;&nbsp;이미지 클릭 시, 모달 구현<br>
  &nbsp;&nbsp;제목 클릭 시, 해당 게시글 팝업 출력 <br> 
  &nbsp;&nbsp;게시글 삭제 구현(부적절한 게시글의 경우, 관리자의 권한으로 체크하여 삭제 구현(삭제여부 N → Y UPDATE))<br>
  
- 채팅(웹소켓) <br>
  &nbsp;&nbsp;채팅방 목록 출력(채팅방 List DB 출력)<br>
  &nbsp;&nbsp;채팅 구현(Handler 작성 후, JS로 Data 얻어와, Server Message Select & Insert)<br>
  &nbsp;&nbsp;채팅방 삭제(실제 DELETE 아닌, N → Y로 UPDATE 후 input hidden) <br>  
  
★ 트러블 슈팅 <br>
  &nbsp;&nbsp;WebSocket을 이용한 채팅 구현 시, 메시지 팝업 창을 띄워
  입력한 Input 메세지가 출력되는 것 까지 구현하였으나
  웹소켓 연결이 되지 않음
  (AJAX를 통한 메시지 출력만 되어 다른 PC에서 새로고침
  해야지만 메시지가 출력됨) 
  <br>
  &nbsp;&nbsp;SOLUTION: 구글 검색하여 얻은 다른 WebSocket 연결 코드의 변수, 
  로직과 우리가 직접 개발한 코드 변수, 로직 등을 체크하여 하나씩 접목시킴
   <br>  
  



<div align="center">
    <div align="center">
    Tech Stack<br>
</div>
   <img src="https://img.shields.io/badge/Java-007396?style=flat&logo=Java&logoColor=white" />
   <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white" />
   <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=CSS3&logoColor=white" />
   <img src="https://img.shields.io/badge/javascript-F7DF1E?style=flat&logo=javascript&logoColor=white" />
  <img src="https://img.shields.io/badge/Oracle SQL-F80000?style=flat&logo=oracle&logoColor=white" />
  <img src="https://img.shields.io/badge/jQuery-0769AD?style=flat&logo=jquery&logoColor=white" />
</div>
<br>
<div align="center">
    <div align="center">
    Tools & WAS <br>
</div>
<div align="center">
    <img src="https://img.shields.io/badge/Spring-6DB33F?style=flat&logo=spring&logoColor=white" />
    <img src="https://img.shields.io/badge/eclipseIDE-2C2255?style=flat&logo=eclipseide&logoColor=white" />
    <img src="https://img.shields.io/badge/Visual Studio Code-007ACC?style=flat&logo=visualstudiocode&logoColor=white" />
    <img src="https://img.shields.io/badge/Apache&nbsp;Tomcat-F8DC75?style=flat&logo=apachetomcat&logoColor=black" />
</div>
<br>
<div align="center">
  <div align="center">
  Collaborations<br>
</div>
<div align="center">
    <img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white" />
    <img src="https://img.shields.io/badge/amazon AWS-232F3E?style=flat&logo=amazonaws&logoColor=white" />
    <img src="https://img.shields.io/badge/Maven-C71A36?style=flat&logo=apachemaven&logoColor=white" />
</div>
