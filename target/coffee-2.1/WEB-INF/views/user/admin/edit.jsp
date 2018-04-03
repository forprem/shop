<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="compress" uri="http://htmlcompressor.googlecode.com/taglib/compressor" %>

<compress:html removeIntertagSpaces="true">
    <!DOCTYPE HTML>
    <html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Yurii Salimov https://www.linkedin.com/in/yurii-salimov">
        <meta name="robots" content="noindex,nofollow">
        <meta name="title" content="${user.name} || Alex Coffee">
        <title>${user.name} || Alex Coffee</title>
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>" type="image/x-icon">
        <link rel="icon" href="<c:url value="/resources/img/favicon.ico"/>" type="image/x-icon">
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.min.css"/>" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
    <jsp:include page="/WEB-INF/views/other/admin_navbar.jsp"/>
    <div class="container-fluid">
        <section id="user">
            <div class="row admin-page">
                <div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 col-xl-10 col-xl-offset-1">
                    <div class="row section-name text-shadow">
                        <b><span class="color-green">${user.name}</span></b>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 col-xl-10 col-xl-offset-1 full-cart">
                    <form action="<c:url value="/admin/user/update"/>" method="post">
                        <input type="hidden" name="id" value="${user.id}">
                        <table class="table">
                            <tr>
                                <th>Имя:</th>
                                <td>
                                    <input class="input-order" type="text" name="name" minlength="2" maxlength="50"
                                           placeholder=" Введите имя" value="${user.name}" required>
                                </td>
                            </tr>
                            <tr>
                                <th>Роль:</th>
                                <td>
                                    <select class="input-order" name="role" title="Роль пользователя">
                                        <option value="${user.role.id}">${user.role.description}</option>
                                        <c:forEach items="${roles}" var="role">
                                            <c:if test="${role ne user.role}">
                                                <option value="${role.id}">${role.description}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>Логин:</th>
                                <td>
                                    <input class="input-order" type="text" name="username" pattern="[A-Za-z0-9_]{5,50}"
                                           placeholder=" Введите логин, формат (A-Z, a-z, 0-9, _)"
                                           value="${user.username}" minlength="5" maxlength="50" required>
                                </td>
                            </tr>
                            <tr>
                                <th>Пароль:</th>
                                <td>
                                    <input class="input-order" type="text" name="password" pattern="[A-Za-z0-9]{6,50}"
                                           placeholder=" Введите пароль, формат (A-Z, a-z, 0-9)"
                                           value="${user.password}" minlength="6" maxlength="50" required>
                                </td>
                            </tr>
                            <tr>
                                <th>Email:</th>
                                <td>
                                    <input class="input-order" type="email" name="email" pattern="[A-Za-z0-9_.@]{5,50}"
                                           placeholder=" Введите электронную почту, формат (A-Z, a-z, 0-9, _, ., @)"
                                           value="${user.email}" minlength="5" maxlength="50" required>
                                </td>
                            </tr>
                            <tr>
                                <th>Телефон:</th>
                                <td>
                                    <input class="phone input-order" type="text" name="phone"
                                           placeholder=" Введите телефон" value="${user.phone}" required>
                                </td>
                            </tr>
                            <tr>
                                <th>ВКонтакте:</th>
                                <td>
                                    <input class="input-order" type="text" name="vkontakte" pattern="[a-z0-9_/.]{5,50}"
                                           placeholder=" Введите адрес ВКонтакте, формат (a-z, 0-9, _, /, .)"
                                           value="${user.vkontakte}" minlength="5" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <th>Facebook:</th>
                                <td>
                                    <input class="input-order" type="text" name="facebook" pattern="[a-z0-9_/.]{5,50}"
                                           placeholder=" Введите адрес Facebook, формат (a-z, 0-9, _, /, .)"
                                           value="${user.facebook}" minlength="5" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <th>Skype:</th>
                                <td>
                                    <input class="input-order" type="text" name="skype" pattern="[A-Za-z0-9_.]{5,50}"
                                           placeholder=" Введите логин Skype, формат (A-Z, a-z, 0-9, _, .)"
                                           value="${user.skype}" minlength="5" maxlength="50">
                                </td>
                            </tr>
                            <tr>
                                <th>Описание:</th>
                                <td>
                                    <textarea class="input-order textarea" placeholder=" Введите описание работника"
                                              name="description" maxlength="250">${user.description}</textarea>
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <button class="btn btn-success" type="submit"
                                            title="Обновить информацию о пользователи">Сохранить</button>
                                    <button class="btn btn-info" type="reset"
                                            title="Сбросить введенные даные">Сброс</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </section>
    </div>
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.appear.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.maskedinput.min.js"/>"></script>
    </body>
    </html>
</compress:html>

<%-- Yurii Salimov (yuriy.alex.salimov@gmail.com) --%>
