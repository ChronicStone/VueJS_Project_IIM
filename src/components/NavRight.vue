<!-- Component du menu nav news -->
<template>
  <div>
    <div id="RightMenuContainer">
      <div class="titleBlockMenu">
        NAVIGATION NEWS 
      </div>
      <div class="navigationMenuR">
        <ul>
      	  <div v-for="news in info.news.slice(0, 6)" :key="news.id">
          	<li><a href="">◊ | {{news.titre.slice(0, 20)}} [...]</a></li>
      	  </div>
        </ul>
      </div>
    </div>
  </div>

</template>

<script>

const axios = require('axios').default;

export default {
  name: 'NavRight',
  props: {
    msg: String,
    title: String,

  },
  data(){
    return{
    }
  },
    mounted() {
    if(!this.news) {
      axios.
        get('http://localhost/API_Proj/phprest/api/news/').
        then(response => (this.info = response.data))
    }
  }
}
</script>

<style>
/*---------------------------------------------------------------*/
/*---------------- CSS MENU NAVIGATION ARTICLES HOMEPAGE -------------*/
#RightMenuContainer {
	width: 18%;
	height: auto;
	position: -webkit-sticky;
	position: sticky;
	top: 12%;
	float: right;
	right:10%;
	margin-top:30px;
	animation-duration: 1s;
	animation-name: growIn;

}
.titleBlockMenu {
	box-sizing: border-box;
	height:auto;
	width:100%;
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.2), 0 3px 3px 0 rgba(0, 0, 0, 0.12);
	padding:13px 10px 13px 10px;
	background-color: #d12f2d;
	color:rgb(228, 228, 228);
	font-family: 'Lato', sans-serif;
	border-radius: 7px;
}

.navigationMenuR {
	margin-top:5px;
	width: 100%;
	height: auto;
}
.navigationMenuR ul {
	border-radius: 7px;
	background-color: rgb(241, 241, 241);
}

.navigationMenuR li {
	width:100%;
	color: rgb(95, 95, 95);
	border-bottom: 1px solid rgba(87, 87, 87, 0.315);
}

.navigationMenuR a {
	text-align:left;
	color: rgb(95, 95, 95);
}

.navigationMenuR a:last-of-type {
	border:none;
}
/*---------------------------------------------------------------*/
/*---------------------------------------------------------------*/

</style>