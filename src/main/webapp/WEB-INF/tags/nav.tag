<%@ tag description="Main Wedding Navigation Bar" language="java" pageEncoding="ISO-8859-1"%>

<nav class="main-nav">
  <ul class="main-nav-list">
    <li class="main-nav-li">
      <a id="main-nav-home-btn" class="main-nav-btn active" href="${pageContext.request.contextPath}/">Home</a>
    </li>
    <li class="main-nav-li">
      <a id="main-nav-story-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/story">Our Story</a>
    </li>
    <li class="main-nav-li">
      <a id="main-nav-info-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/info">Wedding Info</a>
    </li>
    <li class="main-nav-li">
      <a id="main-nav-accommodations-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/accommodations">Accommodations</a>
    </li>
    <li class="main-nav-li">
      <a id="main-nav-registry-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/registry">Registry</a>
    </li>
    <li class="main-nav-li">
      <a id="main-nav-rsvp-btn" class="main-nav-btn" href="${pageContext.request.contextPath}/rsvp">RSVP</a>
    </li>
  </ul>
</nav>