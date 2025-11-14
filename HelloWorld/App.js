import {View,Text,Image, ImageBackground, ScrollView,Button,Pressable} from 'react-native';

export default function App(){
  function click(){
    alert('hello')
  }
  return(
<ScrollView style={{flex:1,backgroundColor:"plum",padding:60}}>
  {/* <Text><Text style={{color:"white"}}>Hello</Text> World</Text>
  <Image source={{uri:"https://picsum.photos/id/237/200/300"}}
    style={{height:200,width:200}}
  ></Image> */}
  <ImageBackground source={{uri:"https://picsum.photos/id/237/200/300"}} style={{flex:1, height:200,width:200}}/>
<Text>Hello</Text>
<Button title='click' onPress={click} color="midnightblue" />
<Pressable onPress={()=>{console.log("hi")} }>
<Text>Hello</Text>
</Pressable>
</ScrollView>
  );
}