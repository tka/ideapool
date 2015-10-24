import React, { Component, PropTypes } from 'react';
import cookie from 'react-cookie';
import classNames from 'classnames'

class UserNav extends Component {
    constructor(props, context) {
        super(props, context);
        this.toggleUserMenu=this.toggleUserMenu.bind(this)

        this.state = {
            user_avatar: this.props.user_avatar   || cookie.load('user_avatar'),
            showUserMenu: false
        };
    }

    toggleUserMenu(){
        this.setState({showUserMenu: !this.state.showUserMenu});
    }

    signOut(){
        fetch("/users/sign_out", {method: "delete", credentials: 'same-origin'} )
        .then(req => {
            location.href="/"
        });
    }

    render(){
        if (this.state.user_avatar){
            return <ul className="nav navbar-nav">
                <li className={classNames(["pull-right","nav-item","dropdown",{"open": this.state.showUserMenu}])}
                    onClick={this.toggleUserMenu}
                    >
                    <img src={this.state.user_avatar} height="32"/>
                     <div className="dropdown-menu">
                        <a className="dropdown-item" onClick={this.signOut}>Sign Out</a>
                     </div>
                </li>
            </ul>
        }else{
            return <ul className="nav navbar-nav">
                <li className="nav-item">
                    <a className="nav-link" href="/users/sign_in">Sign In</a>
                </li>
                <li className="nav-item">
                    <a className="nav-link" href="/users/sign_up">Sign Up</a>
                </li>
            </ul>;
        }
    }
}

export default UserNav;
