import {View,StyleSheet,Text} from 'react-native'
export default function App(){
  return(
    // <View style={styles.containers}>
    //   <Text style={styles.title}>Hello</Text>
    // </View>
    <View style={styles.containers}>
      <View style={[styles.lightBlueBox,styles.box]}>
        <Text>Lightblue box</Text>
      </View>
      <View style={[styles.lightGreenBox,styles.box]}>
        <Text>Lightgreen box</Text>
      </View>
    </View>
  );
}

const styles=StyleSheet.create(
  {
    containers:{
      flex:1,backgroundColor:'plum',padding:60
    },
    box:{
      width:100,
      height:100,
      padding:10,
      borderWidth:2,
      borderColor:"purple",
      borderStyle:"solid",
      borderRadius:30
    },
    lightBlueBox:{
      backgroundColor:"lightblue",
     
    },
     lightGreenBox:{
      backgroundColor:"lightgreen",
     marginTop:10
    },
  }
)