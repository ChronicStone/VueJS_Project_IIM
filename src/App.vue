<template>
  <div id="app">
    <!-- 
    <ul>
      <li><router-link to="/">Home</router-link></li>
      <li><router-link to="/Details">Détails</router-link></li>
      <li><router-link to="/Projects">Projets persos</router-link></li>
    </ul> -->

    <Navbar/>
    <router-view/>
    <Footer/>
  </div>
</template>


<script>

import Navbar from './components/Navbar.vue'
import Footer from './components/Footer.vue'



export default {
  name: 'App',
  components: {
    Navbar,
    Footer
  },
  data() {
    return {
    }
  }
}
</script>

<style>

::-webkit-scrollbar { height:18px; width:10px; background-color:#aeaeae;} ::-webkit-scrollbar-thumb:vertical {background-color:#3d3d3d; height:100px;}
::-webkit-scrollbar-thumb:horizontal {background-color:#3d3d3d; width:-5px;border-radius: 50%;}


*{
  margin:0;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
</style>
