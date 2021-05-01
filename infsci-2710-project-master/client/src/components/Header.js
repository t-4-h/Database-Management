import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { logout } from '../actions/userActions';
import { getItemsFromCart } from '../actions/cartActions';

const styles = {
	textAlign: `left`,
	borderBottom: 'solid 1px rgba(0,0,0,.1)',
	padding: '0 4rem',
	background: 'var(--PrimaryBlue)',
	display: 'flex',
	alignItems: 'center',
	justifyContent: 'space-between'
};

class Header extends Component {
	constructor(props) {
		super(props);
		this.state = { 

		 };
	}

	// componentDidUpdate(prevProps) {
	// 	if (this.props.currentUser && this.props.currentUser.firstName) {
	// 		this.props.getItemsFromCart();
	// 	}
	// }

	render() {
		return (
			<header style={styles}>
				<Link to={'/'}><h1>Robot &amp; Components Store</h1></Link>
				<Link to='/home'>Home</Link>
				{this.props.currentUser && this.props.currentUser.firstName ? <Link to='/history'>Purchase History</Link> : null}
				{this.props.currentUser && this.props.currentUser.firstName ? <Link to='/checkout'>Shopping Cart {this.props.items && this.props.items.length > 0 ? `(${this.props.items.length})` : null}</Link> : null}
				{this.props.currentUser && this.props.currentUser.firstName ? (<p>{`Hi ${this.props.currentUser.firstName}`}  (<button onClick={this.props.logout} style={{ color: 'white'	}} className='o-btn-link'>logout</button>)</p>) : (<Link to='/login'>Sign Up / Login</Link>)}
			</header>
		);
	}
}

const mapStateToProps = state => ({
	currentUser: state.user.currentUser,
	items: state.cart.items
});

export default connect(mapStateToProps, { logout, getItemsFromCart })(Header);