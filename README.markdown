# Cl-Unit

A unit conversion library.

## Usage

## Installation

    (asdf:load-system 'cl-unit)
    
## Testing

    (require :sb-cover)
    (declaim (optimize sb-cover:store-coverage-data))
    (asdf:oos 'asdf:load-op :cl-unit :force t)
    (asdf:test-system 'cl-unit)
    (sb-cover:report “coverage/“)
