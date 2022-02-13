#!/usr/bin/env perl6
# 
# physics_measure_synopsis.raku            13 Feb 2022 

use v6;

use lib '../lib';
use Physics::Measure :ALL;

# Basic mechanics example (SI units)...

# Define a distance and a time
my \d = 42m;                say ~d;     #42 m      (Length)
my \t = 10s;                say ~t;     #10 s      (Time)

# Calculate speed and acceleration
my \u = d / t;              say ~u;     #4.2 m/s   (Speed)
my \a = u / t;              say ~a;     #0.42 m/s^2 (Acceleration)

# Define mass and calculate force
my \m = 25kg;               say ~m;     #25 kg     (Mass)
my \f = m * a;              say ~f;     #10.5 N    (Force)

# Calculate final speed and distance travelled
my \v = u + a*t;            say ~v;     #8.4 m/s   (Speed)
my \s = u*t + (1/2) * a * t*t;  say ~s; #63 m      (Length)

# Calculate potential energy 
my \pe = f * s;             say ~pe;    #661.5 J   (Energy)

# Calculate kinetic energy
my \ke1 = (1/2) * m * u*u;
my \ke2 = (1/2) * m * v*v;

# Calculate the delta in kinetic energy
my \Δke = ke2 - ke1;

# Compare potential vs. delta kinetic energy
(pe cmp Δke).say;                      #Same




