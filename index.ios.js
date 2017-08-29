'use strict';

import React, { Component} from 'react';
import {
    StackNavigator,
} from 'react-navigation';
import {
    AppRegistry,
    StyleSheet,
    Text,
    View,
    Button,
    ScrollView,
    TextInput,
    Image,
    TouchableHighlight,
    Animated
} from 'react-native';

/**
 * 属性:props
 */
class NameCard extends Component {
    render() {
        return (
            <View>
                <Text>{this.props.name+':'+this.props.age}</Text>
            </View>
        );
    }
}

/**
 * 状态:state
 */
class Blink extends Component {
    constructor(props) {
        super(props);
        this.state = { showText: true };

        // 每1000毫秒对showText状态做一次取反操作
        setInterval(() => {
            //需要修改时调用setState
            this.setState(previousState => {
                return { showText: !previousState.showText };
            });
        }, 1000);
    }

    render() {
        // 根据当前showText的值决定是否显示text内容
        let display = this.state.showText ? this.props.text : ' ';
        return (
            <Text style={styles.blinkStyle}>{display}</Text>
        );
    }
}

class PizzaTranslator extends Component {
    constructor(props) {
        super(props);
        this.state = { text: '' };
    }

    render() {
        return (
            <View style={{ padding: 10 }}>
                <TextInput
                    style={{ height: 40 }}
                    placeholder="Type here to translate!"
                    onChangeText={(text) => this.setState({ text })}
                />
                <Text style={{ padding: 10, fontSize: 42 }}>
                    {this.state.text.split(' ').map((word) => word && '🍕').join(' ')}
                </Text>
            </View>
        );
    }
}

class MyButton extends Component {
    onPressButton() {
        console.log("You tapped the button!");
    }

    render() {
        return (
            <TouchableHighlight onPress={this.onPressButton}>
                <Text>Button</Text>
            </TouchableHighlight>
        );
    }
}

class RNHighScores extends React.Component {
    render() {
        var contents = this.props["scores"].map(
            score => <Text key={score.name}>{score.name}:{score.value}{"\n"}</Text>
        );
        //导航
        // const { navigate } = this.props.navigation;
        return (
            <ScrollView>
                <View style={styles.container}>
                    <Text style={styles.highScoresTitle}>
                        2048 High Scores!
                    </Text>
                    <Text style={styles.scores}>
                        {contents}
                    </Text>
                    <Button
                        title="Go to Jane's profile"
                        onPress={() =>navigate('Profile', { name: 'Jane' })}/>
                </View>
                <View style={{marginTop:20,backgroundColor:'lightgray'}}>
                     <NameCard name='我是组件:props' age='25' />
                     <Blink style={styles.blinkStyle} text='state改变' />
                </View>
                <View style={styles.itemMargin}>
                    <Text style={styles.textColor}>Flex Direction:flexDirection可以决定布局的主轴</Text>
                    <Text>row</Text>
                    <View style={{ flex: 1, flexDirection: 'row' }}>
                        <View style={{ width: 50, height: 50, backgroundColor: 'powderblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'skyblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'steelblue' }} />
                    </View>
                    <Text>column</Text>
                    <View style={{ flex: 1, flexDirection: 'column' }}>
                        <View style={{ width: 50, height: 50, backgroundColor: 'powderblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'skyblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'steelblue' }} />
                    </View>
                </View>
                <View style={styles.itemMargin}>
                    <Text style={styles.textColor}>Justify Content:可以决定其子元素沿着主轴的排列方式,flex-start、center、flex-end、space-around以及space-between</Text>
                    <Text>space-between</Text>
                    <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'space-between', }}>
                        <View style={{ width: 50, height: 50, backgroundColor: 'powderblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'skyblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'steelblue' }} />
                    </View>
                    <Text>flex-end</Text>
                    <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'flex-end', }}>
                        <View style={{ width: 50, height: 50, backgroundColor: 'powderblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'skyblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'steelblue' }} />
                    </View>
                    <Text>space-around</Text>
                    <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'space-around', }}>
                        <View style={{ width: 50, height: 50, backgroundColor: 'powderblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'skyblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'steelblue' }} />
                    </View>
                    <Text>center</Text>
                    <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'center', }}>
                        <View style={{ width: 50, height: 50, backgroundColor: 'powderblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'skyblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'steelblue' }} />
                    </View>
                </View>

                <View style={styles.itemMargin}>
                    <Text style={styles.textColor}>alignItems可以决定其子元素沿着次轴的排列方式,flex-start、center、flex-end以及stretch</Text>
                    <Text>flex-start</Text>
                    <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center', alignItems: 'flex-start'}}>
                        <View style={{ width: 50, height: 50, backgroundColor: 'powderblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'skyblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'steelblue' }} />
                    </View>
                    <Text>flex-end</Text>
                    <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center', alignItems: 'flex-end' }}>
                        <View style={{ width: 50, height: 50, backgroundColor: 'powderblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'skyblue' }} />
                        <View style={{ width: 50, height: 50, backgroundColor: 'steelblue' }} />
                    </View>
                    <Text>stretch</Text>
                    <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center', alignItems: 'stretch' }}>
                        <View style={{height: 50, backgroundColor: 'powderblue' }} />
                        <View style={{height: 50, backgroundColor: 'skyblue' }} />
                        <View style={{height: 50, backgroundColor: 'steelblue' }} />
                    </View>
                </View>

                <View style={styles.itemMargin}>
                    <Text style={styles.textColor}>TextInput</Text>
                    <PizzaTranslator></PizzaTranslator>
                </View>

                <View style={styles.itemMargin}>
                    <Text style={styles.textColor}>手势</Text>
                    <MyButton />
                </View>

                <View style={styles.itemMargin}>
                    <Text style={styles.textColor}>Animated</Text>
                    
                </View>

                <View style={styles.itemMargin}>
                    <Text style={styles.textColor}>本地图片</Text>
                    <Image source={require('./Img/cloth.jpg')}
                        style={{ width: 200, height: 200 }} />
                    <Text style={styles.textColor}>网络图片</Text>
                    <Image source={{ uri: 'https://facebook.github.io/react/img/logo_og.png' }}
                        style={{ width: 200, height: 200 }} />
                </View>

                

                

                
                
            </ScrollView>
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

// 整体js模块的名称
AppRegistry.registerComponent('MyReactNativeApp', () => RNHighScores);