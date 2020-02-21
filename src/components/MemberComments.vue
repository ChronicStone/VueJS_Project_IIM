<!-- Component de la navbar -->
<template>
  <div>
    <div id="rightTitleContainer">
        <h3>Liste des commentaires publiés</h3>
    </div>

    <div id="rightContainerProfile">
      <div class="titleNewsDisp">
        News concernée : 
        <a href="news_comment.php?selectnews=<?php echo $c_idNews;?>">TITRE DE LA NEWS</a>
      </div>
      <div class="commentContentProfile">
          <div class="authdateCommentProfile">
            Posté par : <span style="color:#5f0000;">PSEUDO </span> &nbsp; &nbsp;Le : <span style="color:#5f0000;">DATE</span>
          </div>
          <h4> 
              CONTENU COMMENTAIRE 
          </h4>   
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MemberComments',
  props: {
  },
  data(){
    return{
    }
  }
}
</script>

<style>
</style>