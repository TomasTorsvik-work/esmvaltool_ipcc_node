# Setup for woking with ESMValTool on the Nird-IPCC node

2020-06-26 : Current installed version of ESMValTool : 2.0.0b4

- Documentation for [running ESMValTool on the ``ipcc.nird.sigma2.no`` node](https://noresm-docs.readthedocs.io/en/noresm2/diagnostics/esmvaltool.html#run-esmvaltool-on-nird-service-node)
- Discussion group on [ESMValTool for Nird users](https://github.com/orgs/NorESMhub/teams/esmvaltool-on-nird)
- [ESMValTool on gitHub](https://github.com/ESMValGroup/ESMValTool)
- [ESMValTool documentation](https://docs.esmvaltool.org/en/latest/?badge=latest)

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
conda activate /conda/esmvaltool/2.0.0b4
```
Note, use the updated /conda/esmvaltool/2.x.xbx version

4. copy the following config file and recipe to your favourite place
```bash
 /projects/NS9252K/share/tomast/esmvaltool_ipcc_node/config-ipcc_node.yml
 /projects/NS9252K/share/tomast/esmvaltool_ipcc_node/NorESM-CMIP5_recipes/standard_recipes/examples/recipe_python.yml
```
5. run `esmvaltool`
```bash
esmvaltool -c config-ipcc_node.yml ./recipe_python.yml
```

**All are encouraged to share your successfully configured recipes under `/projects/NS9252K/share` !!**
