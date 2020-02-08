# Parking Lot

[![GO-JEK](https://lelogama.go-jek.com/service_icon_text/gojek-logo_normal.svg)](https://www.gojek.com)

### Run

#### Run the Test
```bash
bin/run_functional_tests
```

#### Example: File
To install all dependencies, compile and run tests:
```bash
$ bin/setup
```

To run the code so it accepts input from a file:
```bash
$ bin/parking_lot functional_spec/fixtures/file_input.txt
```

#### Input (contents of file):
[file_inputs.txt](functional_spec/fixtures/file_input.txt)

#### Output (to STDOUT):
> Created a parking lot with 6 slots \
Allocated slot number: 1 \
Allocated slot number: 2 \
Allocated slot number: 3 \
Allocated slot number: 4 \
Allocated slot number: 5 \
Allocated slot number: 6 \
Slot number 4 is free \
Slot No.    Registration No    Colour \
1           KA-01-HH-1234      White \
2           KA-01-HH-9999      White \
3           KA-01-BB-0001      Black \
5           KA-01-HH-2701      Blue \
6           KA-01-HH-3141      Black \
Allocated slot number: 4 \
Sorry, parking lot is full \
KA-01-HH-1234, KA-01-HH-9999, KA-01-P-333 \
1, 2, 4 \
6 \
Not found

#### Example: Interactive
To install all dependencies, compile and run tests:
```bash
$ bin/setup
```

To run the program and launch the shell:
```bash
$ bin/parking_lot
```

```bash
$ create_parking_lot 6
```
> Created a parking lot with 6 slots

```bash
$ park KA-01-HH-1234 White
```
> Allocated slot number: 1

```bash
$ park KA-01-HH-9999 White
```
> Allocated slot number: 2

```bash
$ park KA-01-BB-0001 Black
```
> Allocated slot number: 3

```bash
$ park KA-01-HH-7777 Red
```
> Allocated slot number: 4

```bash
$ park KA-01-HH-2701 Blue
```
> Allocated slot number: 5

```bash
$ park KA-01-HH-3141 Black
```
> Allocated slot number: 6

```bash
$ leave 4
```
> Slot number 4 is free

```bash
$ status
```
> Slot No.    Registration No    Colour \
1           KA-01-HH-1234      White \
2           KA-01-HH-9999      White \
3           KA-01-BB-0001      Black \
5           KA-01-HH-2701      Blue \
6           KA-01-HH-3141      Black

```bash
$ park KA-01-P-333 White
```
> Allocated slot number: 4

```bash
$ park DL-12-AA-9999 White
```
> Sorry, parking lot is full

```bash
$ registration_numbers_for_cars_with_colour White
```
> KA-01-HH-1234, KA-01-HH-9999, KA-01-P-333

```bash
$ slot_numbers_for_cars_with_colour White
```
> 1, 2, 4

```bash
$ slot_number_for_registration_number KA-01-HH-3141
```
> 6

```bash
$ slot_number_for_registration_number MH-04-AY-1111
```
> Not found

```bash
$ exit
```
