<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
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
}
.genie_02 p{
	padding:60px;
	color:#fff;
	font-size: 3em;
	text-align: center;
}
.genie_02 button{
	border: none;
	display: inline-block;
	font-size: 40px;
	margin: 80px 30px 30px 200px;
	color: #48FFD5;
	border-radius: 9px;
	transition: ease .40s;
}
.genie_02 button:hover{
	color:#56D8FF;
	transition: .4s;
	transform: scale(1.1);
}

</style>

<section class="home">
	<div class="genie_02">
	<p>선물 예산은 얼마정도로 생각하고 계세요?</p>
	<span>
	<a href="/user/genie_03"><button>1만원</button></a>
	<a href="/user/genie_03"><button>2~3만원</button></a>
	<a href="/user/genie_03"><button>5만원</button></a>
	<a href="/user/genie_03"><button>10만원</button></a><br><br>
	<a href="/user/genie_03"><button>20만원</button></a>
	<a href="/user/genie_03"><button>30만원</button></a>
	<a href="/user/genie_03"><button>40만원</button></a>
	<a href="/user/genie_03"><button>50만원</button></a>
	</span>
	</div>
</section>
