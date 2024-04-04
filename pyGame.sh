"""basic pygame set up"""

if [ "$#" -gt 0 ]; then
    filename="$1"
else
    filename="main.py"
fi
cat <<EOF >> "$filename"
import pygame

class Game():
    def __init__(self, width=800, height=600):
        self.winow = pygame.display.set_mode((width, height))
        self.pygame.init()
        self.clock = pygame.clock()
        self.FPS = 60
        self.bgcolor = 'black'
        self.pixel_x = 0
        self.pixel_y = 0

    def display(self):
        self.window.fill(self.bgcolor)

        pygame.display.update()

    def draw_board(self):
        for i, row in enumerate(self.board):
            for j, col in enumerate(row):
                pygame.draw.rect(self.window, (0,0,0), pygame.Rect(self.pixel_x * j, self.pixel_y * i, self.pixel_x, self.pixel_y))

    def controls(self):
        keys = pygame.key.get_pressed()
        if keys [pygame.K_w]:
            pass

    def run_game(self):
        running = True
        while running:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    pygame.quit()

            self.clock.tick(self.FPS)
EOF
open -a "Visual Studio Code" "$filename"
