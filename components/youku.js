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


class YouKuComponent extends Component {
    click() {
        console.log(222)
    }

    render() {
        return (
            <View>
                {/* 多个样式，用数组 */}
                <Text style={[styles.itemMargin, styles.textColor]}>我是自定义组件:{this.props.name}</Text>
                <Button title='button' onPress={this.click}/>
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