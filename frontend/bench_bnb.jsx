import React from "react";
import ReactDOM from "react-dom";
import {logIn}  from './util/session_api_util'

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  window.login = logIn;
  ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);
});