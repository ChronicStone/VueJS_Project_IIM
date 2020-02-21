<template>
  <div>
    <div class="UserZone">
      <div v-for="infos in info.infos" :key="infos.guid">
        <MemberCard class="stickyPos"
        :pseudo="infos.pseudo"
        :rank="infos.rank"
        :likes="infos.likes"
        :dislikes="infos.dislikes"
        :comments="infos.comments"></MemberCard>
      </div>
      <div v-for="infos in info.infos" :key="infos.guid">
        <MemberData
        :pseudo="infos.pseudo"
        :mail="infos.mail"
        :rank="infos.rank"
        :avatar="infos.avatar"
        :insta="infos.insta"
        :fb="infos.fb"
        :twitter="infos.twitter"
        :siteweb="infos.siteweb"
        :nom="infos.nom"
        :prenom="infos.prenom"
        :desc_user="infos.desc_user">
        </MemberData>
      </div>
      <MemberComments></MemberComments>
    </div>
  </div> 
</template>

<script>

const axios = require('axios').default;
import MemberCard from './../components/MemberCard.vue'
import MemberData from './../components/MemberData.vue'
import MemberComments from './../components/MemberComments.vue'



export default {
  name: 'MemberProfile',
  components: {
    MemberCard,
    MemberData,
    MemberComments,
  },
  props: {
  },
  data() {
    return {
      affiche: false,
      info: null
    }
  },
  // Composant monté, on peut maintenant utiliser une méthode d'Axios pour recup datas
  mounted() {
    if(!this.user) {
      if(this.$route.params.value) {
        axios.
        get('http://localhost/API_Proj/phprest/api/projects/index.php?pseudo=' + this.$route.params.value).
        then(response => (this.info = response.data))
      }
      else if(this.$route.params.id) {
        axios.
        get('http://localhost/API_Proj/phprest/api/projects/index.php?guid=' + this.$route.params.id).
        then(response => (this.info = response.data))
      }

    }

  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.UserZone {
  width:84%;
  height: auto;
  margin-left:10%;
  margin-top:150px;
  display: inline-block;
  
}

.stickyPos{
  	position: sticky;
    top:12%;
}
</style>
