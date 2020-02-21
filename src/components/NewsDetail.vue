<!-- Component du bloc news -->
<template>
  <div>
    <div class="titleBlock">
        {{title}}         
    </div>      
    
    <div class="article">
        <div class="authdateTitle">
            Posté par : <span style="color:#5f0000;"> <router-link :to="{ name: 'profile', params: { value } }"> {{author}} </router-link></span> &nbsp; &nbsp;Le : <span style="color:#5f0000;">{{publishDate}}</span>
        </div>
        <h4> {{content}} </h4>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NewsDetail',
  props: {
    title: String,
    content: String,
    author: String,
    publishDate: String,
  },
  data(){
    return{
      value: this.author
    }
  }
}
</script>

<style>
</style>