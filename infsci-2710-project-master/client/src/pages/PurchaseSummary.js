import React from 'react';
import { Link } from 'react-router-dom';

import Layout from '../components/Layout';

const PurchaseSummary = (props) => (
	<Layout>
		<p>Your purchase was a success. <Link to='/home'><br/><strong>Back to browsing</strong></Link></p>
	</Layout>
);

export default PurchaseSummary;