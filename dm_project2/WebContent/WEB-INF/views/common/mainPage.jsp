
<style>
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>
<div class="row" >
	<div class="col-lg-12" style="height: 300px">
		<div id="demo" class="carousel slide" data-ride="carousel">
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<div class="carousel-inner" style="height: 700px">
				<div class="carousel-item active">
					<img
						src="<%=request.getContextPath()%>/resources/img/netflix-4011346_1920.jpg"
						alt="Los Angeles">
					<div class="carousel-caption">
						<h3>Los Angeles</h3>
						<p>We had such a great time in LA!</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="<%=request.getContextPath()%>/resources/img/los-angeles-2679490_1920.jpg"
						alt="Chicago">
					<div class="carousel-caption">
						<h3>Chicago</h3>
						<p>Thank you, Chicago!</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="<%=request.getContextPath()%>/resources/img/city-1031706_1920.jpg"
						alt="New York">
					<div class="carousel-caption">
						<h3>New York</h3>
						<p>We love the Big Apple!</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
</div>
<div class="row" style="height: 400px">
	<div class="col-lg-6"></div>
	<div class="col-lg-6"></div>
</div>
