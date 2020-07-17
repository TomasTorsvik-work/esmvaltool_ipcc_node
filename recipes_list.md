# List of working recipes in esmvaltool_ipcc_node repository

standard_recipes/
-----------------
```
recipe_ocean_example.yml:
  project: CMIP5, mip: Omon, exp: historical, ensemble: r1i1p1
  dataset: HadGEM2-CC, HadGEM2-ES
recipe_ocean_Landschuetzer2016.yml:
  project: CMIP5, mip: Omon, exp: historical, ensemble: r1i1p1
  dataset: CanESM2
```

standard_recipes/examples/
--------------------------
```
recipe_python.yml:
  project: CMIP5, mip: Amon, exp: historical, ensemble: r1i1p1
  dataset: CanESM2, MPI-ESM-LR
```

NorESM-CMIP5_recipes/standard_recipes/
--------------------------------------

NorESM-CMIP5_recipes/standard_recipes/examples/
-----------------------------------------------
```
recipe_python.yml:
  project: CMIP5, mip: Amon, exp: historical, ensemble: r1i1p1
  dataset: NorESM1-M, NorESM1-ME
recipe_r.yml:
  project: CMIP5, mip: day, exp: historical, ensemble: r1i1p1
  dataset: NorESM1-M
```

NorESM-CMIP6_recipes/standard_recipes/
--------------------------------------

NorESM-CMIP6_recipes/standard_recipes/examples/
-----------------------------------------------
```
recipe_python.yml:
  project: CMIP6, mip: Amon, exp: historical, ensemble: r1i1p1f1, grid: gn
  dataset: NorCPM1, NorESM2-LM, NorESM2-MM
recipe_r.yml:
  project: CMIP6, mip: day, exp: historical, ensemble: r1i1p1f1, grid: gn
  dataset: NorESM2-LM
```
