import React, { Component, PropTypes } from 'react'
import { requireNativeComponent } from 'react-native'

var RNTMap = requireNativeComponent('RNMap', MapView)

export default class MapView extends Component {
  static propTypes = {
    pitchEnabled: PropTypes.bool,
    scrollEnabled: PropTypes.bool,
  }
  render() {
    return <RNTMap {...this.props} />
  }
}
