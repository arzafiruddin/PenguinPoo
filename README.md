# PenguinPoo

## Description
Determines possible trajectories and abdominal pressure required by a penguin to defecate a specified distance from a specified height.

## Methods
The trajectories are calculated based on two different scenario; a fixed launch angle and a fixed launch velocity. For simplicity, the excerement was assumed to be contained in a single sphere (instead of the toothpaste-like squirt often observed in natural penguin defecation behavior) as to simplify the kinematics involved.

### Fixed Launch Angle
For the fixed launch angle (<img src="https://latex.codecogs.com/svg.image?\theta_{0}&space;" title="\theta_{0} " />), the horizontal distance travelled (range) is calculated as a function of the launch velocity magnitude ranging from 0 to 3 m/s. This curve of this function is plotted with a horizontal line at the target distance (as seen in *PART A*). The intercept of the horizontal line and the curve are calculated based on the minimum difference between the point of the both lines. The intercept is the required initial velocity (<img src="https://latex.codecogs.com/svg.image?v_{0}" title="v_{0}" />) to hit the target distance from the specified height (<img src="https://latex.codecogs.com/svg.image?h" title="h" />), which is printed to the MATLAB Command Window along with the specified <img src="https://latex.codecogs.com/svg.image?\theta_{0}&space;" title="\theta_{0} " /> (as seen in the *Command Window* under *PART A*). The launch trajectory was then calculated and plotted using the following kinematic equations for both the <img src="https://latex.codecogs.com/svg.image?x(t)" title="x(t)" /> and <img src="https://latex.codecogs.com/svg.image?y(t)" title="y(t)" /> components (assuming <img src="https://latex.codecogs.com/svg.image?g" title="g" /> = -9.81 m/s^2):

> <img src="https://latex.codecogs.com/svg.image?v_{0y}&space;=&space;v_{0}\cdot&space;sin(\theta&space;_{0})&space;\rightarrow&space;&space;y(t)&space;=&space;h&space;&plus;&space;v_{0y}\cdot&space;t&space;&plus;&space;\frac{1}{2}\cdot&space;g\cdot&space;t^{2}" title="v_{0y} = v_{0}\cdot sin(\Theta _{0}) \rightarrow y(t) = h + v_{0y}\cdot t + \frac{1}{2}\cdot g\cdot t^{2}" />

> <img src="https://latex.codecogs.com/svg.image?v_{0x}&space;=&space;v_{0}\cdot&space;cos(\theta&space;_{0})&space;\rightarrow&space;&space;x(t)&space;=&space;v_{0x}\cdot&space;t" title="v_{0x} = v_{0}\cdot cos(\Theta _{0}) \rightarrow x(t) = v_{0x}\cdot t" />

---

<img src="https://github.com/arzafiruddin/PenguinPoo/blob/8673964bf02aa7d67ccfbe8ce5e02fd1c79d40c2/readme_assets/h_gif.gif">

<img src="https://github.com/arzafiruddin/PenguinPoo/blob/8673964bf02aa7d67ccfbe8ce5e02fd1c79d40c2/readme_assets/d_gif.gif">
