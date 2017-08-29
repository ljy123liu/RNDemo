'use strict';

import React, { Component} from 'react';

import {
    AppRegistry,
    StyleSheet,
    Text,
    View,
    Button,
    ScrollView,
    TextInput,
    Image,
    ImageBackground,
    TouchableHighlight,
} from 'react-native';
import util from '../utils/api';

class YouKuComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {title:''};
    }

    click() {

        fetch('https://facebook.github.io/react-native/movies.json', {
            method: 'GET'
        })
        .then((response) => response.json())
        .then((responseData) => {
            const movie = responseData.movies[0];
            util.get();
            // console.log(movie.title);
            // this.setState({
            //     return: {title: movie.title}
            // });
        })
        .catch((error) => {
            callback(error);
        });
    }

    render() {

        return (
            <View>
                {/* 多个样式，用数组 */}
                <Text style={[styles.itemMargin, styles.textColor]}>我是自定义组件:{this.props.name}</Text>
                {/* <Button title='button' onPress={this.click}/> */}
                <TouchableHighlight onPress={this.click} style={{height:50}}>
                    <Text style={{ textAlign: 'center' }}>网络请求</Text>
                </TouchableHighlight>
                <Text>{this.state.title}</Text>
            </View>
        );
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: 'lightgray',
        marginTop:100
    },
    highScoresTitle: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
    },
    scores: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
    },
    blinkStyle: {
        flexDirection:'row',
        flex:1,
        backgroundColor:'yellow',
        color: 'red',
        marginTop: 10,
    },
    itemMargin: {
        marginTop:10,
    },
    textColor: {
        color: 'blue'
    }

});

module.exports = YouKuComponent;