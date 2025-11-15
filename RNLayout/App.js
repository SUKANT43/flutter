import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import Box from './components/Box'
export default function App() {
  return (
    <View style={styles.container}>
      <Box style={{backgroundColor:"#8e9b00",top:75,left:75}}>Box1</Box>
      <Box style={{backgroundColor:"#11d933ff"}}>Box2</Box>
      <Box style={{backgroundColor:"#ae8724ff"}}>Box3</Box>
      <Box style={{backgroundColor:"#8e9b00",top:75,left:75}}>Box4</Box>
      <Box style={{backgroundColor:"#0e0337ff"}}>Box5</Box>
      <Box style={{backgroundColor:"#74124bff"}}>Box6</Box>
      <Box style={{backgroundColor:"#b1f1bcff"}}>Box7</Box>

    </View>
  ); 
}

const styles = StyleSheet.create({
  container:{
    flex:1,
    marginTop:64,
    borderWidth:6,
    borderColor:"red"
  }
});
