import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {receiveSearchGiphys} from './actions/giphy_actions';
import * as APIUtil from './util/api_util';

window.receiveSearchGiphys = receiveSearchGiphys;
window.fetchSearchGiphys = APIUtil.fetchSearchGiphys;
// const store= configureStore();
window.store = configureStore();

document.addEventListener('DOMContentLoaded',() =>{
   ReactDOM.render(<h1>Recat Is Working</h1> ,document.getElementById('root'));
});