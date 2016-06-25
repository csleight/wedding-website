<%@ tag description="Wedding Website Top-Level Page Wrapper" language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wedding" tagdir="/WEB-INF/tags" %>
<%@ attribute name="section"%>

<html>
  <head>
    <meta charset="UTF-8"/>

    <script src="<c:url value="/js/jquery/1.12.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/js/jquery-pjax/1.9.5/jquery.pjax.js"/>"></script>
    <script src="<c:url value="/js/jquery-backstretch/2.0.4/jquery.backstretch.min.js"/>"></script>
    <script src="<c:url value="/js/react/0.14.7/react.min.js"/>"></script>
    <script src="<c:url value="/js/react/0.14.7/react-dom.min.js"/>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.23/browser.min.js"></script> <!-- TODO: Figure out how to get this without depending on 3rd-party hosting -->

    <title>Carter-Leighton Wedding - ${section}</title>

    <meta http-equiv="Content-Style-Type" content="text/css">

    <link href="http://fonts.googleapis.com/css?family=Arizonia" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet" type="text/css"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/theme.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/accordion.css"/>"/>

    <!-- Firefox, Chrome, Opera -->
    <link rel="icon" type="image/png" href="<c:url value="/images/oak-tree-16x16.png"/>"/>
    <link rel="icon" type="image/png" href="<c:url value="/images/oak-tree-32x32.png"/>"/>

    <!-- IE -->
    <link rel="icon" type="image/x-icon" href="<c:url value="/images/oak-tree.ico"/>"/>
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/images/oak-tree.ico"/>"/>
  </head>
  <body>
    <wedding:cdiv>
      <div class="banner-space">
        <img src="<c:url value="/images/monogram.png"/>" alt="Stephanie & Christopher"/>
      </div>
    </wedding:cdiv>

    <div class="main-nav-div">
      <wedding:nav activeSection="${section}"/>
    </div>

    <jsp:doBody/>
  </body>

  <script>
    (function($) {
        $('.accordion > li:eq(0) a').addClass('active').next().slideDown();

        $('.accordion a').click(function(j) {
            var dropDown = $(this).closest('li').find('div');

            $(this).closest('.accordion').find('div').not(dropDown).slideUp();

            if ($(this).hasClass('active')) {
                $(this).removeClass('active');
            } else {
                $(this).closest('.accordion').find('a.active').removeClass('active');
                $(this).addClass('active');
            }

            dropDown.stop(false, true).slideToggle();

            j.preventDefault();
        });
    })(jQuery);
  </script>
</html>
