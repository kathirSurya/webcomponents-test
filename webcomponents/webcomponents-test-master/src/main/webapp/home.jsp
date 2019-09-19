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
<link rel="stylesheet" href="${baseURL}/resources/css/home.css">
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