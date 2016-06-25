<%@ tag description="Main Wedding Navigation Bar" language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="activeSection"%>

<nav class="main-nav">
  <ul class="main-nav-list">
    <li class="main-nav-li">
      <c:choose>
        <c:when test="${activeSection eq 'Home'}">
          <a id="main-nav-home-btn" class="main-nav-btn active">Home</a>
        </c:when>
        <c:otherwise>
          <a id="main-nav-home-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/">Home</a>
        </c:otherwise>
      </c:choose>
    </li>
    <li class="main-nav-li">
      <c:choose>
        <c:when test="${activeSection eq 'Our Story'}">
          <a id="main-nav-story-btn" class="main-nav-btn active">Our Story</a>
        </c:when>
        <c:otherwise>
          <a id="main-nav-story-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/story">Our Story</a>
        </c:otherwise>
      </c:choose>
    </li>
    <li class="main-nav-li">
      <c:choose>
        <c:when test="${activeSection eq 'Wedding Info'}">
          <a id="main-nav-info-btn" class="main-nav-btn active">Wedding Info</a>
        </c:when>
        <c:otherwise>
          <a id="main-nav-info-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/info">Wedding Info</a>
        </c:otherwise>
      </c:choose>
    </li>
    <li class="main-nav-li">
      <c:choose>
        <c:when test="${activeSection eq 'Accommodations'}">
          <a id="main-nav-accommodations-btn" class="main-nav-btn active">Accommodations</a>
        </c:when>
        <c:otherwise>
          <a id="main-nav-accommodations-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/accommodations">Accommodations</a>
        </c:otherwise>
      </c:choose>
    </li>
    <li class="main-nav-li">
      <c:choose>
        <c:when test="${activeSection eq 'Registry'}">
          <a id="main-nav-registry-btn" class="main-nav-btn active">Registry</a>
        </c:when>
        <c:otherwise>
          <a id="main-nav-registry-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/registry">Registry</a>
        </c:otherwise>
      </c:choose>
    </li>
  </ul>
</nav>