<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kr.co.idasystem.framework.cmm.util.PropertieUtils"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
	<form name="headerForm" id="headerForm" method="post">
		<input type="hidden" name="<c:out value ='${_csrf.parameterName}'/>" value="<c:out value ='${_csrf.token}'/>" />
	</form>
	<script type="text/javascript">
      function onLogout(logoutUrl){
    	  $("#headerForm").prop("action", logoutUrl ).submit();
      }
    </script>
    
     
