import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {receiveSearchGiphys,fetchSearchGiphys} from './actions/giphy_actions';
import * as APIUtil from './util/api_util';
const store=configureStore();
 window.receiveSearchGiphys = receiveSearchGiphys;
 window.fetchSearchGiphys = fetchSearchGiphys;
 window.store = configureStore();

document.addEventListener('DOMContentLoaded',() =>{
   ReactDOM.render(<Root store={store} /> ,document.getElementById('root'));
});