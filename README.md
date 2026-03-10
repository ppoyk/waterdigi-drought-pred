---
editor: source
format:
    html:
        link-external-icon: true
        link-external-newwindow: true
---

# Drought index assessment for groundwater drought prediction

**Author:** Pietari Pöykkö\
**Contact:**\
**Organization:** University of Oulu\
**Website:** TBD

## Project Overview
Groundwater (GW) droughts should be predicted in advance, as such conditions have important
financial and ecological consequences. The accurate prediction of GW conditions is difficult due
to sparse monitoring network and diverse local conditions. This reseach project aims to evaluate
the suitability and accuracy of widely available drought indices for GW drought prediction.
The drought indices are here calculated from readily available data. The time series of indices
are then correlated with natural-state GW levels to assess the prediction power (lead-times, accuracy).

Long-term drought trends in northern Europe are uncertain (Karlsson et al., 2014; Teutschbein et al., 2025),
more frequent and intense droughts are predicted by climate projections. Groundwater droughts
remain underexplored despite their importance for baseflow and water supply. In Finland, where
groundwater and surface water are closely linked, and groundwater constitutes almost half of the
water supply (Lai et al., 2018), an integrated approach to drought assessment is essential.

Schneider et al. (2025) use hydrological principles and drought indices to evaluate drought
propagation in a hydrological model. Gao et al. (2016) investigated droughts affecting forest
health with a related method using drought indices. A similar approach is used here to evaluate
the accuracy, validity, and lead-time of drought indices to enhance the predictions of groundwater conditions.

#### Research questions:
-   Which drought index has the best prediction power on GW drought (in the subarctic Finland)?
-   How far into the future can the indices predict GW levels?
-   Does the latitude, soil, or the season affect index performance?

## Data Sources
The study area is Finland, with analyzed groundwater data extending from 1970s to 2025.

