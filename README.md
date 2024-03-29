# Working with ESMValTool on the Nird-IPCC node

2022-09-13 : Current installed version of ESMValTool : 2.5.0 and 2.6.0

2020-06-26 : Current installed version of ESMValTool : 2.0.0b4

- Documentation for [running ESMValTool on the ``ipcc.nird.sigma2.no`` node](https://noresm-docs.readthedocs.io/en/noresm2/diagnostics/esmvaltool.html#run-esmvaltool-on-nird-service-node)
- Discussion group on [ESMValTool for Nird users](https://github.com/orgs/NorESMhub/teams/esmvaltool-on-nird)
- [ESMValTool on gitHub](https://github.com/ESMValGroup/ESMValTool)
- [ESMValTool documentation](https://docs.esmvaltool.org/en/latest/?badge=latest)
- List of [working recipes in this repository](https://github.com/TomasTorsvik-work/esmvaltool_ipcc_node/blob/master/recipes_list.md)

Run ESMValTool on NIRD service node
===================================

The ESMValTool is currently installed under the dedicated IPCC service node (``ipcc.nird.sigma2.no``) for data post-processing. The following NIRD project areas are mounted under ``/projects`` of the ``IPCC`` node: NS2345K, NS2980K, NS9034K, NS9039K, NS9252K, NS9560K, NS9588K.

Activate and run ESMValTool
---------------------------

An example of steps to run the ESMValTool on ipcc.nird.sigma2.no

1. login in the ipcc node
```bash
ssh -l username ipcc.nird.sigma2.no
```
2. Execute
```bash
source /conda/miniconda3/etc/profile.d/conda.sh
```
(or add to your `.bashrc` file, for example, if you are using bash SHELL)
```bash
if [ $(hostname -f |grep 'nird.ipcc') ] && [ -f /conda/miniconda3/etc/profile.d/conda.sh ]; then
    . /conda/miniconda3/etc/profile.d/conda.sh
fi
```
3. load ESMValTool on nird
```bash
conda activate /conda/esmvaltool/2.x.x
```
4. copy the following config file and recipe to your favourite place
```bash
 /projects/NS9252K/share/tomast/esmvaltool_ipcc_node/config-ipcc_node.yml
 /projects/NS9252K/share/tomast/esmvaltool_ipcc_node/NorESM-CMIP5_recipes/standard_recipes/examples/recipe_python.yml
```
5. run `esmvaltool`
```bash
esmvaltool run --config_file=config-ipcc_node.yml ./recipe_python.yml
```

**All are encouraged to share your successfully configured recipes under `/projects/NS9252K/share` !!**


Run ESMValTool for NorCPM1 and NorESM1-F datasets
-------------------------------------------------

ESMValTool includes configuration settings for most CMIP5 and CMIP6 datasets, but this does not include the ``NorCMP1`` and ``NorESM1-F`` datasets. These datasets can be loaded almost like any other CMIP6 dataset, but it is necessary to specify an ``institute`` key. This can be done in one of two ways:

1. Add the ``institute`` key into every dataset specification for ``NorCPM1`` and ``NorESM1-F``
```bash
  - {dataset: NorCPM1, project: CMIP6, exp: historical, ensemble: r1i1p1f1, grid: gn, institute: NCC}
```

2. Modify the ``config-developer.yml`` file to include the ``institute`` setting for ``NorCPM1`` and ``NorESM1-F``. This has been done in the file ``config-developer-NorESM.yml``. It is then necessary to specify that a customized developer config file is used, which has been done in ``config-ipcc_node-NorESM.yml``.

Method (1) is recommended if you only use a few ``NorCPM1`` or ``NorESM1-F`` datasets, since this will make the recipe self-contained (not dependent on a customized developer file) and easy to share with others. If you work extensively on ``NorCPM1`` or ``NorESM1-F`` datasets, you may consider using method (2) with a customized developer config file.
