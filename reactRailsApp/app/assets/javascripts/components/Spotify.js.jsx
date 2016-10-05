var Spotify = React.createClass({
	getInitialState: function(){
		return {
			artistName: ""
		};
	}

	handleUpdateArtist: function(event){
		this.setState({
			artistName: event.target.value
		})
	},

	onHandleSubmit: function(){
		console.log("Submit")
	},

	render: function() {
		return(
			<div>
				Spotify component
				<Form onUpdateArtist={this.handleUpdateArtist} artistName={this.state.artistName} onHandleSubmit={this.onHandleSubmit}/>
				<ListOfArtist/>
			</div>
		);
	}
})

//Visual of what we are creating:
// <Spotify>
// <Form>
// <List of artists>
// 		<Card of artists>
// </List of artists>
// </Spotify>