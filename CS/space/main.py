#!/usr/bin/env python
import pygame as pg
import os
import random
import time
pg.font.init()

WIDTH, HEIGHT = 956,1072
# ASSETS #
RED_SPACE_SHIP = pg.image.load(os.path.join("assets", "pixel_ship_red_small.png"))
GREEN_SPACE_SHIP = pg.image.load(os.path.join("assets", "pixel_ship_green_small.png"))
BLUE_SPACE_SHIP = pg.image.load(os.path.join("assets", "pixel_ship_blue_small.png"))

RED_LASER = pg.image.load(os.path.join("assets", "pixel_laser_red.png"))
GREEN_LASER = pg.image.load(os.path.join("assets", "pixel_laser_green.png"))
BLUE_LASER = pg.image.load(os.path.join("assets", "pixel_laser_blue.png"))
YELLOW_LASER = pg.image.load(os.path.join("assets", "pixel_laser_yellow.png"))

# MAIN SHIP #
YELLOW_SPACE_SHIP = pg.image.load(os.path.join("assets", "pixel_ship_yellow.png"))

# BACKGROUND #
BG = pg.transform.scale(pg.image.load(os.path.join("assets", "background-black.png")), (WIDTH,HEIGHT))

WIN = pg.display.set_mode((WIDTH,HEIGHT))
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
    window.blit(self.ship_img, (self.x, self.y))
  def get_width(self):
    return self.ship_img.get_width()
  def get_height(self):
    return self.ship_img.get_height()

class Player(Ship):
  def __init__(self, x, y, health=100):
    super().__init__(x, y, health)
    self.ship_img = YELLOW_SPACE_SHIP
    self.laser_img =YELLOW_LASER
    self.mask = pg.mask.from_surface(self.ship_img)
    self.max_health = health

class Enemy(Ship):
  COLOR_MAP = {
    "red": (RED_SPACE_SHIP, RED_LASER),
    "green": (GREEN_SPACE_SHIP, GREEN_LASER),
    "blue": (BLUE_SPACE_SHIP, BLUE_LASER)
  }
  def __init__(self, x, y, color, health=100):
    super().__init__(x, y, health)
    self.ship_img, self.laser_img = self.COLOR_MAP[color]
    self.mask = pg.mask.from_surface(self.ship_img)

  def move(self, vel):
    self.y += vel

def main():
  player = Player(300,300)

# MAIN #
  RUN = True
  FPS = 120
  clock = pg.time.Clock()
  player_vel = 10
  score = 0
  level = 0
  lives = 5
  enemies = []
  enemy_vel = 3
  wave_length = 5
  main_font = pg.font.SysFont("mononoki", 25)

  def redraw_window():
    WIN.blit(BG, (0,0))
    # draw text
    lives_label = main_font.render(f"Lives: {lives}", 1, (255,255,255))
    level_label = main_font.render(f"Level: {level}", 1, (255,255,255))

    WIN.blit(lives_label, (10, 10))
    WIN.blit(level_label, (WIDTH - level_label.get_width() - 10,10))

    for enemy in enemies:
      enemy.draw(WIN)

    player.draw(WIN)

    pg.display.update()

  while RUN:
    clock.tick(FPS)

    if len(enemies) == 0:
      level += 1
      wave_length += 3
      for i in range(wave_length):
        enemy = Enemy(random.randrange(50, WIDTH-100), random.randrange(-1500, -100), random.choice(["red","green","blue"]))
        enemies.append(enemy)

    for event in pg.event.get():
      if event.type == pg.QUIT:
        RUN = False
    keys = pg.key.get_pressed()

    if keys[pg.K_a] and player.x - player_vel > 0: # left
      player.x -= player_vel
    elif keys[pg.K_d] and player.x + player_vel + player.get_width() < WIDTH: # right
      player.x += player_vel

    if keys[pg.K_w] and player.y - player_vel > 0: # up 
      player.y -= player_vel
    elif keys[pg.K_s] and player.y + player_vel + player.get_width() < HEIGHT: # down 
      player.y += player_vel

    for enemy in enemies:
      enemy.move(enemy_vel)

    redraw_window()
main()
