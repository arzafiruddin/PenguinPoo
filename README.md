# PenguinPoo

## Description
Determines possible trajectories and abdominal pressure required by a penguin to defecate a specified distance from a specified height.

## Methods
The trajectories are calculated based on two different scenario; a fixed launch angle and a fixed launch velocity. The excerement was assumed to be contained in a single sphere (instead of the toothpaste-like squirt often observed in natural penguin defecation behavior) as to simplify the kinematics involved.

### Fixed Launch Angle
For the fixed launch angle (<img src="https://latex.codecogs.com/svg.image?\theta_{0}&space;" title="\theta_{0} " />), the horizontal distance travelled (range) is calculated as a function of the launch velocity magnitude ranging from 0 to 3 m/s. The curve of this function is plotted with a horizontal line at the target distance (as seen in *PART A*). The intercept of the horizontal line and the curve are calculated based on the minimum difference between the point of the both lines. The intercept is the required initial velocity (<img src="https://latex.codecogs.com/svg.image?v_{0}" title="v_{0}" />) to hit the target distance from the specified height (<img src="https://latex.codecogs.com/svg.image?h" title="h" />), which is printed to the MATLAB Command Window along with the specified <img src="https://latex.codecogs.com/svg.image?\theta_{0}&space;" title="\theta_{0} " /> (as seen in the *Command Window* under *PART A*). The launch trajectory was then calculated and plotted (*PART C*) using the following kinematic equations for both the <img src="https://latex.codecogs.com/svg.image?x(t)" title="x(t)" /> and <img src="https://latex.codecogs.com/svg.image?y(t)" title="y(t)" /> components (assuming <img src="https://latex.codecogs.com/svg.image?g" title="g" /> = -9.81 m/s^2):

> <img src="https://latex.codecogs.com/svg.image?v_{0y}&space;=&space;v_{0}\cdot&space;sin(\theta&space;_{0})&space;\rightarrow&space;&space;y(t)&space;=&space;h&space;&plus;&space;v_{0y}\cdot&space;t&space;&plus;&space;\frac{1}{2}\cdot&space;g\cdot&space;t^{2}" title="v_{0y} = v_{0}\cdot sin(\Theta _{0}) \rightarrow y(t) = h + v_{0y}\cdot t + \frac{1}{2}\cdot g\cdot t^{2}" />

> <img src="https://latex.codecogs.com/svg.image?v_{0x}&space;=&space;v_{0}\cdot&space;cos(\theta&space;_{0})&space;\rightarrow&space;&space;x(t)&space;=&space;v_{0x}\cdot&space;t" title="v_{0x} = v_{0}\cdot cos(\Theta _{0}) \rightarrow x(t) = v_{0x}\cdot t" />

### Fixed Launch Velocity
For the fixed launch velocity (<img src="https://latex.codecogs.com/svg.image?v_{0}" title="v_{0}" />), the horizontal distance travelled (range) is calculated as a function of the launch angle ranging from -90 to 90 degrees. The curve of this function is plotted with a horizontal line at the target distance (as seen in *PART B*). The intercepts of the horizontal line and the curve are calculated based on the minimum difference between the points of both lines. The intercepts are the two possible angles required to hit the target distance from the specified height (<img src="https://latex.codecogs.com/svg.image?h" title="h" />), which are printed to the MATLAB Command Window along with the specified <img src="https://latex.codecogs.com/svg.image?v_{0}" title="v_{0}" /> (as seen in the *Command Window* under *PART B*). The launch trajectories were then calculated and plotted (*PART C*) using the previously mentioned kinematic equations.

### Abdominal Pressures

The required abdominal pressures of the penguins for the scenarios were calculated using methods discussed in Section V of the article "Projectile Trajectory of Penguin's Faeces and Rectal Pressure Revisited" by Hiroyuki Tajima and Fumiya Fujisawa. The article describes abdominal pressure in terms of kinematics and the following values:

> <img src="https://latex.codecogs.com/svg.image?C" title="C" /> = 0.611 (typical coefficient of contraction for penguins)

> <img src="https://latex.codecogs.com/svg.image?\rho&space;" title="\rho " /> = 1141 kg/m^3 (mass density of penguin feces)

> <img src="https://latex.codecogs.com/svg.image?r" title="r" /> = 0.004 m (average radius of penguin sphincter)

> <img src="https://latex.codecogs.com/svg.image?R" title="R" /> = 0.1 m (assumed radius of penguin stomach)

Based on the terms provided, Bernoulli's theorem for non-viscous feces liquids can be used to determine the required abdominal pressure (<img src="https://latex.codecogs.com/svg.image?P_{a}" title="P_{a}" />) with the following equation:

> <img src="https://latex.codecogs.com/svg.image?P_{a}&space;=&space;\frac{1}{2}\rho&space;v_{0}^{2}&space;-&space;\frac{\rho&space;g}{\pi&space;R^{2}}V" title="P_{a} = \frac{1}{2}\rho v_{0}^{2} - \frac{\rho g}{\pi R^{2}}V" />

In the previous equation, <img src="https://latex.codecogs.com/svg.image?V" title="V" /> is the fluid volume after ejection and can be described by the following (where <img src="https://latex.codecogs.com/svg.image?T" title="T" /> is the time of flight):

> <img src="https://latex.codecogs.com/svg.image?V&space;=&space;\frac{C\pi&space;r^{2}}{2g}&space;\cdot&space;&space;\left&space;[v_{0y}\cdot&space;v_{0}&space;-&space;(v_{0y}&space;-&space;gT)\sqrt{(gT&space;-&space;_{v0y})^{2}&plus;v_{0x}^{2}}&space;-&space;v_{0x}^{2}\cdot&space;ln\left&space;(&space;&space;\frac{\sqrt{gT&space;-&space;v_{0y}^{2}&space;&plus;&space;v_{0x}^{2}}&space;-&space;gT&space;&plus;&space;v_{0y}}{v_{0}&space;&plus;&space;v_{0y}}\right&space;)&space;&space;&space;\right&space;]" title="V = \frac{C\pi r^{2}}{2g} \cdot \left [v_{0y}\cdot v_{0} - (v_{0y} - gT)\sqrt{(gT - _{v0y})^{2}+v_{0x}^{2}} - v_{0x}^{2}\cdot ln\left ( \frac{\sqrt{gT - v_{0y}^{2} + v_{0x}^{2}} - gT + v_{0y}}{v_{0} + v_{0y}}\right ) \right ]" />

---

<img src="https://github.com/arzafiruddin/PenguinPoo/blob/8673964bf02aa7d67ccfbe8ce5e02fd1c79d40c2/readme_assets/h_gif.gif">

<img src="https://github.com/arzafiruddin/PenguinPoo/blob/8673964bf02aa7d67ccfbe8ce5e02fd1c79d40c2/readme_assets/d_gif.gif">
