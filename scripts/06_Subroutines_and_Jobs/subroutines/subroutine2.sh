#!/bin/sh

mysub()
{
        return 4
}

l=10
mysub "This is an arg"
echo "Subroutine returned $?"
