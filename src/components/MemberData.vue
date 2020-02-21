<!-- Component de la navbar -->
<template>
  <div>
    <div id="rightTitleContainer">
        <div class="titleContainer">
            <h3>PROFIL PUBLIC</h3>
        </div>
    </div>

    <div id="rightContainerProfile">
        <div id="rightLContainer">
            <div id="dataField">
                <span class="titleData"> 
                    ▪ PSEUDO
                </span>
                <span class="contentData">
                  {{pseudo}}
                </span>
            </div>
            <div id="dataField">
                <span class="titleData"> 
                    ▪ ADRESSE MAIL
                </span>
                <span class="contentData">
                  {{mail}}
                </span>
            </div>
            <div id="dataField">
                <span class="titleData"> 
                    ▪ PRENOM
                </span>
                <span class="contentData">
                    {{prenom}}
                </span>
            </div>
            <div id="dataField">
                <span class="titleData"> 
                    ▪ NOM DE FAMILLE
                </span>
                <span class="contentData">
                  {{nom}}
                </span>
            </div>
        </div>
        <div id = "rightRContainer">
            <div id="dataField">
                <span class="titleData"> 
                    ▪ SITE WEB
                </span>
                <span class="contentData">
                    {{siteweb}}
                </span>
            </div>
            <div id="dataField">
                <span class="titleData"> 
                    ▪ FACEBOOK
                </span>
                <span class="contentData">
                    {{fb}}
                </span>
            </div>
            <div id="dataField">
                <span class="titleData"> 
                    ▪ TWITTER
                </span>
                <span class="contentData">
                   {{twitter}}
                </span>
            </div>
            <div id="dataField">
                <span class="titleData"> 
                    ▪ INSTAGRAM
                </span>
                <span class="contentData">
                    {{insta}}
                </span>
            </div>
        </div>
        <div class="clear"></div>


        <div id="userDescrpit">
            <span class="titleData"> 
                Bio personnalisée
            </span>
            <div class="contentBio">
              <div v-if="desc_user == null">
                Aucune bio rédigée par l'utilisateur 
              </div>
              <div :v-else="desc_user != null">
                {{desc_user}}
              </div>
            </div>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MemberData',
  props: {
    pseudo: String,
    rank: String,
    mail: String,
    avatar: String,
    insta: String,
    fb: String,
    twitter: String,
    siteweb: String,
    desc_user: String,
    nom: String,
    prenom: String,

  },
  data(){
    return{
    }
  }
}
</script>

<style>
</style>