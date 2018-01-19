import React from 'react';
import ReactDom from 'react-dom'
import Calculator from './calculator';

document.addEventListener('DOMContentLoaded',()=>{
    ReactDom.render(<Calculator/>,document.getElementById('root'))
});
