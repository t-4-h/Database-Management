import React, { Component } from 'react';
// import axios from 'axios';

import Filters from '../components/Filters';
import Products from '../components/Products';

class Home extends Component {
  render() {
    return (
			<div>
				<Filters />
				<Products {...this.props} />
		</div>
    );
  }
}

export default Home;

