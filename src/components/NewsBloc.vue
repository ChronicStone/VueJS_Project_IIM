<!-- Component du bloc news -->
<template>
  <div>
    <div class="titleBlock">
        {{title}}         
    </div>      
    
    <div class="article" id="article<?php echo $id; ?>">
        <div class="authdateTitle">
            Posté par : <span style="color:#5f0000;"> <router-link :to="{ name: 'profile', params: { value } }"> {{author}} </router-link></span> &nbsp; &nbsp;Le : <span style="color:#5f0000;">{{publishDate}}</span>
        </div>
        <h4> {{content}} </h4><hr/>
        <div class="reaction">
          <router-link :to="{ name: 'article', params: { idacc, value } }">
                  Commentaires
          </router-link> 
        </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NewsBloc',
  props: {
    title: String,
    id: String,
    content: String,
    author: String,
    publishDate: String,
  },
  data(){
    return{
      value:this.author,
      idacc: this.id
    }
  }
}
</script>

<style>
</style>