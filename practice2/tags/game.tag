<game>
<button type="button" name="button" onclick={newGame}>New game</button>




<script>

observer.on('userId',(userId)=>{
    this.userId=userId;
     });

newGame(){
    alert(this.userId)
       fetch('http://treasure.chrisproctor.net/players/'+ this.userId +'/games/new').then(response => {
            return response.json();
        }).then(data => {
            console.log('game',data)
            // Work with JSON data here
            this.update();
        });

    }



</script>

</game>
