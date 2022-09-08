<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

codegroup

<br>
<form method="post" action="/codeGroup/codeGroupList">

     <select id="shOption" name="shOption" class="form-select form-select-sm">
         <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
         <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
         <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름 (한글)</option>
         <option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름 (영문)</option>
     </select>
     
     <br>
     <input type="text" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어" class="form-control form-control-sm">
     <br>
     <input type="submit">
</form>
<c:forEach items="${list}" var="list" varStatus="status">
	<a href="/codeGroup/codeGroupView?ifcgSeq=<c:out value="${list.ifcgSeq }"/>"><c:out value="${list.ifcgSeq }"/> / <c:out value="${list.ifcgName }"/></a>
	<br>		
</c:forEach>

<br>

<a href="/codeGroup/codeGroupForm">신규</a>