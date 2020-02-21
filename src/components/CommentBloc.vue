<!-- Component du bloc news -->
<template>
  <div>
    <div class="article" id="article">
        <div class="authdateTitle">
            Posté par : <span style="color:#5f0000;"  v-for="infos in info.infos" :key="infos.guid"> 
              <router-link :to="{ name: 'profile', params: { id } }">
                  {{infos.pseudo}}
              </router-link>
              </span> &nbsp; &nbsp;Le : <span style="color:#5f0000;">{{date}}</span>
        </div>
        <h4> {{message}} </h4>
    </div>
  </div>
</template>

<script>

const axios = require('axios').default;

export default {
  name: 'CommentBloc',
  props: {
    id_news: String,
    account: String,
    message: String,
    date: String,
    pseudo: String,
    info: null
  },
  data(){
    return{
      id: this.account
    }
  },
  mounted() {
    axios.
      get('http://localhost/API_Proj/phprest/api/projects/index.php?guid=' + this.account /*+ this.$route.params.value*/).
      then(response2 => (this.info = response2.data))
  },
  methods: {
    setPseudo() {

    }
  }
  
}
</script>

<style>
</style>