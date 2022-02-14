<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ender Online Class</title>

<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css?ver=1">

<!-- 굳이 필요없는 favicon.ico 404 에러 페이지  -->
<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">

</head>
<body>

	<!-- header section starts  -->

	<!-- 정적 -> 파라미터 값을 받을 수 없음 -->
	<%-- <%@ include file="/WEB-INF/header.jsp"%> --%>
	<!-- 동적 -> 파라미터 값 받을 수 있음 -->
	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="home" id="home">

		<div class="row">

			<div class="content">
				<h3>75% 할인</h3>
				<p>지금 수강신청을 하시면 교재를 75% 할인 된 가격으로 구입하실 수 있습니다!</p>
				<a href="#" class="btn">수강하기</a>
			</div>

			<div class="swiper books-slider">
				<div class="swiper-wrapper">
					<a href="#" class="swiper-slide"><img src="image/JSP-book.png"
						alt=""></a> <a href="#" class="swiper-slide"><img
						src="image/JS-book.png" alt=""></a> <a href="#"
						class="swiper-slide"><img src="image/JAVA-book.png" alt=""></a>
					<a href="#" class="swiper-slide"><img src="image/DB-book.png"
						alt=""></a> <a href="#" class="swiper-slide"><img
						src="image/PYTHON-book.png" alt=""></a> <a href="#"
						class="swiper-slide"><img src="image/HTML-book.png" alt=""></a>
				</div>
				<img src="image/stand.png" class="stand" alt="">
			</div>

		</div>

	</section>

	<!-- home section ense  -->

	<!-- icons section starts  -->

	<section class="icons-container">

		<div class="icons">
			<i class="fas fa-shipping-fast"></i>
			<div class="content">
				<h3>배송비 무료</h3>
				<p>order over $100</p>
			</div>
		</div>

		<div class="icons">
			<i class="fas fa-lock"></i>
			<div class="content">
				<h3>정보 보안</h3>
				<p>100 secure payment</p>
			</div>
		</div>

		<div class="icons">
			<i class="fas fa-redo-alt"></i>
			<div class="content">
				<h3>쉬운 환불</h3>
				<p>10 days returns</p>
			</div>
		</div>

		<div class="icons">
			<i class="fas fa-headset"></i>
			<div class="content">
				<h3>24시간 상담</h3>
				<p>call us anytime</p>
			</div>
		</div>

	</section>

	<!-- icons section ends -->

	<!-- featured section starts  -->

	<section class="featured" id="featured">

		<h1 class="heading">
			<span>인기 교수</span>
		</h1>

		<div class="swiper featured-slider">

			<div class="swiper-wrapper">

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-1.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-2.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-3.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-4.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-5.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-6.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-7.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-8.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-9.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="#" class="fas fa-search"></a> <a href="#"
							class="fas fa-heart"></a> <a href="#" class="fas fa-eye"></a>
					</div>
					<div class="image">
						<img src="image/book-10.png" alt="">
					</div>
					<div class="content">
						<h3>featured books</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<a href="#" class="btn">add to cart</a>
					</div>
				</div>

			</div>

			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>

		</div>

	</section>

	<!-- featured section ends -->

	<!-- newsletter section starts -->

	<section class="newsletter">

		<form action="">
			<h3>구독하고 빠른 정보 받기</h3>
			<input type="email" name="" placeholder="이메일을 입력해주세요." id=""
				class="box"> <input type="submit" value="구독" class="btn">
		</form>

	</section>

	<!-- newsletter section ends -->

	<!-- arrivals section starts  -->

	<section class="arrivals" id="arrivals">

		<h1 class="heading">
			<span>인기 과목</span>
		</h1>

		<div class="swiper arrivals-slider">

			<div class="swiper-wrapper">

				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-1.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-2.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-3.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-4.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-5.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a>

			</div>

		</div>

		<div class="swiper arrivals-slider">

			<div class="swiper-wrapper">

				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-6.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-7.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-8.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-9.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a> <a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-10.png" alt="">
					</div>
					<div class="content">
						<h3>new arrivals</h3>
						<div class="price">
							$15.99 <span>$20.99</span>
						</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a>

			</div>

		</div>

	</section>

	<!-- arrivals section ends -->

	<!-- deal section starts  -->

	<section class="deal">

		<div class="content">
			<h3>오늘의 할인 과목</h3>
			<h1>50% 할인</h1>
			<p>날마다 오는 기회가 아닙니다. 오늘은 이 과목을 할인하겠습니다.</p>
			<a href="#" class="btn">수강하기</a>
		</div>

		<div class="image">
			<img src="image/deal-img.jpg" alt="">
		</div>

	</section>

	<!-- deal section ends -->

	<!-- reviews section starts  -->

	<section class="reviews" id="reviews">

		<h1 class="heading">
			<span>수강 후기</span>
		</h1>

		<div class="swiper reviews-slider">

			<div class="swiper-wrapper">

				<div class="swiper-slide box">
					<img src="image/pic-1.png" alt="">
					<h3>정 영진</h3>
					<p>여기에다가는 후기를 작성하면 됩니다.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-2.png" alt="">
					<h3>john deo</h3>
					<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
						Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
						facere hic.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-3.png" alt="">
					<h3>john deo</h3>
					<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
						Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
						facere hic.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>
				<div class="swiper-slide box">
					<img src="image/pic-4.png" alt="">
					<h3>john deo</h3>
					<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
						Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
						facere hic.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-5.png" alt="">
					<h3>john deo</h3>
					<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
						Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
						facere hic.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-6.png" alt="">
					<h3>john deo</h3>
					<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
						Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
						facere hic.</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half-alt"></i>
					</div>
				</div>

			</div>

		</div>

	</section>

	<!-- reviews section ends -->

	<!-- blogs section starts  -->

	<section class="blogs" id="blogs">

		<h1 class="heading">
			<span>블로그</span>
		</h1>

		<div class="swiper blogs-slider">

			<div class="swiper-wrapper">

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-1.jpg" alt="">
					</div>
					<div class="content">
						<h3>blog title goes here</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Optio, odio.</p>
						<a href="#" class="btn">read more</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-2.jpg" alt="">
					</div>
					<div class="content">
						<h3>blog title goes here</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Optio, odio.</p>
						<a href="#" class="btn">read more</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-3.jpg" alt="">
					</div>
					<div class="content">
						<h3>blog title goes here</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Optio, odio.</p>
						<a href="#" class="btn">read more</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-4.jpg" alt="">
					</div>
					<div class="content">
						<h3>blog title goes here</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Optio, odio.</p>
						<a href="#" class="btn">read more</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-5.jpg" alt="">
					</div>
					<div class="content">
						<h3>blog title goes here</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Optio, odio.</p>
						<a href="#" class="btn">read more</a>
					</div>
				</div>

			</div>

		</div>

	</section>

	<!-- blogs section ends -->

	<!-- footer section starts  -->

	<!-- 정적 -> 파라미터 값을 받을 수 없음 -->
	<%-- <%@ include file="/WEB-INF/footer.jsp"%> --%>
	<!-- 동적 -> 파라미터 값 받을 수 있음 -->
	<c:import url="/WEB-INF/footer.jsp" />
	
	<!-- footer section ends -->

	<!-- loader  -->

	<div class="loader-container">
		<img src="image/loading-img.gif">
	</div>

	<!-- Ajax -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

	<!-- custom js file link  -->
	<script src="${path}/js/ender.js"></script>

</body>
</html>