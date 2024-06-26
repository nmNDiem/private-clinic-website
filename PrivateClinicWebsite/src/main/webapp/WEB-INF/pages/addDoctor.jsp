<%-- 
    Document   : addDoctor
    Created on : Jun 21, 2024, 9:10:54 PM
    Author     : Linh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2 class="mt-3">
    <c:choose>
        <c:when test="${doctor.id > 0}">Cập nhật thông tin bác sĩ</c:when>
        <c:otherwise>Thêm thông tin bác sĩ</c:otherwise>
    </c:choose>
</h2>

<c:url value="/addDoctor" var="action"/>
<form:form method="post" action="${action}" modelAttribute="doctor" enctype="multipart/form-data"> 
    <form:errors path="*" element="div" cssClass="alert alert-danger"/>
    <div class="form-floating mb-3 mt-3">
        <form:input class="form-control" id="name" placeholder="Tên bác sĩ" path="name"/> <%--gia tri cua path phai trung voi ten truong o file Bacsi.java--%>
        <label for="name">Tên bác sĩ</label> 
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input class="form-control mt-3" id="gender" placeholder="Giới tính" path="gender"/> 
        <label for="gender">Giới tính</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input class="form-control mt-3" id="birthday" placeholder="Ngày sinh" path="birthday"/> 
        <label for="birthday">Ngày sinh</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input class="form-control mt-3" id="phoneNumber" placeholder="Số điện thoại" path="phoneNumber"/>  
        <label for="phoneNumber">Số điện thoại</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input class="form-control mt-3" id="email" placeholder="Email" path="email"/> 
        <label for="email">Email</label>    
    </div>
            
    <div class="form-floating mb-3 mt-3">
        <form:select path="specialityId.id" class="form-select" id="specialityId">
            <c:forEach items="${specialities}" var="s">
                <option value="${s.id}">${s.name}</option>
            </c:forEach>    
        </form:select>
        <label for="specialityId" class="form-lable">Chuyên khoa</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="file" class="form-control mt-3" id="image" path="file"/>
        <label for="image">Ảnh</label>
    </div>
        
    <div class="form-floating">
        <button class="btn btn-info mb-1" type="submit">
            <c:choose>
                <c:when test="${doctor.id > 0}">Cập nhật thông tin</c:when>
                <c:otherwise>Thêm thông tin</c:otherwise>
            </c:choose>   
        </button>
        <form:hidden path="id"/>
    </div>
</form:form>
