import {View,Text,Image, ImageBackground, ScrollView,Button,Pressable,Modal} from 'react-native';
import { useState } from 'react';
export default function App(){
  function click(){
    alert('hello')
  }

  const[isVisible,setIsModalVisible]=useState(false)

  return(
<ScrollView style={{flex:1,backgroundColor:"plum",padding:60}}>
  {/* <Text><Text style={{color:"white"}}>Hello</Text> World</Text>
  <Image source={{uri:"https://picsum.photos/id/237/200/300"}}
    style={{height:200,width:200}}
  ></Image> */}
  <ImageBackground source={{uri:"https://picsum.photos/id/237/200/300"}} style={{flex:1, height:200,width:200}}/>
<Text>Hello</Text>
<Button title='click' onPress={()=>{setIsModalVisible(true)}} color="midnightblue" />
<Pressable onPress={()=>{console.log("hi")} }>
<Text>Hello</Text>
</Pressable>
<Modal visible={isVisible} animationType='slide' presentationStyle='formSheet'>
  <View style={{flex:1,backgroundColor:"LightBlue",padding:60}}>
    <Button title='Close' color="MidnightBlue" onPress={()=>{setIsModalVisible(false)}}></Button>
  </View>
</Modal>
</ScrollView>
  );
}