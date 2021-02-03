# List of working recipes in esmvaltool_ipcc_node repository

standard_recipes_2.1.1
----------------------

* Work with standard run flags
esmvaltool run --config_file=./config-ipcc_node.yml <recipe_file>

```
examples/recipe_python.yml:
  dataset-CMIP5: CanESM2
  dataset-CMIP6: BCC-ESM1
recipe_ocean_example.yml:
  dataset-CMIP5: HadGEM2-CC, HadGEM2-ES
recipe_ocean_ice_extent.yml:
  dataset-CMIP5: HadGEM2-CC, HadGEM2-ES
recipe_ocean_Landschuetzer2016.yml:
  dataset-CMIP5: CanESM2
recipe_ocean_bgc.yml:
  dataset-CMIP5: HadGEM2-ES
```

* Work when skipping some data sets
esmvaltool run --skip_nonexistent=True --config_file=./config-ipcc_node.yml <recipe_file>

```
recipe_ocean_amoc.yml:
  dataset-CMIP5: 
recipe_ocean_multimap.yml:
  dataset-CMIP5: 
recipe_ocean_scalar_fields.yml:
  dataset-CMIP5: 
```

* Not working, even when skipping some data sets

```
recipe_ocean_quadmap.yml
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
