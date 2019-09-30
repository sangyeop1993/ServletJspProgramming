<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			
			body, html {
				height: 100%;
				margin: 0px;
				background-color: #999999;
			}
			
			#wrapper {
				width: 100%;
				height: 100%;
				display: flex;
				flex-direction: column;
			}
			
			#header {
				border-bottom: 1px solid black;
				margin-bottom: 10px;
			}
			
			#content {
				flex-grow: 1;
				display: flex;
				min-height: 0;
			}
			
			#sideBar {
				width: 250px;
				background-color: #ff99c2;
				border-right: 1px solid black;
				padding-right: 10px;
				overflow-y: scroll;
			}
			
			#center {
				flex-grow: 1;
				padding: 10px;
			}
			
			#center iframe {
				margin: 0px;
				width: 100%;
				height: 100%;
			}
			
			#center h4 {
				margin-top: 0px;
			}
			
			#footer {
				border-top: 1px solid black;
				margin-top: 10px;
				margin-bottom: 10px;
			}
		</style>
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<h3>ServletJspProgramming</h3>
			</div>
			<div id="content">
				<div id="sideBar">
					<ul>
						<li><a href="dispatcher1" target="iframe">서블릿 작성과 URL 매핑</a></li>
						<li><a href="dispatcher2" target="iframe">서블릿 초기화</a></li>
						<li><a href="dispatcher3?name=hongkildong&age=25&tel=01012341234" target="iframe">GET 방식으로 요청</a></li>
						<li>
							<form action="dispatcher3" method="get" target="iframe">
								<input type="text" name="name" value="hongkildong">
								<input type="number" name="age" value="25">
								<input type="tel" name="tel" value="01012341234">
								<input type="submit" value="GET방식으로 요청">
							</form>
							<form action="dispatcher3" method="post" target="iframe">
								<input type="text" name="name" value="hongkildong">
								<input type="number" name="age" value="25">
								<input type="tel" name="tel" value="01012341234">
								<input type="submit" value="POST방식으로 요청">
							</form>
						</li>
						<li><a href="dispatcher4" target="iframe">응답 보내기</a></li>
						<li><a href="dispatcher5?name=hongkildong&age=25" target="iframe">요청 파라미터 받기</a></li>
						<li>
							<p>요청 파라미터 전달</p>
							<form action="dispatcher5" method="get" target="iframe">
								<input type="text" name="name" value="hongkildong">
								<input type="number" name="age" value="25">
								<input type="submit" value="GET방식으로 요청">
							</form>
							<form action="dispatcher5" method="post" target="iframe">
								<input type="text" name="name" value="hongkildong">
								<input type="number" name="age" value="25">
								<input type="submit" value="POST방식으로 요청">
							</form>
						</li>
						<li>
							<p>요청 파라미터 한글 처리</p>
							<form action="dispatcher6" method="get" target="iframe">
								<input type="text" name="title">
								<input type="text" name="content">
								<input type="submit" value="GET방식으로 요청">
							</form>
							<form action="dispatcher6" method="post" target="iframe">
								<input type="text" name="title">
								<input type="text" name="content">
								<input type="submit" value="POST방식으로 요청">
							</form>
						</li>
						<li>
							<p>객체 사용 범위</p>
							<a href="dispatcher7" target="iframe">객체 저장하기</a><br/>
							<a href="dispatcher8" target="iframe">객체 가져오기</a><br/>
						</li>
					</ul>
				</div>
				<div id="center">
					<iframe name= "iframe" src="https://tomcat.apache.org/" frameborder="0"></iframe>
				</div>
			</div>
			<div id="footer">2019. IoT. K.S.Y</div>
		</div>
	</body>
</html>