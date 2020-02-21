<template>
  <div>
    <div v-for="film in info" :key="film.imdbID" class="m-12 userBloc">
      <MovieCard
        :title="film.Title"
        :year="film.Year"
        :type="film.Type"
        :poster="film.Poster">
      </MovieCard>
    </div> 
  </div> 
</template>

<script>

const axios = require('axios').default;
import MovieCard from './../components/MovieCard.vue'

export default {
  name: 'MoviesPage',
  components: {
    MovieCard
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
    if(!this.film) {
      axios.
        get('http://omdbapi.com/?s=batman&apikey=904eed5c').
        then(response => (this.info = response.data.Search))
    }

  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .userBloc {
    display: inline-block;
    margin-left: 20px;
    margin-bottom: -100px;
  }
</style>
