<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wedding" tagdir="/WEB-INF/tags" %>

<wedding:wrapper section="Accommodations">

  <div class="accommodations-div">

    <wedding:cdiv>
      <div class="accommodation-div">
        <a href="http://www.lacuestainn.com/"><img class="block-img" src="<c:url value="/images/lacuestainn_200x64.png"/>" alt="La Cuesta Inn"/></a>
      </div>
    </wedding:cdiv>

    <wedding:cdiv>
      <div class="accommodation-div">
        <a href="http://www.applefarm.com/"><img class="block-img" src="<c:url value="/images/applefarm_289x124.png"/>" alt="Apple Farm"/></a>
      </div>
    </wedding:cdiv>

    <wedding:cdiv>
      <div class="accommodation-div">
        <a href="http://www.pacificahotels.com/hieslo"><img class="block-img" src="<c:url value="/images/holidayinnexpress_235x119.png"/>" alt="Holiday Inn Express"/></a>
      </div>
    </wedding:cdiv>

    <wedding:cdiv>
      <div class="accommodation-div">
        <a href="http://www.madonnainn.com/"><img class="block-img" src="<c:url value="/images/madonnainn_322x59.png"/>" alt="Madonna Inn"/></a>
      </div>
    </wedding:cdiv>

    <wedding:cdiv>
      <div class="accommodation-div">
        <a href="https://www.sycamoresprings.com/"><img class="block-img" src="<c:url value="/images/sycamoresprings_298x96.png"/>" alt="Sycamore Mineral Springs Resort"/></a>
      </div>
    </wedding:cdiv>

  </div>

</wedding:wrapper>
