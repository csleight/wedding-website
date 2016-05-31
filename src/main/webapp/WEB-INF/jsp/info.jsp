<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wedding" tagdir="/WEB-INF/tags" %>

<wedding:wrapper section="Info">
    <table class="wedding-info-table">
      <tr>
        <td>
          <div class="event-datetime">
            <h1>
              <span class="day-of-week">Saturday</span>
              <span class="month-of-year">August</span>
              <span class="day-of-month">27</span>,
              <span class="year">2016</span>
              <span>at</span>
              <span class="time-of-day">4:00pm</span>
            </h1>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="venue-vcard">
            <div class="org">La Cuesta Ranch</div>
            <div class="adr">
              <div class="street-address">2400 Loomis St.</div>
              <span class="locality">San Luis Obispo</span>,
              <span class="region">CA</span>
              <span class="postal-code">93405</span>
            </div>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="venue-map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2738.249034077226!2d-120.64092554729288!3d35.297402333612965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80ecf1a033123e5d%3A0x5d31f1529ae651a2!2sLa+Cuesta+Ranch!5e0!3m2!1sen!2sus!4v1458712084003" width="450" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
          </div>
        </td>
      </tr>
    </table>
</wedding:wrapper>
