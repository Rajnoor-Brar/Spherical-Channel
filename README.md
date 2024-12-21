# Ellipsoidal Channel
via two directrices corresponding to focii of elliptical cross-sections
 
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## About the Project
Ellipsoidal Channel provides a way to plot tubular or channel surface with elliptical/ellipsoidal characteristic if focal points and length of minor axis is given.
1. It takes "focal curves" to averages them to get central directrix, and subtracts one from from other to get focal length.
2. Assuming semi-minor axis length is given, it calculates semi-major axis length.
3. Calculates tangents to central axis.
4. Calculates set of points (X,Y,Z stored separately) for elliptical cross-sections perpendicular to central directrix corresponding to each point on it.
5. Plots

### Built With
- MATLAB 2018b

## Usage

1. Fork the repository, or download code files.

2. All necessary parameters should be available in command module to tweak.

3. Run the Channel.m file in Matlab, or execute following bash after opening the directory in cmd or powershell
    ```bash
    matlab -r "run('Channel.m')"
    