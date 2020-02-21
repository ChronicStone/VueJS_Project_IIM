<template>
  <div>
    <div id="logo" style="margin-top:100px;">
      <img src="./../assets/styles/img/news-logo.png" style="width:10%;height:10%;"/>
    </div>

    <div class="UserZone">
      <div id="titleContainer">
        <h3>Liste des membres enregistrés</h3>
      </div>
      <div v-for="accounts in info.accounts" :key="accounts.guid">
        <MemberBloc
        :pseudo="accounts.pseudo"
        :rank="accounts.rank">
        </MemberBloc>
      </div>
    </div>
  </div> 
</template>

<script>

const axios = require('axios').default;
import MemberBloc from './../components/MemberBloc.vue'


export default {
  name: 'MembersList',
  components: {
    MemberBloc,
  },
  props: {
  },
  data() {
    return {
      info: null
    }
  },
  // Composant monté, on peut maintenant utiliser une méthode d'Axios pour recup datas
  mounted() {
      axios.
        get('http://localhost/API_Proj/phprest/api/projects/').
        then(response => (this.info = response.data)) 
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.UserZone {
  width:84%;
  height: auto;
  margin-left:10%;
  margin-top:50px;
  display: inline-block;
}

#titleContainer {
  margin-left:0;
  background: #F9F9F9;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	width: 94%;
	height:auto;
	padding:1.3% 2% 1% 2%;
	line-height: 13px;
	border-radius: 7px;
	animation-name: fadein;
  animation-duration: 3s;
  margin-bottom: 25px;
  text-align: center;
}
</style>
