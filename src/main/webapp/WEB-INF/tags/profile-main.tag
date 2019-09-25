<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="card">
    <a href=""> <img alt="bunny hop image"  src="<c:url value="/media/download.png" />" class="img-responsive img-rounded" style="width: 100%;" /></a>
    <h1 class="text-center">
        <a style="color: black" href="/edit">${fullName}</a>
    </h1>
    <h6 class="text-center">
        <strong>Age: </strong>24, <strong>Birthday: </strong> Feb 24, 1995
    </h6>
    <div class="list-group contacts">
        <a class="list-group-item" href="tel:+3806321482360"><i class="fa fa-phone-square"> 0632148236</i></a>
        <a class="list-group-item" href="mailto:yaremkosolomiya@gmail.com"><i class="fa fa-envelope"> yaremkosolomiya@gmail.com</i></a>
        <a class="list-group-item" href="javascript:void(0);"><i class="fa fa-skype"> solomiyaremko</i></a>
        <a target="_blank" class="list-group-item" href="#"><i class="fa fa-facebook-square"> facebook</i></a>
        <a target="_blank" class="list-group-item" href="#"><i class="fa fa-linkedin-square"> linkedin</i></a>
        <a target="_blank" class="list-group-item" href="#"><i class="fa fa-github"> github</i></a>
        <a target="_blank" class="list-group-item" href="#"><i class="fa fa-stack-overflow"> stack-overflow</i></a>
    </div>
</div>