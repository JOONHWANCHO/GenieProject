<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<style>
section{
	padding: 80px 18%;
}
	.home {
		position: relative;
		width: 100%;
		height: 100vh;
		margin: 0;
		padding:6% 23%;

		/*background: url(../img/background.jpg);*/
		background: #d3f1ee;
		background-size: cover;
		background-position: center;
	}
	.home .bubbles{
		display:flex;
		justify-content: center;
		align-items: center;
	}
	.bubbles {
		display: inline-block;
		font-family: 'Josefin Sans', sans-serif;
		position: relative;
		/* margin-bottom: 6em; */
	}
	.bubbles h1 {
		position: relative;
		margin: 1em 0 0;
		font-family: 'Josefin Sans', sans-serif;
		color: #1a534e;
		font-size:4em;
		z-index: 2;
	}
	.individual-bubble {
		position: absolute;
		border-radius: 100%;
		bottom: 10px;
		background-color: #81d8d0;
		z-index: 1;
	}

	.home-text p{
		color: #ffffffbf;
		font-size:  2em;
		font-weight: 400;
		line-height: 38px;
		margin-top:1em;
		margin-bottom: 3em;
	}
	.home-btn{
		display: inline-block;
		font-size: 16px;
		padding: 15px 30px;
		background: #ffffffbf;
		color: #48FFD5;
		border-radius: 4px;
		transition: ease .40s;
	}
	.home-btn:hover{
		background: var(--bg-color);
		transform: scale(1.1);
	}

</style>
<script>
	jQuery(document).ready(function($){
	var bArray = [];
	var sArray = [4,6,8,10];
		for (var i = 0; i < $('.bubbles').width(); i++) {
		bArray.push(i);
		}
	function randomValue(arr) {
		return arr[Math.floor(Math.random() * arr.length)];
	}
	setInterval(function(){
		var size = randomValue(sArray);
		$('.bubbles').append('<div class="individual-bubble" style="left: ' + randomValue(bArray) + 'px; width: ' + size + 'px; height:' + size + 'px;"></div>');
		$('.individual-bubble').animate({
			'bottom': '100%',
			'opacity' : '-=0.7'
		}, 2000, function(){
			$(this).remove()
		});
		}, 350);
	});
</script>
<script src="https://kit.fontawesome.com/8d73d915f1.js" crossorigin="anonymous"></script>

	<!--Genie 메인화면--->
	<section class="home" id="home">
		<div class="bubbles">
			<h1>NOW IS THE PRESENT 2022</h1>
		</div>
		<div class="home-text">
			<p>어떤 선물을 찾고 있나요?<br> 고민이 되신다면 AI추천서비스를 이용해보세요</p>
			<a href="/genie/genie_01" class="home-btn"><i class="fa-solid fa-gift fa-2xl"></i></a>
		</div>
	</section>