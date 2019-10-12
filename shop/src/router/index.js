import Vue from 'vue'
import Router from 'vue-router'

import Main from '../components/Main';
import Category from '../components/Category';

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Main',
      component: Main
    },
    {
      path: '/category/:id',
      name: 'Category',
      component: Category,
      props: true
    }
  ]
})
