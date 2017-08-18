/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react'
import { AppRegistry, StyleSheet, Text, View } from 'react-native'
import MapView from './MapView'
import { NativeModules } from 'react-native'

var CalendarManager = NativeModules.CalendarManager
CalendarManager.addEvent(
  'Birthday Party',
  '4 Privet Drive, Surrey',
  new Date().getTime(),
)
console.log(CalendarManager)

// console.log(CalendarManager.firstDayOfTheWeek)

// const calendarManagerEmitter = new NativeEventEmitter(CalendarManager)

// const subscription = calendarManagerEmitter.addListener(
//   'EventReminder',
//   reminder => console.log(reminder.name),
// )

export default class rnDemo extends Component {
  onChange = event => {
    console.log(event.nativeEvent.region)
  }
  // componentWillUnmount() {
  //   subscription.remove()
  // }
  render() {
    var region = {
      latitude: 37.48,
      longitude: -122.16,
      latitudeDelta: 0.1,
      longitudeDelta: 0.1,
    }
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to React Native!
        </Text>
        <Text style={styles.instructions}>
          To get started, edit index.ios.js
        </Text>
        <Text style={styles.instructions}>
          Press Cmd+R to reload,{'\n'}
          Cmd+D or shake for dev menu
        </Text>
        <MapView
          style={styles.map}
          pitchEnabled={true}
          region={region}
          onChange={event => this.onChange(event)}
        />
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
  map: {
    width: 375,
    height: 375,
  },
})

AppRegistry.registerComponent('rnDemo', () => rnDemo)
