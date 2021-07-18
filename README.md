# PenguinPoo

## Description
Determines possible trajectories and abdominal pressure required by a penguin to defecate a specified distance from a specified height.

## Methods
The trajectories are calculated based on two different scenario; a fixed launch angle and a fixed launch velocity. For simplicity, the excerement was assumed to be contained in a single sphere (instead of the toothpaste-like squirt often observed in natural penguin defecation behavior) as to simplify the kinematics involved.

### Fixed Launch Angle
For the fixed launch angle, the horizontal distance travelled (range) is calculated as a function of the launch velocity magnitude ranging from 0 to 3 m/s. This curve of this function is plotted with a horizontal line at the target distance (as seen in *PART A*). The intercept of the horizontal line and the curve are calculated based on the minimum difference between the point of the both lines. The intercept is the required initial velocity to hit the target distance from the specified height, which is printed to the MATLAB Command Window along with the specified fixed launch angle (as seen in the *Command Window* under *PART A*). The launch trajectory was then calculated and plotted using the following kinematic equations for both the x and y direction (  ):

> <img src="https://latex.codecogs.com/svg.image?y(t)&space;=&space;h&space;&plus;&space;v_{0y}(t)&space;&plus;&space;\frac{1}{2}(g)(t)^{2}" title="y(t) = h + v_{0y}(t) + \frac{1}{2}(g)(t)^{2}" />

> <img src="https://latex.codecogs.com/svg.image?x(t)&space;=&space;v_{0x}(t)" title="x(t) = v_{0x}(t)" />

---

<img src="https://github.com/arzafiruddin/PenguinPoo/blob/8673964bf02aa7d67ccfbe8ce5e02fd1c79d40c2/readme_assets/h_gif.gif">

<img src="https://github.com/arzafiruddin/PenguinPoo/blob/8673964bf02aa7d67ccfbe8ce5e02fd1c79d40c2/readme_assets/d_gif.gif">
