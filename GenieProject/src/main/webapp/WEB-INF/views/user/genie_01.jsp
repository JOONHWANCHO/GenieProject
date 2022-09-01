<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
section{
	
}
.home{
	position: relative;
	width: 100%;
	height: 100vh;
	/*background: url(../img/background.jpg);*/
	background: linear-gradient(to top, #56D8FF, #48FFD5);
	background-size: cover;
	background-position: center;
	display: grid;
	grid-template-columns: repeat(1, 1fr);
	align-items: center;
}
.home p{
	margin:0;
	padding:1rem;
	
	font-size: 4rem;
	font-weight: 400;
	text-align: center;
	text-decoration: none;
	color: #fff;
	
	letter-spacing:3px;
}
.home span{
	align-items:center;
	text-align:center;
	padding:150px;
}
.home button{
	margin: 0;
	padding: 0.5rem 1rem;
	
	font-size: 2rem;
	font-weight: 400;
	text-decoration: none;
	
	display: inline-block;
	width: auto;
	
	border: none;
	border-radius: 10px;
	border-padding: 20px;
	
	letter-spacing: 5px;
}
.home button:hover{
	color:#56D8FF;
	transition: .4s;
	transform: scale(1.1);
}
</style>

<section>
	<div class="home">
	<p>어떤분에게 선물할 계획이세요?</p>
	<span>
	<a href="/user/genie_02"><button>부모님</button></a>
	<a href="/user/genie_02"><button>배우자</button></a>
	<a href="/user/genie_02"><button>연인</button></a>
	<a href="/user/genie_02"><button>친구</button></a><br><br>
	<a href="/user/genie_02"><button>회사</button></a>
	<a href="/user/genie_02"><button>친인척</button></a>
	<a href="/user/genie_02"><button>스승</button></a>
	<a href="/user/genie_02"><button>가족</button></a>
	</span>
	</div>
</section>
