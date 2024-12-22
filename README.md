# Ellipsoidal Channel
via given directrix and radii
 
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## About the Project
Spherical Channel provides a way to plot tubular or channel surface with circular/spherical characteristic if directrix and radii are given.
1. Extracts data
2. Calculates tangents to central axis.
3. Calculates set of points (X,Y,Z stored separately) for circular cross-sections perpendicular to central directrix corresponding to each point on it.
4. Plots

### Built With
- MATLAB 2018b

## Usage

1. Fork the repository, or download code files.

2. All necessary parameters should be available in command module to tweak.

3. Run the Channel.m file in Matlab, or execute following bash after opening the directory in cmd or powershell
    ```bash
    matlab -r "run('Channel.m')"
    