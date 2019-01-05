#!/usr/bin/env bash

i3-msg 'workspace ctl;
        exec arandr;
        exec pavucontrol;
        workspace 2'
