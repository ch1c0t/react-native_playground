// Generated by CoffeeScript 2.2.4
var App, Greeting;

import React, {
  Component
} from 'react';

import {
  Text,
  View
} from 'react-native';

Greeting = class Greeting extends Component {
  render() {
    return <Text>Hello, {this.props.name}!</Text>;
  }

};

module.exports = App = class App extends Component {
  render() {
    return <View style={{
        alignItems: 'center'
      }}>
      <Greeting name='Rexxar' />
      <Greeting name='Jaina' />
      <Greeting name='Valeera' />
    </View>;
  }

};