### Published Data Sources
<!-- edit with https://www.tablesgenerator.com/text_tables -->
+---------------+--------------------+---------------------+----------+------------------------------------------------------------------------------------------------------------+-----------------------------------------------+-----------------------------------+
| Name          | Source             | Description         | Access   | URLs                                                                                                       | Details                                       | Citation                          |
+===============+====================+=====================+==========+============================================================================================================+===============================================+===================================+
| GW level      | [Finnish           | Manual measure\     | Download | [Through Hertta portal](                                                                                   | ...                                           | Finnish Environment               |
|               | Environment        | ments of GW level   |          | http://syke.fi/en/environmental-data/maps-and-information-services/open-environmental-information-systems) |                                               | Institute, Economic               |
|               | Institute](        | from the national   |          | [Metadata](https://ckan.ymparisto.fi/dataset/pohjavesitietoaineisto-povet1))                               |                                               | Development Centres,              |
|               | https://syke.fi/en)| hydrological moni\  |          |                                                                                                            |                                               | 2025. Groundwater                 |
|               |                    | toring network      |          |                                                                                                            |                                               | dataset POVET.                    |
+---------------+--------------------+---------------------+----------+------------------------------------------------------------------------------------------------------------+-----------------------------------------------+-----------------------------------+
| GW areas\     | Finnish            | The geometries      | Download | Through Hertta portal                                                                                      | ...                                           | Finnish Environment               |
|               | Environment        | and descriptions    |          | [Metadata](https://ckan.ymparisto.fi/dataset/pohjavesialueet)                                              |                                               | Institute, 2026.                  |
|               | Institute          | of mapped,          |          |                                                                                                            |                                               | Groundwater areas.                |
|               |                    | anthropogenically   |          |                                                                                                            |                                               |                                   |
|               |                    | classified GW areas |          |                                                                                                            |                                               |                                   |
+---------------+--------------------+---------------------+----------+------------------------------------------------------------------------------------------------------------+-----------------------------------------------+-----------------------------------+
| SPI & SPEI\   | ECMWF Climate      | Monthly values for  | API      | [Dataset and metadata](https://doi.org/10.24381/9bea5e16)                                                  |                                               | Keune, J., Di Giuseppe, F.,       |
| monthly       | Data Store         | 1, 3, 6, 12, 24, 36,|          |                                                                                                            |                                               | Barnard, C. et al. ERA5–Drought:  |
| drought       |                    | 48 month accumula-\ |          |                                                                                                            |                                               | Global drought indices based on   |
| indices       |                    | tion periods.       |          |                                                                                                            |                                               | ECMWF reanalysis. Sci Data 12,    |
|               |                    | Global, gridded,    |          |                                                                                                            |                                               | 616 (2025).                       |
|               |                    | based on ERA5       |          |                                                                                                            |                                               | (10.1038/s41597-025-04896-y)      |
+---------------+--------------------+---------------------+----------+------------------------------------------------------------------------------------------------------------+-----------------------------------------------+-----------------------------------+
| Temperature\  | [Finnish           | Gridded dataset     | Download | [Download link](                                                                                           | ...                                           | ...                               |
| and\          | Meteorological     | of T & P            |          | https://avoindata.suomi.fi/data/fi/dataset/saahavaintojen-hilamuotoiset-kuukausiarvot)                     |                                               |                                   |
| precipitation | Institute](        | observations        |          | [Metadata](http://paikkatietohakemisto.fi/geonetwork/srv/api/records/b5ac0243-3da6-47ed-96b0-1867cdeda838) |                                               |                                   |
|               | https://fmi.fi/en) |                     |          |                                                                                                            |                                               |                                   |
+---------------+--------------------+---------------------+----------+------------------------------------------------------------------------------------------------------------+-----------------------------------------------+-----------------------------------+
| Tentative:\   | Climatic           | T & P global        | Download | [Download link](                                                                                           | v. 4.09                                       | Harris, I., Osborn, T.J.,         |
| Global T & P  | Research           | time series         |          | https://crudata.uea.ac.uk/cru/data/hrg/cru_ts_4.09)                                                        |                                               | Jones, P. et al.                  |
|               | Unit (Univ.        | for reference       |          | [Metadata DOI](https://doi.org/10.6084/m9.figshare.11980500)                                               |                                               | Version 4 of the CRU TS           |
|               | of East            |                     |          |                                                                                                            |                                               | monthly high-resolution           |
|               | Anglia)            |                     |          |                                                                                                            |                                               | gridded multivariate              |
|               | and NCAS           |                     |          |                                                                                                            |                                               | climate dataset.                  |
|               |                    |                     |          |                                                                                                            |                                               | Sci Data 7, 109 (2020).           |
|               |                    |                     |          |                                                                                                            |                                               | (10.1038/s41597-020-0453-3)       |
|               |                    |                     |          |                                                                                                            |                                               |                                   |
+---------------+--------------------+---------------------+----------+------------------------------------------------------------------------------------------------------------+-----------------------------------------------+-----------------------------------+
| Surface\      | [Geological        | Approximate         | Download | [Hakku link](https://hakku.gtk.fi/fi/locations?id=3)                                                       | [License](                                    | ...                               |
| geology\      | Survey of          | classification      |          | [Metadata](https://tupa.gtk.fi/paikkatieto/meta/maapera_200k.html)                                         | https://gtk.fi/avoinlisenssi)                 |                                   |
| (200k)        | Finland](          | of surficial        |          |                                                                                                            |                                               |                                   |
|               | https://gtk.fi/en) | soil deposits       |          |                                                                                                            |                                               |                                   |
+---------------+--------------------+---------------------+----------+------------------------------------------------------------------------------------------------------------+-----------------------------------------------+-----------------------------------+
| Surficial\    | Geological         | ...                 | Download | [Hakku link](https://hakku.gtk.fi/fi/locations?id=113)                                                     | [License](                                    | ...                               |
| deposit\      | Survey of          |                     |          | [Metadata](https://tupa.gtk.fi/paikkatieto/meta/maapeitepaksuus_1000k.html)                                | https://gtk.fi/avoinlisenssi)                 |                                   |
| thickness     | Finland            |                     |          |                                                                                                            |                                               |                                   |
+---------------+--------------------+---------------------+----------+------------------------------------------------------------------------------------------------------------+-----------------------------------------------+-----------------------------------+
| Self-\        | Climatic           | Monthly global      | Download | [UEA-CRU link](https://crudata.uea.ac.uk/cru/data/drought/#global)                                         | [License](                                    | van der Schrier G, Barichivich J, |
| calibrating\  | Research           | values of scPDSI    |          | Metadata in readme of the above, and in the NetCDF files                                                   | http://opendatacommons.org/licenses/odbl/1.0) | Briffa KR and Jones PD (2013)     |
| Palmer\       | Unit (Univ.        | derived from CRU-TS |          |                                                                                                            |                                               | A scPDSI-based global data set    |
| Drought\      | of East            | v4.09. 1901-2024    |          |                                                                                                            |                                               | of dry and wet spells for         |
| Severity\     | Anglia)            | and resolution of   |          |                                                                                                            |                                               | 1901-2009. J. Geophys. Res.       |
| Index\        |                    | 0.5°*0.5°           |          |                                                                                                            |                                               | Atmos. 118, 4025-4048             |
|               |                    |                     |          |                                                                                                            |                                               | (10.1002/jgrd.50355).             |
|               |                    |                     |          |                                                                                                            |                                               |                                   |
|               |                    |                     |          |                                                                                                            |                                               | Barichivich J, Osborn TJ,         |
|               |                    |                     |          |                                                                                                            |                                               | Harris I, van der Schrier G and   |
|               |                    |                     |          |                                                                                                            |                                               | Jones PD (2025) Monitoring        |
|               |                    |                     |          |                                                                                                            |                                               | global drought using the self-    |
|               |                    |                     |          |                                                                                                            |                                               | calibrating Palmer Drought        |
|               |                    |                     |          |                                                                                                            |                                               | Severity Index [in "State of      |
|               |                    |                     |          |                                                                                                            |                                               | the Climate in 2024"]. Bull.      |
|               |                    |                     |          |                                                                                                            |                                               | Amer. Meteor. Soc., 106, S77-S78  |
|               |                    |                     |          |                                                                                                            |                                               | (10.1175/BAMS-D-25-0102.1)        |
|               |                    |                     |          |                                                                                                            |                                               |                                   |
+---------------+--------------------+---------------------+----------+------------------------------------------------------------------------------------------------------------+-----------------------------------------------+-----------------------------------+


### Data Access Notes

[Hertta](https://syke.fi/en/environmental-data/maps-and-information-services/open-environmental-information-systems),
the open data portal of the [Finnish Environment Institute](https://syke.fi/en), requires the creation
of a free user account. The portal is mostly available in English. There is no one-button solution
to download either the GW observations or the GW area information.  
Hakku requires order details, such as email, for digital delivery of spatial data product downloads.  
The automated downloads through the European Centre for Medium-Range Weather Forecasts (ECMWF)
API requires an API key, obtained via creating a free account.
The script tries to ask for this automatically 

### Inputs folder

Any direct data download links are found in the `inputs/auto_datalinks.txt` file. This file contains the persistent digital identifier download links for datasets XXXXXX.\
The `inputs/manual/` folder contains the manually downloaded datasets. These include the datasets in the above table accessed via a download.

## Methods Summary

The GW source data will be quality controlled prior to analysis. Quality control steps have been outlined in Pöykkö et al. (2026).\
**Model Framework:** Describe steps involved in data preprocessing\
GW must most likely be aggregated to monthly values due to gaps and sparse measurement interval. If possible, all GW obs are used, and the higher resolution datasets will be sampled only from those days.\
**Rest TBD**

## Repository Structure

+--------------------------+--------------------------------------------------------------------------------------------------------------+
| Folder/File              | Description                                                                                                  |
+==========================+==============================================================================================================+
| `code/`                  | Separate files for analysis code                                                                             |
+--------------------------+--------------------------------------------------------------------------------------------------------------+
| `inputs/`                | Stores all input data required                                                                               |
+--------------------------+--------------------------------------------------------------------------------------------------------------+
| `inputs/manual/`         | Input data requiring a manual download. Contents not committed to repository.                                |
+--------------------------+--------------------------------------------------------------------------------------------------------------+
| `inputs/auto/`           | Stores automatically accessed datasets of `inputs/auto_datalinks.txt`. Contents not committed to repository. |
+--------------------------+--------------------------------------------------------------------------------------------------------------+
| `processed_data/`        | analysis-ready datasets                                                                                      |
+--------------------------+--------------------------------------------------------------------------------------------------------------+
| `model_data/`            | Saved model outputs, model configuration files, predictions                                                  |
+--------------------------+--------------------------------------------------------------------------------------------------------------+
| `figures/`               | Figures, tables, graphs, and data-derivatives (e.g. summary statistics) displayed in manuscript text         |
+--------------------------+--------------------------------------------------------------------------------------------------------------+
| `run_reproducibility.py` | Reproducibility wrapper                                                                                      |
+--------------------------+--------------------------------------------------------------------------------------------------------------+
| `Dockerfile`             | Reproducible container                                                                                       |
+--------------------------+--------------------------------------------------------------------------------------------------------------+
| `CITATION.cff`           | Citation metadata, sourced directly from Zenodo                                                              |
+--------------------------+--------------------------------------------------------------------------------------------------------------+

## How to Reproduce

Download all datasets with "Download" access in the above table. Place them directly into `inputs/manual/`.\
Run the `run_reproducibility.py`.

### Computational requirements

The code has been tested on:

-   Windows operating system
-   Intel Core Ultra 5 125H, 14 cores
-   32 Gb of RAM\
    Any sufficiently modern computer should manage to run the code. Linux or MacOS systems should also be compatable.

### Data access configurations

No special tokens to change.

### Run the code

``` bash
pip install -r requirements.txt
python run_reproducibility.py
```

## Results

Display key figures in `/figures` folder, with description: ![Example](figures/example.png)

## How to cite

Pöykkö, P., 2026. Drought index assessment for groundwater drought prediction. \[software\] https://doi.org/XXXXXXXXX\
DOI: **DOI_PENDING**

## License

## Contribution Guidelines

Contributions that improve the quality, clarity, and reproducibility of this project are welcome.

-   Open an issue before making major or result-affecting changes.
-   Keep pull requests focused and clearly describe what changed and why.
-   Follow existing code style and update documentation as needed.
-   Do not modify code or data used to reproduce published results without discussion.
-   Ensure workflows remain reproducible (environment, dependencies, random seeds).
-   Do not commit large or restricted datasets; respect data licenses. By contributing, you agree that your work will be released under the project’s license.

## References

-   Gao, Y., Markkanen, T., Thum, T., Aurela, M., Lohila, A., Mammarella, I., Kämäräinen, M., Hagemann, S., Aalto, T., 2016. Assessing various drought indicators in representing summer drought in boreal forests in Finland. Hydrol. Earth Syst. Sci. 20, 175–191. https://doi.org/10.5194/hess-20-175-2016
-   Lai, T.-Y., Salminen, J., Jäppinen, J.-P., Koljonen, S., Mononen, L., Nieminen, E., Vihervaara, P., Oinonen, S., 2018. Bridging the gap between ecosystem service indicators and ecosystem accounting in Finland. Ecological Modelling 377, 51–65. https://doi.org/10.1016/j.ecolmodel.2018.03.006
-   Karlsson, I.B., Sonnenborg, T.O., Jensen, K.H., Refsgaard, J.C., 2014. Historical trends in precipitation and stream discharge at the Skjern River catchment, Denmark. Hydrology and Earth System Sciences 18, 595–610. https://doi.org/10.5194/hess-18-595-2014
-   Pöykkö et al., 2026. TBD.
-   Schneider, R., Stisen, S., Hansen, M.F.T., Andreasen, M., Nilsson, B., Hinsby, K., Henriksen, H.J., Seidenfaden, I.K., 2025. Drought dynamics across the hydrological cycle – an extensive validation of the National Hydrological Model of Denmark. EGUsphere 1–53. https://doi.org/10.5194/egusphere-2025-5373
-   Teutschbein, C., Grabs, T., Giese, M., Todorović, A., Barthel, R., 2025. Drought propagation in high-latitude catchments: insights from a 60-year analysis using standardized indices. Natural Hazards and Earth System Sciences 25, 2541–2564. https://doi.org/10.5194/nhess-25-2541-2025
