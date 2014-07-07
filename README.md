# Password Strength

This small javascript class helps you determine the strength of a password string.

## Getting started

First you need to compile the `passwordStrength.coffee` into javascript. I'ts important that you compile it with the `--bare`.

## Usage

Include the compiled `passwordStrength.js` in you HTML.

    var strength = new PasswordStrength();
    var score = strength.getScore('string');

The class returns a score from 0-100, where 100 is the best.

By default the strength scorer will look for at least:

* 1 lowercase letter
* 1 uppercase letter
* 1 number
* 1 special character
* a length of 8

In order to score a 100.

You can modify these paramaters by providing a object to the PasswordStrength instantiation.

    var strength = new PasswordStrength({
        lowercase: 3,
        uppercase: 3,
        numbers: 3,
        special: 2,
        length: 10
    });

## License
This repository is licensed under the MIT license, which means that you can do pretty much anything you wanna do with it. Please see the `LICENSE` file for more information.

## Author
This repository is created by Thomas Kjaergaard (2014).

## Constribution
Constribution is most welcome, fork that shit and drop a PR :)