<template>
  <div>
    <div id="logo" style="margin-top:100px;">
      <img src="./../assets/styles/img/news-logo.png" style="width:10%;height:10%;"/>
    </div>

    <Slider style="margin-top:40px;"></Slider>
    <NavRight class="stickyPos"></NavRight>
    <div id="newsZone" style="margin-top:2%;">
      <div v-for="news in info.news" :key="news.id">
        <NewsBloc
          :title="news.titre"
          :id_acc="news.id"
          :content="news.message"
          :author="news.nom"
          :publishDate="news.date">
        </NewsBloc>
      </div> 
    </div>
  </div> 
</template>

<script>

const axios = require('axios').default;
import NewsBloc from './../components/NewsBloc.vue'
//import NavRight from './../components/NavRight.vue'
import Slider from './../components/Slider.vue'




export default {
  name: 'HomePage',
  components: {
    NewsBloc,
    //NavRight,
    Slider
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
    if(!this.news) {
      axios.
        get('http://localhost/API_Proj/phprest/api/news/').
        then(response => (this.info = response.data))
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.stickyPos {
  position: sticky;
  top:10.5%;
}
</style>
