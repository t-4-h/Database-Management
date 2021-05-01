import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';

import { getPurchaseHistory, getPurchaseTrends} from '../actions/cartActions';
import Layout from '../components/Layout';

class PurchaseHistory extends Component {
	constructor(props) {
		super(props);
		this.state = {  };
	}

	componentDidMount() {
		this.props.getPurchaseHistory();
		this.props.getPurchaseTrends();
	}

	render() {
		return (
			<Layout>
				<h2>Order History:</h2>
				{this.props.purchaseHistory && this.props.purchaseHistory.length > 0 ? (
					<>
						<table border="1">
							<thead>
								<tr>
									<th>Product</th>
									<th>Quantity</th>
									<th>Purchase Date</th>
									<th>Product Category</th>
								</tr>
							</thead>
							<tbody>
								{this.props.purchaseHistory.map(item => {
									return (
										<tr key={item.purchase_id}>
											<td><Link to={`/products/id/${item.product_id}`}>{item.name}</Link></td>
											<td>{item.quantity_sold}</td>
											<td>{item.date_of_transaction}</td>
											<td>{item.category_name || 'Unknown'}</td>
										</tr>
									);
								})}
							</tbody>
						</table>
					</>
				) : <p>No purchases found.</p>
				}
				<br />
				<div>
					<h2>Shopping Trends/Insight:</h2>
					{this.props.purchaseTrends ? (
						<ul>
							<li><strong>Total # of transactions: </strong>{this.props.purchaseTrends.totalPurchaseCount || 'Unknown'}</li>
							<li><strong>Most purchased category: </strong>{this.props.purchaseTrends.mostPurchasedCat || 'Unknown'}</li>
						</ul>
					) : <p>No trends were found.</p>}
				</div>
			</Layout>
		);
	}
}

const mapStateToProps = state => ({
	purchaseHistory: state.cart.purchaseHistory,
	purchaseTrends: state.cart.purchaseTrends
});

export default connect(mapStateToProps, {
	getPurchaseHistory,
	getPurchaseTrends
})(PurchaseHistory);