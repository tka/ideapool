require("../stylesheets/application.scss")

import React from 'react';
import ReactDom from 'react-dom'
import UserNav from "./components/UserNav.js"
ReactDom.render(
        <UserNav/>,
        document.getElementById('user-nav')
        );

