<template>
  <div>
    <div id="newsZone" style="margin-top:10%;">
      <div v-for="infos in info.infos" :key="infos.id">
        <NewsDetail
          :title="infos.titre"
          :content="infos.message"
          :author="infos.nom"
          :publishDate="infos.date"></NewsDetail>
      </div>
      <div class="commentTitle">◊ | COMMENTAIRES </div>
      
    </div>
  </div> 
</template>

<script>

const axios = require('axios').default;
import NewsDetail from './../components/NewsDetail.vue'
//import CommentBloc from './../components/CommentBloc.vue'



export default {
  name: 'NewsDetail',
  components: {
    NewsDetail,
    //CommentBloc,
  },
  props: {
  },
  data() {
    return {
      info: null,
      info2: null
    }
  },
  // Composant monté, on peut maintenant utiliser une méthode d'Axios pour recup datas
  mounted() {
      axios.
        get('http://localhost/API_Proj/phprest/api/news/index.php?id=' + this.$route.params.idacc).
        then(response => (this.info = response.data))
      axios.
        get('http://localhost/API_Proj/phprest/api/comments/index.php?id_news=' + this.$route.params.idacc).
        then(response2 => (this.info2 = response2.data))  
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
