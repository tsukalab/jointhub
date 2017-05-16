import React from 'react'
import STLViewer from 'stl-viewer'

export default function MyStlView(props) {
  return <STLViewer
    url={props.url}
    width={400}
    height={400}
    modelColor='#B92C2C'
    backgroundColor='#EAEAEA'
    rotate={true}
    orbitControls={true}
    />;
}
