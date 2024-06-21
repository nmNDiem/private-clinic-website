<%-- 
    Document   : doctor
    Created on : Jun 19, 2024, 11:51:01 PM
    Author     : Linh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="text-primary text-center mt-1">
    <h1>DANH SÁCH BÁC SĨ</h1>
</div>
<div class="mt-3">
    <a class="btn btn-info" href="<c:url value="/addDoctor"/>">Thêm</a> 
</div>
<form action="http://localhost:8080/PrivateClinicWebsite/findDoctor" method="get">
    <label for="kw">Nhập từ khóa</label>
    <input type="text" id="kw" name="kw" />
    <button type="submit" class="btn btn-info">Tìm kiếm</button>  
</form>
<%--<c:url value="/findDoctor" var="action"/>
<form:form action="${action}" method="get">
    <form:input class="form-control" id="kw" placeholder="Tên bác sĩ" path="name"/> 
    <label for="kw">Tên bác sĩ</label>
    <button class="btn btn-info float-end" type="submit">">Tìm kiếm</button>
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
                    <td>
                        <c:url value="/deleteDoctor/${d.id}" var="url"/>
                        <a class="btn btn-info" href="<c:url value="/updateDoctor/${d.id}"/>">Cập nhật</a>
                        <button onclick="deleteDoctor('${url}', ${d.id})" class="btn btn-danger">Xóa</button>

                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>    
</div>

<script src="<c:url value="/js/script.js"/>"></script>
