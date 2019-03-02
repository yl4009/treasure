<app>
<input type="text" name="" ref="userName" value="" placeholder="input your username" if={!userName}>
<button type="button" hide={userName} onclick="{saveUserName}">Confirm</button>


<h1 if={userName}>Hello {userName}</h1>
<h1 if={userName}>My score:{this.score}</h1>
<button type="button"  if={userName} onclick="{addOneScore}">Next</button>
<button type="button"  if={userName} onclick="{newGame}">New Game</button>
<p if={this.score}>{playerTurn}'s turn</p>


<script>
let tag=this;
this.ab;
this.score="";
this.turn=false;


saveUserName(){
    this.userName=this.refs.userName.value;
    localStorage.setItem("name", JSON.stringify(this.db));
    var userName=this.userName;
}



addOneScore(){
this.score++;
console.log(this.turn)

if (this.turn){
    playerTurn=this.userName
} else{
    playerTurn="opponent";
}
this.turn=!this.turn;

}

newGame(){
    this.score=0;
}



</script>

<style>
    :scope{}
</style>
</app>
