<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="wedding" tagdir="/WEB-INF/tags" %>

<wedding:wrapper section="RSVP">
  <wedding:cdiv>
    <div class="rsvp-section">
      <h1 class="section-heading">RSVP</h1>
      <form:form class="rsvp-form" id="rsvpForm" action="${pageContext.request.contextPath}/rsvp" method="POST" onsubmit="return onSubmit();" modelAttribute="rsvp">
        <table>
          <tr>
            <td><form:label path="email">Email:</form:label>
            <td><form:input path="email" type="email" placeholder="username@someplace.com" required="required" value="${email}"/></td>
          </tr>

          <tr>
            <td><form:label path="firstName">First Name:</form:label></td>
            <td><form:input path="firstName" type="text" pattern="[A-Za-z]{2,}" placeholder="First Name" required="required"/></td>
          </tr>

          <tr>
            <td><form:label path="lastName" >Last Name:</form:label></td>
            <td><form:input path="lastName" type="text" pattern="[A-Za-z]{1}'{0,1}[A-Za-z]+(\-{0,1}[A-Za-z]{1}'{0,1}[A-Za-z]+)*" placeholder="Last Name" required="required"/></td>
          </tr>

          <tr>
            <td><form:label path="attending">Will You Be Attending?:</form:label></td>
            <td>
              <form:select path="attending" required="required">
                <form:option value="false">Nope</form:option>
                <form:option value="true">Sure</form:option>
              </form:select>
            </td>
          </tr>

          <tr>
            <td><form:label path="totalInParty">Total In Your Party:</form:label></td>
            <td><form:input path="totalInParty" type="number" min="1" max="10" placeholder="Guest Count" required="required"></form:input></td>
          </tr>

          <tr>
            <td><input id="submitButton" type="submit" form="rsvpForm" value="Submit"></input></td>
          </tr>
        </table>
      </form:form>
    </div>
  </wedding:cdiv>

  <script type="text/javascript">
    var onSubmit = function() {
      // TODO: do form validation

      return true;
    };
  </script>
</wedding:wrapper>
