<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wedding" tagdir="/WEB-INF/tags" %>

<wedding:wrapper section="RSVP">
  <wedding:cdiv>
    <div class="rsvp-section">
      <h1 class="section-heading">RSVP</h1>
      <form class="rsvp-form" id="rsvpForm" method="get" onsubmit="return onSubmit();">
        <span class="form-property">Email:</span>
        <input id="emailInput" type="email" placeholder="username@someplace.com" required="required"></input>
        <input id="submitButton" type="submit" form="rsvpForm" value="Next"></input>
      </form>
    </div>
  </wedding:cdiv>

  <script type="text/javascript">
    const CTX = "${pageContext.request.contextPath}";
    const URI_PREFIX = CTX + "/rsvp/";

    var onSubmit = function() {
      // TODO: do form validation

      var email = $( "#emailInput" ).val();
      var encodedEmail = encodeURIComponent(email);
      $( "#rsvpForm" ).attr("action", URI_PREFIX + encodedEmail);

      return true;
    };
  </script>
</wedding:wrapper>
