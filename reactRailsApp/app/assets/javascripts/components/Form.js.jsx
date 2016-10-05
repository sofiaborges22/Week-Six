var Form = React.createClass({
	render: function() {
		return(
			<div>
				<form>
					<label>Search:</label>
					<input onChange={this.props.onUpdateArtist} value={this.props.artistname}></input>
				</form>
			</div>
		);
	}
})