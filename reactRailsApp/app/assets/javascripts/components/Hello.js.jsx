var Hello = React.createClass({

	getInitialState: function() {
		return {
			lastname: "Borges"
		};
	},

	componentDidMount: function() {
		this.setState({
			text: "this is text"
		});
	},

	render: function() {
		return (
			<div>
				<div className="ClassCSS">Hello {this.props.name} {this.state.lastname}!
					<div>{this.state.text}</div>
				</div>
				<div>fasdfas</div>
			</div>
		);
	}

})