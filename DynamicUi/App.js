import React, { useState } from "react";
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  FlatList,
  StyleSheet,
} from "react-native";

export default function App() {
  const [task, setTask] = useState("");
  const [tasks, setTasks] = useState([]);

  const addTask = () => {
    if (task.trim() === "") return;

    setTasks([...tasks, { id: Date.now().toString(), title: task }]);
    setTask("");
  };

  const deleteTask = (id) => {
    setTasks(tasks.filter((item) => item.id !== id));
  };

  return (
    <View style={styles.container}>
      <Text style={styles.heading}>To-Do List</Text>

      {/* Input */}
      <View style={styles.inputContainer}>
        <TextInput
          style={styles.input}
          placeholder="Enter a task..."
          value={task}
          onChangeText={setTask}
        />

        <TouchableOpacity style={styles.addBtn} onPress={addTask}>
          <Text style={styles.addBtnText}>Add</Text>
        </TouchableOpacity>
      </View>

      {/* List */}
      <FlatList
        data={tasks}
        keyExtractor={(item) => item.id}
        renderItem={({ item }) => (
          <View style={styles.taskItem}>
            <Text style={styles.taskText}>{item.title}</Text>

            <TouchableOpacity onPress={() => deleteTask(item.id)}>
              <Text style={styles.deleteBtn}>X</Text>
            </TouchableOpacity>
          </View>
        )}
        ListEmptyComponent={
          <Text style={styles.empty}>No tasks yet...</Text>
        }
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: 50,
    paddingHorizontal: 20,
    backgroundColor: "#F9F9F9",
  },

  heading: {
    fontSize: 28,
    fontWeight: "bold",
    marginBottom: 20,
    textAlign: "center",
  },

  inputContainer: {
    flexDirection: "row",
    marginBottom: 20,
  },

  input: {
    flex: 1,
    padding: 12,
    borderWidth: 1,
    borderColor: "#ccc",
    borderRadius: 10,
    backgroundColor: "white",
  },

  addBtn: {
    backgroundColor: "#28A745",
    paddingVertical: 12,
    paddingHorizontal: 20,
    marginLeft: 10,
    borderRadius: 10,
  },

  addBtnText: {
    color: "white",
    fontWeight: "bold",
  },

  taskItem: {
    flexDirection: "row",
    backgroundColor: "white",
    padding: 15,
    borderRadius: 10,
    marginBottom: 10,
    justifyContent: "space-between",
    alignItems: "center",
    borderWidth: 1,
    borderColor: "#ddd",
  },

  taskText: {
    fontSize: 16,
  },

  deleteBtn: {
    backgroundColor: "red",
    color: "white",
    paddingHorizontal: 10,
    paddingVertical: 5,
    borderRadius: 5,
    fontWeight: "bold",
  },

  empty: {
    marginTop: 20,
    textAlign: "center",
    color: "#777",
  },
});
