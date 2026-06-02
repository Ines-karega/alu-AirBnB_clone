# AirBnB Clone - The Console

## Description

This project is the first step towards building a full web application: an AirBnB clone. In this step, we implement a command interpreter to manage AirBnB objects. The interpreter allows us to create, retrieve, update, and delete objects, as well as serialize and deserialize them to/from a JSON file.

The classes implemented include:
- `BaseModel` – the base class all other models inherit from
- `User`, `State`, `City`, `Place`, `Amenity`, `Review` – specific AirBnB models
- `FileStorage` – handles serialization/deserialization to JSON

## Command Interpreter

### How to Start

```bash
./console.py
```

Or in non-interactive mode:

```bash
echo "<command>" | ./console.py
```

### How to Use

The console supports the following commands:

| Command | Description |
|---------|-------------|
| `create <class>` | Creates a new instance of the class, saves it, and prints the id |
| `show <class> <id>` | Prints the string representation of an instance |
| `destroy <class> <id>` | Deletes an instance based on class name and id |
| `all [class]` | Prints all string representations of instances, optionally filtered by class |
| `update <class> <id> <attr> <value>` | Updates an attribute of an instance |
| `quit` | Exit the program |
| `EOF` | Exit the program (Ctrl+D) |
| `help [command]` | Show help information |

### Examples

**Interactive mode:**

```
$ ./console.py
(hbnb) create BaseModel
49faff9a-6318-451f-87b6-910505c55907
(hbnb) show BaseModel 49faff9a-6318-451f-87b6-910505c55907
[BaseModel] (49faff9a-6318-451f-87b6-910505c55907) {'id': '49faff9a-6318-451f-87b6-910505c55907', ...}
(hbnb) all BaseModel
["[BaseModel] (49faff9a-6318-451f-87b6-910505c55907) {...}"]
(hbnb) update BaseModel 49faff9a-6318-451f-87b6-910505c55907 first_name "Betty"
(hbnb) destroy BaseModel 49faff9a-6318-451f-87b6-910505c55907
(hbnb) quit
$
```

**Non-interactive mode:**

```
$ echo "create BaseModel" | ./console.py
(hbnb) 49faff9a-6318-451f-87b6-910505c55907
(hbnb)
$ echo "all" | ./console.py
(hbnb) []
(hbnb)
```
