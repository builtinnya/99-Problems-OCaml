# 99 Problems in OCaml

These are my solutions to [99 Problems in OCaml], which is inspired by
[Ninety-Nine Lisp Problems].
I'm new to OCaml, so patches (or pull requests) are very welcome :)

[99 Problems in OCaml]: http://ocaml.org/tutorials/99problems.html
[Ninety-Nine Lisp Problems]: http://www.ic.unicamp.br/~meidanis/courses/mc336/2006s2/funcional/L-99_Ninety-Nine_Lisp_Problems.html

## Status

Currently in progress.

### Working with lists

| No. | Description          | Status        |   | No. | Description           | Status        |
|-----|----------------------|---------------|---|-----|-----------------------|---------------|
| 01  | Last element         | **Completed** |   | 15  | Replicate             | **Completed** |
| 02  | Last two elements    | **Completed** |   | 16  | Drop every N'th       | **Completed** |
| 03  | K'th element         | **Completed** |   | 17  | Split                 | **Completed** |
| 04  | Length               | **Completed** |   | 18  | Slice                 | **Completed** |
| 05  | Reverse              | **Completed** |   | 19  | Rotate                | **Completed** |
| 06  | Palindrome           | **Completed** |   | 20  | Remove                | **Completed** |
| 07  | Flatten              | **Completed** |   | 21  | Insert                | **Completed** |
| 08  | Eliminate duplicates | **Completed** |   | 22  | Range                 | **Completed** |
| 09  | Pack duplicates      | **Completed** |   | 23  | Random select         | **Completed** |
| 10  | Run-length           | **Completed** |   | 24  | Random numbers        | **Completed** |
| 11  | Modified run-length  | **Completed** |   | 25  | Random permutation    | **Completed** |
| 12  | Decode run-length    | **Completed** |   | 26  | Combinations          | **Completed** |
| 13  | Direct run-length    | **Completed** |   | 27  | Group                 | **Completed** |
| 14  | Duplicate            | **Completed** |   | 28  | Sort by length        | **Completed** |

### Arithmetic

| No. | Description       | Status        |   | No. | Description             | Status        |
|-----|-------------------|---------------|---|-----|-------------------------|---------------|
| 29  | Prime             | Not completed |   | 35  | Improve 32              | Not completed |
| 30  | GCD               | Not completed |   | 36  | Compare 32 and 35       | Not completed |
| 31  | Coprime           | Not completed |   | 37  | List prime numbers      | Not completed |
| 32  | Euler's totient   | Not completed |   | 38  | Goldbach's conjecture   | Not completed |
| 33  | Prime factors     | Not completed |   | 39  | Goldbach compositions   | Not completed |
| 34  | Prime factors 2   | Not completed |

### Logic and Codes

| No. | Description                                        | Status        |
|-----|----------------------------------------------------|---------------|
| 40  | Truth tables for logical expressions (2 variables) | Not completed |
| 41  | Truth tables for logical expressions               | Not completed |
| 42  | Gray code                                          | Not completed |
| 43  | Huffman code                                       | Not completed |

### Binary Trees

| No. | Description         | Status        |   | No. | Description              | Status        |
|-----|---------------------|---------------|---|-----|--------------------------|---------------|
| 44  | Completely balanced | Not completed |   | 53  | Collect nodes at a level | Not completed |
| 45  | Symmetric           | Not completed |   | 54  | Complete binary tree     | Not completed |
| 46  | Binary search trees | Not completed |   | 55  | Layout 1                 | Not completed |
| 47  | Generate-and-test   | Not completed |   | 56  | Layout 2                 | Not completed |
| 48  | Height-balanced     | Not completed |   | 57  | Layout 3                 | Not completed |
| 49  | 48 with N nodes     | Not completed |   | 58  | Stringify                | Not completed |
| 50  | Count leaves        | Not completed |   | 59  | Preorder and inorder     | Not completed |
| 51  | Collect leaves      | Not completed |   | 60  | Dotstring                | Not completed |
| 52  | Collect internals   | Not completed |

### Multiway Trees

| No. | Description          | Status        |
|-----|----------------------|---------------|
| 61  | Count nodes          | Not completed |
| 62  | Node string          | Not completed |
| 63  | Internal path length | Not completed |
| 64  | Bottom-up order      | Not completed |
| 65  | Lisp-like tree       | Not completed |

### Graphs

| No. | Description           | Status        |   | No. | Description             | Status        |
|-----|-----------------------|---------------|---|-----|-------------------------|---------------|
| 66  | Conversions           | Not completed |   | 72  | Graph coloration        | Not completed |
| 67  | Path                  | Not completed |   | 73  | Depth-first traversal   | Not completed |
| 68  | Cycle                 | Not completed |   | 74  | Connected components    | Not completed |
| 69  | Spanning trees        | Not completed |   | 75  | Bipartite graphs        | Not completed |
| 70  | Minimal spanning tree | Not completed |   | 76  | K-regular simple graphs | Not completed |
| 71  | Graph isomorphism     | Not completed |

### Miscellaneous Problems

| No. | Description           | Status        |   | No. | Description      | Status        |
|-----|-----------------------|---------------|---|-----|------------------|---------------|
| 77  | Eight queens problem  | Not completed |   | 82  | Syntax checker   | Not completed |
| 78  | Knight's tour         | Not completed |   | 83  | Sudoku           | Not completed |
| 79  | Von Koch's conjecture | Not completed |   | 84  | Nonograms        | Not completed |
| 80  | An arithmetic puzzle  | Not completed |   | 85  | Crossword puzzle | Not completed |
| 81  | English number words  | Not completed |

## Building and Testing Answers

You will need the latest version of the following libraries:

- [OCaml]
- [OMake]
- [OUnit]
- [Batteries]

[OCaml]: http://caml.inria.fr/ocaml/release.en.html
[OMake]: http://omake.metaprl.org/download.html
[OUnit]: http://ounit.forge.ocamlcore.org/
[Batteries]: https://github.com/ocaml-batteries-team/batteries-included

To build and test the answers, just run `omake`.
Run `omake clean` to remove files generated in building.

## Copyright and License

Copyright (c) 2013 Naoto Yokoyama

Distributed under the MIT license.
See the LICENSE file for full details.
