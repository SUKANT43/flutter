import {View,Text,Image, ImageBackground, ScrollView,Button} from 'react-native';

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
<Text>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</Text>
<Button title='click' onPress={click} color="midnightblue"/>
</ScrollView>
  );
}