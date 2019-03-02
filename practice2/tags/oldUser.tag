<oldUser>
<h1>Welcome {this.userName} !</h1>
<input type="text" value="" placeholder="input your id?" ref="userId">
<button type="button" onclick="{getChrisDataOldId}">Confirm</button>
<p if={this.stats}> History record: <br>win-{this.stats.wins} lose:{this.stats.losses}</p>


<game if={this.stats}></game>

<script>
let tag=this;
console.log(this);


getChrisDataOldId(){
    var userId=this.refs.userId.value;
    console.log(userId)
    fetch('http://treasure.chrisproctor.net/players/' + userId).then(response => {
			return response.json();
		}).then(data => {
			// Work with JSON data here
			this.userName = data.name;
            this.stats=data.stats;
			console.log('new',this.stats);
			this.update();

            observer.trigger('userId',userId)

		});
}


</script>

<style>
:scope{}
</style>
</oldUser>
