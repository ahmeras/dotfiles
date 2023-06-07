#!/bin/bash
MODE=$1

if [  $1 ==  "swap" ]; then

    i3 mark mswap
    i3 swap container with mark main;
    i3 [con_mark="main"] focus
    i3 mark swapped
    i3 [con_mark="mswap"] focus
    i3 mark main
elif [ $1 == "paws" ]; then
    i3 [con_mark="main"] focus
    i3 swap container with mark swapped
    i3 [con_mark="swapped"] focus
    i3 mark temporary
    i3 [con_mark="main"] focus
    i3 mark swapped
    i3 [con_mark="temporary"] focus
    i3 mark main
fi
