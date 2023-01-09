<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="/css/add-book-style.css" />
    <title>Library Management</title>
  </head>

  <body>
    <nav class="navbar navbar-light">
      <div class="container-fluid">
        <span class="navbar-text"> Library Management</span>
        <span id="user-show">&#128400; ${currentuser}</span>
        <form class="d-flex" action="/logout">
          <button class="logout-btn btn btn-primary" type="submit">
            logout
          </button>
        </form>
      </div>
    </nav>
    <div class="container-fluid edit-book-div" style="text-align: center">
      <span class="edit-book-heading"> Edit Book Details </span>
    </div>

    <div class="container author-form">
      <form action="/update" method="post" name="editBookForm" onsubmit="return validateUpdate()">
        <div class="mb-3 row">
          <label class="col-sm-2 col-form-label">Book Code</label>
          <div class="col-sm-10">
            <input
              type="text"
              readonly
              class="form-control-plaintext input-field"
              name="bookCode"
              value="${bookObj.getBookCode()}"
            />
          </div>
        </div>
        <div class="mb-3 row">
          <label class="col-sm-2 col-form-label">Book Name</label>
          <div class="col-sm-10">
            <input type="text" class="form-control input-field" name="bookName" id="bookNameID" placeholder="${bookObj.getBookName()}"/>
            <span class="error"><p id="name_error" style="color:red;">&nbsp;</p></span>
          </div>
        </div>

        <div class="mb-3 row">
          <label class="col-sm-2 col-form-label">Author</label>
          <select
            class="form-select input-field form-select-btn"
            aria-label="Default select example"
            name="bookAuthor"
          >
            <option>Robert Cecil</option>
            <option>Andy Huint</option>
            <option>Rhondya Byrne</option>
            <option>William Shakesphere</option>
            <option>Priyanand Shukla</option>
            <option>Noah Harari</option>
            <option>Brian Tracy</option>
            <option>HC Verma</option>
            <option>Rakesh Sherma</option>
          </select>
        </div>
        <div class="mb-3 row">
          <label class="col-sm-2 col-form-label">Added On</label>
          <div class="col-sm-10">
            <input
              type="text"
              readonly
              class="form-control-plaintext input-field"
              name="dateTime"
              value="${bookObj.getDateTime()}"
            />
          </div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-primary">Cancel</button>
      </form>
    </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
  </body>
</html>