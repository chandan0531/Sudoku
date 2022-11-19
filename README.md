# Sudoku Puzzle Solver Application-API

The user send in an array representing an unsolved Sudoku
puzzle and they would get responds with the solved puzzle.

## Problem statement

The goal of sudoku is to fill in a 9x9 grid with digits so that each column, row, and 3x3 section
contain the numbers between 1 to 9. At the beginning of the game,
9x9 grid will have some of the squares filled in. Use logic to fill in the
missing digits and complete the grid.

Constraints:
- Any row cannot contain more than one of the same number from 1 to 9
- Any column cannot contain more than one of the same number from 1 to 9
- Any 3x3 grid cannot contain more than one of the same number from 1 to 9



## API use for below functions
- User can send the unsolved sudoku puzzle
- They will get the responds with the solved puzzle.

## Tech Stack
- Ruby on rails

## API Reference

#### Post the unsolved Sudoku puzzle

```http
  POST  http://localhost:3000/api/sudoku
```

| Method | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `POST` | `JSON` | **Required**. 2D Array1 |


#### Sudoku puzzle Solver (input-2D Array1, output-2D Array2)

Takes unsolved sudoku puzzle (2D Array1) and returns solved sudoku puzzle (2D Array2).

## Running Tests
Run the following command on postman
<img width="962" alt="Postman" src="https://user-images.githubusercontent.com/101566029/202842588-218467d1-62d1-401f-840d-389758559d9d.png">

