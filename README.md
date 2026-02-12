# Escape Room Adeventure Game 

A mobile choose-your-own-adventure escape room game built with Flutter. Players navigate through interconnected rooms, explore environments, and progress through the castle by selecting directional choices.

This project demonstrates mobile UI development, state management, navigation logic, and interactive storytelling using Flutter and Dart.

---

## Features

- Interactive room navigation system
- Multiple interconnected environments (Foyer, Library, Kitchen, Tower, etc.)
- Dynamic directional movement
- Context-aware navigation buttons
- Room transition animations
- Exit confirmation dialog
- Responsive mobile UI layout

---

## Architecture Overview 

The game is structured around a room graph model, where each room is a node connected via directional exits.

### Core Components

**Room Model**
- Defines name, description, and exits
- Uses a `Map<String, int>`to map directions to room IDs

**State Management**
- Tracks current room `using _currentRoomId`
- Updates UI dynamically via `setState`

**Navigation Engine**
- Validates directional movement
- Prevents invalid transitions
- Displays feedback via SnackBars

---

## Game Logic 
Each room contains:
- A descriptive narrative
- Valid exit directions
- Links to adjacent rooms

Example:
```dart
Room(
  name: 'Library',
  description: 'Rows of old books...',
  exits: {'south': 0, 'up': 4},
)
```

Movement is handled by:
```dart
void _move(String direction)
```

This function:
1. Checks if direction exists
2. Updates current room
3. Rebuilds UI with animations

---

## UI & Animations

The interface uses Flutter Material components with animated transitions:

### Animated Elements
- **Room Title** → Fade transition
- **Room Description** → Slide transition
- **Directional Buttons** → Dynamic rendering

Widgets used:
- `AnimatedSwitcher`
- `FadeTransition`
- `SlideTransition`
- `Wrap`
- `Chip`
- `ElevatedButton`

---

## Tech Stack

- **Framework:** Flutter
- **Language:** Dart
- **UI Library:** Material Design
- **State Management:** StatefulWidget / setState
- **Platform:** iOS / Android compatible

---

## Running the Project 

### Prerequisites
- Flutter SDK installed
- Android Studio / VS Code
- Emulator or physical device

### Steps 
```bash
git clone https://github.com/gdoeg/escape-room-game.git
cd escape-room-game
flutter pub get
flutter run
```

---

## Example Gameplay Flow 
1. Start in the Foyer
2. Travel North → Library
3. Climb Up → Tower
4. Descend → Dungeon
5. Explore alternate paths

Each decision dynamically updates the environment.

--- 

## Future Improvements 
- Inventory system
- Puzzle mechanics
- Timed escape challenges
- Sound effects & music
- Save/load progress
- Expanded map & storylines
- Multiplayer co-op mode

--- 

## Screenshots 

---

## Learning Outcomes 
This project demonstrates: 
- Mobile app development fundamentals
- Graph-based navigation systems
- Stateful UI updates
- Animation integration
- User interaction handling
- Dialog & feedback systems

---

## License 
This project is for educational and portfolio use. 
