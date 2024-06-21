<%-- 
    Document   : find
    Created on : Jun 21, 2024, 8:52:03 AM
    Author     : Linh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="text-primary text-center mt-1">
    <h1>DANH SÁCH BÁC SĨ</h1>
</div>
<!--<form action="/findDoctor" method="get">
    <label for="kw">Nhập từ khóa</label>
    <input type="text" id="kw" name="kw" />
    <button type="submit" class="btn btn-info">Tìm kiếm</button>  
</form>-->
<%--<c:url value="/doctor" var="action"/>
<form:form action="${action}" modelAttribute="kw" method="get">
    <form:input class="form-control" id="kw" placeholder="Tên bác sĩ" path="kw" /> 
    <label for="kw">Tên bác sĩ</label>
    <a class="btn btn-info float-end" href="<c:url value="/findDoctor"/>">Tìm kiếm</a>
</form:form>--%>
<div class="container mt-3">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>STT</th>
                <th hidden>Id</th>
                <th>Họ tên</th>
                <th>Giới tính</th>
                <th>Ngày sinh</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th>Chuyên khoa</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${doctors}" var="d">
                <tr>
                    <td>
                        <c:set var="i" value="${i + 1}"></c:set>
                        <c:out value="${i}"></c:out>
                        </td>
                        <td hidden>${d.id}</td>
                    <td>${d.name}</td>
                    <td>${d.gender}</td>
                    <td>${d.birthday}</td>
                    <td>${d.phoneNumber}</td>
                    <td>${d.email}</td>
                    <td>${d.specialityId.name}</td>
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>    
</div>
