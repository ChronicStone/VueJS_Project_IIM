import Vue from 'vue'
import Router from 'vue-router'

import HomePage from './../views/HomePage.vue'
import DetailsPage from './../views/DetailsPage.vue'
import ProjectsPage from './../views/ProjectsPage.vue'
import MembersList from './../views/MembersList.vue'
import MemberProfile from './../views/MemberProfile.vue'
import NewsDetail from './../views/NewsDetail.vue'


Vue.use(Router)

export default new Router({
    routes: [
        { 
            path: '/', 
            component: HomePage 
        },
        { 
            path: '/details', 
            component: DetailsPage 
        },
        { 
            path: '/projects', 
            component: ProjectsPage 
        },
        { 
            path: '/members', 
            component: MembersList 
        },
        { 
            path: '/memberProfile',
            name: 'profile',
            component: MemberProfile 
        },
        { 
            path: '/articlePage',
            name: 'article',
            component: NewsDetail 
        },
    ]
})
