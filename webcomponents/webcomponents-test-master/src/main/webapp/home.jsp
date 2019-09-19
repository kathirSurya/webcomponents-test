<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<c:set var="req" value="${pageContext.request}" />
<c:set var="baseURL" value="${req.scheme}://${req.serverName}:${req.serverPort}${req.contextPath}" />
<head>
<meta charset="ISO-8859-1">
<title>webcomponents-test-master</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial;
  margin: 0;
}

* {
  box-sizing: border-box;
}

img {
  vertical-align: middle;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
  position: relative;
}

/* Hide the images by default */
.flowerSlides {
  display: none;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
/* .numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
} */

/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Six columns side by side */
.column {
  float: left;
  width: 11.01%;
  /* width: 16.66%; */
}

/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}

.img-height{
	height:80px; 
}
</style>
<body >

<div class="container">
  <div class="flowerSlides">
    <img src="${baseURL}/resources/assets/image1.jpg" style="width:100%">
  </div>

  <div class="flowerSlides">
    <img src="${baseURL}/resources/assets/image2.jpg" style="width:100%">
  </div>

  <div class="flowerSlides">
    <img src="${baseURL}/resources/assets/image3.jpg" style="width:100%">
  </div>
    
  <div class="flowerSlides">
    <img src="${baseURL}/resources/assets/image4.jpg" style="width:100%">
  </div>

  <div class="flowerSlides">
    <img src="${baseURL}/resources/assets/image5.jpg" style="width:100%">
  </div>
    
  <div class="flowerSlides">
    <img src="${baseURL}/resources/assets/image6.jpg" style="width:100%">
  </div>
  
   <div class="flowerSlides">
    <img src="${baseURL}/resources/assets/image7.jpg" style="width:100%">
  </div>
  
   <div class="flowerSlides">
    <img src="${baseURL}/resources/assets/image8.jpg" style="width:100%">
  </div>
    

</div>


<br>

  <div class="row" style="margin-left: 7%;margin-right: -5%;" >
    <div class="column">
      <img class="demo cursor img-height" src="${baseURL}/resources/assets/image1.jpg" style="width:100%" onclick="liveSlide(1)" alt="image1">
    </div>
    <div class="column">
      <img class="demo cursor img-height" src="${baseURL}/resources/assets/image2.jpg" style="width:100%" onclick="liveSlide(2)" alt="image2">
    </div>
    <div class="column">
      <img class="demo cursor img-height" src="${baseURL}/resources/assets/image3.jpg" style="width:100%" onclick="liveSlide(3)" alt="image3">
    </div>
    <div class="column">
      <img class="demo cursor img-height" src="${baseURL}/resources/assets/image4.jpg" style="width:100%" onclick="liveSlide(4)" alt="image4">
    </div>
    <div class="column">
      <img class="demo cursor img-height" src="${baseURL}/resources/assets/image5.jpg" style="width:100%" onclick="liveSlide(5)" alt="image5">
    </div>    
    <div class="column">
      <img class="demo cursor img-height" src="${baseURL}/resources/assets/image6.jpg" style="width:100%" onclick="liveSlide(6)" alt="image6">
    </div>
     <div class="column">
      <img class="demo cursor img-height" src="${baseURL}/resources/assets/image7.jpg" style="width:100%" onclick="liveSlide(7)" alt="image7">
    </div>
     <div class="column">
      <img class="demo cursor img-height" src="${baseURL}/resources/assets/image8.jpg" style="width:100%" onclick="liveSlide(8)" alt="image8">
    </div>
 </div>



<script>
var slideIndex = 4;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function liveSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("flowerSlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
</script>
    
</body>
</html>