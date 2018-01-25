import React from 'react';

import GiphysIndex from './giphys_index';


class GiphysSearch extends React.Component{
    constructor(props){
        super();
        this.state={searchTerm: ''};
        this.handleonSubmit=this.handleonSubmit.bind(this);
        this.setProperty=this.setProperty.bind(this);
    }

    handleonSubmit(e){
        e.preventDefault();
        let searchTerm = this.state.searchTerm;
        this.props.fetchSearchGiphys(searchTerm);
        this.setState({searchTerm: ''});
    }

    setProperty(e){
        e.preventDefault();
        console.log(e.target);
        this.setState({searchTerm: e.currentTarget.value});
    }

    render(){
        return(
            <ul>
                <form onSubmit={this.handleonSubmit}>
                    <input type="text" onChange={this.setProperty} value={this.state.searchTerm}/>
                    <input type="submit" value="Search"/>
                </form>

                {this.props.giphys.map((giphy,idx) => <li key={idx}>{giphy.url}</li>)}

            </ul>
        )
    }

}

export default GiphysSearch;