<login>
<div class="containter-fluid">
    <div class="row">


<button type="button" name="button" onclick={stateLogin} hide={this.state} >Log in</button>
<button type="button" name="button" onclick={stateSignup} hide={this.state}>Sign up</button>

</div>
</div>

<newUser if={this.state==="stateSignup"}></newUser>
<oldUser if={this.state==="stateLogin"}></oldUser>

<script>
this.state="";
console.log('state',this.state);
stateSignup(){
    this.state="stateSignup";
}
stateLogin(){
    this.state="stateLogin"
}

</script>

<style>
    :scope{}

 button{
     height:100px;
     width:400px;
     font-size:60px;

 }
p{
 font-size:30px;
}
input{
 font-size:50px;
}

</style>
</login>
