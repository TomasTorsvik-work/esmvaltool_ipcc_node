# List of working recipes in esmvaltool_ipcc_node repository

standard_recipes_2.1.1/
-----------------------

* Work with standard run flags

```
$ esmvaltool run --config_file=./config-ipcc_node.yml <recipe_file>

examples/
  examples/recipe_python.yml
  
ocean recipes:
  recipe_arctic_ocean.yml
  recipe_ocean_amoc.yml
  recipe_ocean_bgc.yml
  recipe_ocean_example.yml
  recipe_ocean_ice_extent.yml
  recipe_ocean_Landschuetzer2016.yml
  recipe_ocean_multimap.yml
  recipe_ocean_quadmap.yml
  recipe_ocean_scalar_fields.yml
```

* Work when skipping some data sets

```
$ esmvaltool run --skip_nonexistent=True --config_file=./config-ipcc_node.yml <recipe_file>

<None at the moment>
```

* Not working, even when skipping some data sets

```
recipe_lauer13jclim.yml
recipe_perfmetrics_CMIP5.yml
recipe_perfmetrics_CMIP5_4cds.yml
recipe_perfmetrics_land_CMIP5.yml
recipe_smpi.yml
recipe_smpi_4cds.yml
```

standard_recipes/
-----------------
```
examples/recipe_python.yml:
  project: CMIP5, mip: Amon, exp: historical, ensemble: r1i1p1
  dataset: CanESM2, MPI-ESM-LR
recipe_ocean_example.yml:
  project: CMIP5, mip: Omon, exp: historical, ensemble: r1i1p1
  dataset: HadGEM2-CC, HadGEM2-ES
recipe_ocean_Landschuetzer2016.yml:
  project: CMIP5, mip: Omon, exp: historical, ensemble: r1i1p1
  dataset: CanESM2
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
