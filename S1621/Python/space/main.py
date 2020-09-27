#!/usr/bin/env python
import pygame as pg
import os
import random
import time
from data import config as c

# ASSETS #
RED_SPACE_SHIP = pg.image.load(os.path.join("assets", "pixel_ship_red_small.png"))
GREEN_SPACE_SHIP = pg.image.load(os.path.join("assets", "pixel_ship_green_small.png"))
BLUE_SPACE_SHIP = pg.image.load(os.path.join("assets", "pixel_ship_blue_small.png"))

RED_LASER = pg.image.load(os.path.join("assets", "pixel_laser_red.png"))
GREEN_LASER = pg.image.load(os.path.join("assets", "pixel_laser_green.png"))
BLUE_LASER = pg.image.load(os.path.join("assets", "pixel_laser_blue.png"))

# MAIN SHIP #
YELLOW_SPACE_SHIP = pg.image.load(os.path.join("assets", "pixel_ship_yellow.png"))

# BACKGROUND #
BG = pg.transform.scale(pg.image.load(os.path.join("assets", "background-black.png")), (c.WIDTH,c.HEIGHT))

WIN = pg.display.set_mode((c.WIDTH,c.HEIGHT))
pg.display.set_caption("Space Shooter")

class Ship:
  def __init__(self, x, y, health=100):
    self.x = x
    self.y = y
    self.health = health
    self.ship_img = None
    self.lasers_img = None
    self.lasers = []
    self.cool_down_counter = 0

  def draw(self, window):
    pg.draw.rect(window, (255,0,0), (self.x, self.y, 50, 50), 0)

def main():
  ship = Ship(300,300)

  def redraw_window():
    WIN.blit(BG, (0,0))
    # draw text
    lives_label = c.main_font.render(f"Lives: {c.lives}", 1, (255,255,255))
    level_label = c.main_font.render(f"Level: {c.level}", 1, (255,255,255))

    WIN.blit(lives_label, (10, 10))
    WIN.blit(level_label, (c.WIDTH - level_label.get_width() - 10,10))

    ship.draw(WIN)
    pg.display.update()

  while c.RUN:
    c.clock.tick(c.FPS)
    redraw_window()

    for event in pg.event.get():
      if event.type == pg.QUIT:
        c.RUN = False
    keys = pg.key.get_pressed()

    if keys[pg.K_a] and ship - player_vel > 0: # left
      ship.x -= c.player_vel
    if keys[pg.K_d] and ship + player_vel < c.WIDTH: # right
      ship.x += c.player_vel
    if keys[pg.K_w] and ship - player_vel > 0: # up 
      ship.y -= c.player_vel
    if keys[pg.K_s] and ship.y + player_vel < c.HEIGHT: # down 
      ship.y += c.player_vel

main()
