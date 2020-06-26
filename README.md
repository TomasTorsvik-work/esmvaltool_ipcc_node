# Setup for woking with ESMValTool on the Nird-IPCC node

2020-06-26 : Current installed version of ESMValTool : 2.0.0b4

- Documentation for [running ESMValTool on the ``ipcc.nird.sigma2.no`` node](https://noresm-docs.readthedocs.io/en/noresm2/diagnostics/esmvaltool.html#run-esmvaltool-on-nird-service-node)
- Discussion group on [ESMValTool for Nird users](https://github.com/orgs/NorESMhub/teams/esmvaltool-on-nird)
- [ESMValTool on gitHub](https://github.com/ESMValGroup/ESMValTool)
- [ESMValTool documentation](https://docs.esmvaltool.org/en/latest/?badge=latest)

Run ESMValTool on NIRD service node
===================================

The ESMValTool is currently installed under the dedicated IPCC service node (``ipcc.nird.sigma2.no``) for data post-processing. The following NIRD project areas are mounted under ``/projects`` of the ``IPCC`` node: NS2345K, NS9034K, NS9039K, NS9252K, NS9560K, NS9588K.

Activate and run ESMValTool
---------------------------

An example of steps to run the ESMValTool on ipcc.nird.sigma2.no

1. login in the ipcc node:

>  ssh -l username ipcc.nird.sigma2.no

2. load ESMValTool on nird:

>  conda active /conda/esmvaltool/2.0.0b4/

(note, the esmvaltool may be upgraded in the future. Therefore, use ``ls /conda/esmvaltool/`` to check the currently installed vesion if 2.0.0b4 does not exist.)

3. copy the following config file and recipe to your favourite place: 

>  /projects/NS9252K/share/tomast/esmvaltool_ipcc_node/config-ipcc_node.yml    \
>  /projects/NS9252K/share/tomast/esmvaltool_ipcc_node/standard_recipes/recipe_ocean_example.yml
    
You should copy and modify the config_heyc.yml file to store some intermediate data files and final plots to your own directory.

4. run ``esmvaltool``:

>  esmvaltool -c config-ipcc_node.yml ./recipe_ocean_example.yml

