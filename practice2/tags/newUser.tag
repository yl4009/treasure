<newUser>
    <input type="text" value="" placeholder="input your new name" ref="userName">
    <button type="button" onclick="{getChrisDataNewId}">Confirm</button>
    <p>{this.userId}</p>

<script>
let tag=this;
console.log(this);


getChrisDataNewId(){
var userName=this.refs.userName.value;

fetch('http://treasure.chrisproctor.net/players/new/' + userName).then(response => {
        return response.json();
    }).then(data => {
        // Work with JSON data here
        this.userId=data.pid;
        console.log('64526', data);
        this.treasure={
            users:{
            first:{
                 name:userName,
                 id:"",
              }
            }
          }
         this.treasure.users.first.id=this.userId
        this.update();
    });
}

</script>
<style>
    :scope{}
</style>
</newUser>
