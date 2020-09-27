import pygame as pg
import os

WIDTH, HEIGHT = 956,1072
pg.font.init()
# MAIN #
RUN = True
FPS = 120
clock = pg.time.Clock()
player_vel = 10
score = 0
level = 1
lives = 5
main_font = pg.font.SysFont("mononoki", 25)
