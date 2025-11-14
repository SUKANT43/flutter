import {View,Text,Image, ImageBackground, ScrollView,Button,Pressable,Modal, StatusBar, ActivityIndicator, StyleSheet} from 'react-native';
import { useState } from 'react';
import Greet from './components/Greet';
export default function App(){
  function click(){
    alert('hello',"Dob Incorrect",[
      {
        text:'cancel',
      },
      {
        text:'ok'
      }
    ])
  }
const[isLoading,setLoading]=useState(false)
  const[isVisible,setIsModalVisible]=useState(false)

//   return(
// <ScrollView style={{flex:1,backgroundColor:"plum",padding:60}}>
//   {/* <Text><Text style={{color:"white"}}>Hello</Text> World</Text>
//   <Image source={{uri:"https://picsum.photos/id/237/200/300"}}
//     style={{height:200,width:200}}
//   ></Image> */}
//   <ImageBackground source={{uri:"https://picsum.photos/id/237/200/300"}} style={{flex:1, height:200,width:200}}/>
// <Text>Hello</Text>
// <Button title='click' onPress={()=>{setIsModalVisible(true)}} color="midnightblue" />
// <Pressable onPress={()=>{console.log("hi")} }>
// <Text>Hello</Text>
// </Pressable>
// <Modal visible={isVisible} animationType='slide' presentationStyle='formSheet'>
//   <View style={{flex:1,backgroundColor:"LightBlue",padding:60}}>
//     <Button title='Close' color="MidnightBlue" onPress={()=>{setIsModalVisible(false)}}></Button>
//   </View>
// </Modal>
// </ScrollView>
//   );

return(
<View style={{flex:1 , backgroundColor:"plum", padding:60}}>
  <StatusBar backgroundColor="lightgreen" barStyle="dark-content"/>
  <ActivityIndicator size="large" color="midnightBlue"></ActivityIndicator>
  <ActivityIndicator size="large" color="midnightBlue" animating={true}></ActivityIndicator>
  <Button title='alert' onPress={()=>{
    Alert.alert('hello',"Dob Incorrect",[
      {
        text:'cancel',
      },
      {
        text:'ok'
      }
    ])
  }}/>
  <Greet name="sukant"/>
</View>
)
}

