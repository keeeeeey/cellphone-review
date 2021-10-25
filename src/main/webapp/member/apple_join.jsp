<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JOIN</title>
		<style>
			/* BTN */
			.btn {
			    height: 42px;
			    width: 500px;
			    justify-content: center;
			    background: #eee linear-gradient(to bottom, #fcfcfc, #eee);
			    border: 1px solid #d5d5d5;
			    border-radius: 8px;
			    display: flex;
			    align-items: center;
			    padding: 0 12px;
			    font-size: 16px;
			    font-weight: 500;
			    line-height: 1.5;
			    cursor: pointer;
			    box-sizing: border-box;
			    position: relative;
			    color: #333;
			    margin-left: 5px;
			}
			.btn:hover::before {
				content: "";
				position: absolute;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background: rgba(0,0,0,0.07);
			}
			.btn.btn--primary {
				color: #fff;
				background: #000;
			}
			
			/* CHECK__BTN */
			.btn2 {
			    height: 31px;
			    background: #eee linear-gradient(to bottom, #fcfcfc, #eee);
			    border: 1px solid #d5d5d5;
			    border-radius: 4px;
			    display: flex;
			    align-items: center;
			    padding: 0 12px;
			    font-size: 14px;
			    font-weight: 500;
			    line-height: 1.5;
			    cursor: pointer;
			    box-sizing: border-box;
			    position: relative;
			    color: #333;
			    margin-left: 5px;
			    width: 120px;
			}
			.btn2:hover::before {
				content: "";
				position: absolute;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background: rgba(0,0,0,0.07);
			}
			.btn2.btn--primary {
				color: #fff;
				background: #000;
			}
			
			/* MAIN */
			.join__inner {
				max-width: 500px;
			    margin: 0 auto;
			    height: 510px;
			    padding-top: 80px;
			}
			.join__inner .logo a {
				background: url("image/apple_logo2.png");
				background-size: 70px 70px;
				width: 70px;
				height: 70px;
				display: block;
				text-indent: -9999px;
				margin-left: 215px;
			}
			fieldset input {
				height: 24px;
				width: 345px;
				margin: 5px 0;
			}
			article .joinForm #id {
				width: 220px;
			}
			article .joinForm #nickname {
				width: 220px;
			}
			h2 {
				padding-top: 20px;
				text-align: center;
				font-size: 30px;
			}
			#buttons {
				margin-top: 10px;
				display: flex;
				justify-content: center;
			}
			#buttons input {
				margin-right: 5px;
			}
			fieldset {
				margin-top: 20px;
				margin-bottom: 10px;
				border-radius: 10px;
			}
			.joinForm tr {
				height: 10px;
			}
			#idGroup {
				display: flex;
			}
			#nicknameGroup {
				display: flex;
			}
		</style>
	</head>
	<body>
	<div class="body__container">
		<div class="join__inner">
			<article>
				<div class="logo">
					<a href="NonageServlet?command=apple_review">HOME</a>
				</div>
			    <form name="frmMember" class="joinForm">
				    <fieldset>
				    	<legend>회원가입</legend>
				    	<table>
				    		<tr>
				    			<th>아이디</th>
				    			<td id="idGroup">
				    				<input type="text" name="id" id="id">
		    						<input type="button" value="아이디 중복 체크" class="btn2 btn--primary" onclick="idCheck()">
			    				</td>
				    		</tr>
				    		<tr>
				    			<td></td>
								<td></td>
				    		</tr>
				    		<tr>
				    			<th>비밀번호</th>
				    			<td><input type="password" name="pw"></td>
				    		</tr>
				    		<tr>
				    			<td></td>
				    			<td></td>
				    		</tr>
				    		<tr>
				    			<th>비밀번호 확인</th>
				    			<td><input type="password" name="pwCheck"></td>
				    		</tr>
				    		<tr>
				    			<td></td>
				    			<td></td>
				    		</tr>
				    		<tr>
				    			<th>이름</th>
				    			<td><input type="text" name="name"></td>
				    		</tr>
				    		<tr>
				    			<td></td>
				    			<td></td>
				    		</tr>
				    		<tr>
				    			<th>주민등록번호</th>
				    			<td><input type="text" name="registration"></td>
				    		</tr>
				    		<tr>
				    			<td></td>
				    			<td></td>
				    		</tr>
				    		<tr>
				    			<th>닉네임</th>
				    			<td id="nicknameGroup">
				    				<input type="text" name="nickname" id="nickname">
				    				<input type="button" value="닉네임 중복 체크" class="btn2 btn--primary" onclick="nicknameCheck()">
				    			</td>
				    		</tr>
				    		<tr>
				    			<td></td>
								<td></td>
				    		</tr>
				    		<tr>
				    			<th>E-Mail</th>
				    			<td><input type="text" name="email"></td>
				    		</tr>
				    		<tr>
				    			<td></td>
				    			<td></td>
				    		</tr>
				    		<tr>
				    			<th>사용중인 휴대폰</th>
				    			<td><input type="text" name="model"></td>
				    		</tr>
				    		<tr>
				    			<td></td>
				    			<td></td>
				    		</tr>
				    		<tr>
			        			<th>휴대전화</th>
			        			<td><input type="text" name="phone"></td>
			        		</tr>
			        		<tr>
				    			<td></td>
				    			<td></td>
				    		</tr>
				    	</table>     
				    </fieldset>
				    <div id="buttons">
				        <input type="button" value="가입하기" onclick="fn_sendMember()" class="btn btn--primary">
				    </div>
			    </form>
			</article>
		</div>
	</div>
	<script type= "text/javascript">
		function fn_sendMember() {
			var frmMember = document.frmMember;
			var id = frmMember.id.value.trim();
			var pw = frmMember.pw.value.trim();
			var name = frmMember.name.value.trim();
			var nickname = frmMember.nickname.value.trim();
			var registration = frmMember.registration.value.trim();
			var email = frmMember.email.value.trim();
			var model = frmMember.model.value.trim();
			var phone = frmMember.phone.value.trim();
			if (id.length == 0 || id == '') {
				alert("아이디는 필수입니다.");
			} else if (pw.length == 0 || pw == '') {
				alert("비밀번호는 필수입니다.");
			} else if (name.length == 0 || name == '') {
				alert("이름은 필수입니다.");
			} else if (registration.length == 0 || registration == '') {
				alert("주민등록번호는 필수입니다.");
			} else if (nickname.length == 0 || nickname == '') {
				alert("닉네임은 필수입니다.");
			} else if (email.length == 0 || email == '') {
				alert("이메일은 필수입니다");
			} else if (model.length == 0 || model == '') {
				alert("사용중인 휴대폰은 필수입니다.");
			} else if (phone.length == 0 || phone == '') {
				alert("휴대전화는 필수입니다.");
			} else {
				frmMember.method="post";
				frmMember.action="NonageServlet?command=join&company=apple";
				frmMember.submit();
			}
		}
		
		function idCheck() {
			var id = document.frmMember.id.value.trim();
			if (id == null || id == "") {
				alert('아이디를 입력하여 주십시오');
				id.focus();
			} else {
				var url = "NonageServlet?command=idCheck&id=" + id;
				window.open(url, "pop", "width=400, height=200");
			} 
		}
		
		function nicknameCheck() {
			var nickname = document.frmMember.nickname.value.trim();
			if (nickname == null || nickname == "") {
				alert('닉네임을 입력하여 주십시오');
				nickname.focus();
			} else {
				var url = "NonageServlet?command=nicknameCheck&nickname=" + nickname;
				window.open(url, "pop", "width=400, height=200");
			} 
		}
	</script>	
	</body>
</html>

  