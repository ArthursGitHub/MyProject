<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="ru">
<head>
  <meta charset="UTF-8">
  <title>Вебинар №5</title>

  <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
  <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
  <script src="<c:url value="/resources/js/main.js" />"></script>

</head>
<body>
  <div class="bl head">
    <div class="head__bg">
      <h1 class="head__zag">Формы</h1>
      <p class="head__desc">
        Базовые примеры!
      </p>
    </div>
  </div>
  <div class="bl">
    <h2>Форма регистрации</h2>
    <%--<form action="#" name="my_name" method="get">--%>
    <form:form method="post" action="addDeveloper">
      <div class="form__bl">
        <label class="my__label" for="my_name">Ваше имя:</label>
        <input class="my__input" id="my_name" type="text" placeholder="Введите имя" maxlength="10" value=${command.name}>
      </div>
      <div class="form__bl">
        <label class="my__label" for="my_mail">Ваша почта:</label>
        <input class="my__input" id="my_mail" type="email" placeholder="Введите имя">
      </div>
      <div class="form__bl">
        <label class="my__label" for="my_url">Ваш сайт:</label>
        <input class="my__input" id="my_url" type="url" placeholder="Введите адрес сайта">
      </div>
      <div class="form__bl">
        <label class="my__label" for="my_url">Ваш город:</label>
        <select class="my__input" name="city">
          <option selected disabled>Укажите город</option>
          <optgroup label="Россия">
            <option>Москва</option>
            <option>Санкт-Петербуг</option>
            <option>Воронеж</option>
          </optgroup>
          <optgroup label="Беларусь">
            <option>Лида</option>
            <option>Минск</option>
            <option>Барановичи</option>
            <option>Гродно</option>
          </optgroup>
        </select>
      </div>
      <div class="form__bl">
        <p class="form__desc">Выберите ваш пол:</p>
        <label>
          <input type="radio" name="pol">
          <span class="ch">Мужской</span>
        </label>
        <label>
          <input type="radio" name="pol">
          <span class="ch">Женский</span>
        </label>
      </div>
      <div class="form__bl">
        <p class="form__desc">Что вам больше нравится?</p>
        <label>
          <input type="checkbox" name="int">
          <span class="ch">Политика</span>
        </label>
        <label>
          <input type="checkbox" name="int" checked>
          <span class="ch">Бизнес</span>
        </label>
        <label>
          <input type="checkbox" name="int">
          <span class="ch">Отношения</span>
        </label>
      </div>
      <div class="form__bl">
        <label class="my__label" for="my_num">Года:</label>
        <input class="my__input my__pad" id="my_num" type="number" placeholder="Введите адрес сайта" min="14" max="500" step="5">
      </div>
      <div class="form__bl">
        <p class="form__desc">Ваше сообщение:</p>
        <textarea></textarea>
      </div>
      <input class="btn" type="reset" value="Очистить">
      <input class="btn" type="submit" value="Отослать">
      <button class="btn" type="button" disabled>Послать на</button>
    </form:form>
  </div>
</body>
</html>