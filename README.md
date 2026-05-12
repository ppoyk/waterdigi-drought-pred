

<!--
This file will be rendered as both HTML for the website version, and as markdown for repo frontpage 
Therefore, only edit the `.qmd` version of README.
-->

# Drought index assessment for groundwater drought prediction

**Author:** Pietari Pöykkö  
**Contact:** pietari.poykko@oulu.fi  
**Organization:** University of Oulu  
**Website:** <https://www.oulu.fi/en/researchers/pietari-poykko>
(Personal site not yet available)

## Project Overview

Groundwater (GW) droughts should be predicted in advance, as such
conditions have important financial and ecological consequences. The
accurate prediction of GW conditions is difficult due to sparse
monitoring network and diverse local conditions. This reseach project
aims to evaluate the suitability and accuracy of widely available
drought indices for GW drought prediction. The drought indices are here
calculated from readily available data. The time series of indices are
then correlated with natural-state GW levels to assess the prediction
power (lead-times, accuracy).

Long-term drought trends in northern Europe are uncertain (Karlsson et
al., 2014; Teutschbein et al., 2025), more frequent and intense droughts
are predicted by climate projections. Groundwater droughts remain
underexplored despite their importance for baseflow and water supply. In
Finland, where groundwater and surface water are closely linked, and
groundwater constitutes almost half of the water supply (Lai et al.,
2018), an integrated approach to drought assessment is essential.

Schneider et al. (2025) use hydrological principles and drought indices
to evaluate drought propagation in a hydrological model. Gao et
al. (2016) investigated droughts affecting forest health with a related
method using drought indices. A similar approach is used here to
evaluate the accuracy, validity, and lead-time of drought indices to
enhance the predictions of groundwater conditions.

#### Research questions:

- Which drought index has the best prediction power on GW drought (in
  the subarctic Finland)?
- How far into the future can the indices predict GW levels?
- Does the latitude, soil, or the season affect index performance? These
  questions were still left unanswered due to issues with the selected
  datasets. Details below and in `SE4_results_viz.html`.

## Data Sources

The study area is Finland, with analyzed groundwater data extending from
1970s to 2025.

### Published Data Sources

> [!IMPORTANT]
>
> Only the 1st and 3rd data sources were ultimately used.

<!-- edit with https://www.tablesgenerator.com/text_tables -->

<table style="width:98%;">
<colgroup>
<col style="width: 5%" />
<col style="width: 7%" />
<col style="width: 8%" />
<col style="width: 4%" />
<col style="width: 40%" />
<col style="width: 17%" />
<col style="width: 13%" />
</colgroup>
<thead>
<tr>
<th>Name</th>
<th>Source</th>
<th>Description</th>
<th>Access</th>
<th>URLs</th>
<th>Details</th>
<th>Citation</th>
</tr>
</thead>
<tbody>
<tr>
<td>GW level</td>
<td><a href="https://syke.fi/en">Finnish Environment Institute</a></td>
<td>Manual measure<br />
ments of GW level from the national hydrological moni<br />
toring network</td>
<td>Download</td>
<td><a
href="http://syke.fi/en/environmental-data/maps-and-information-services/open-environmental-information-systems">Through
Hertta portal</a> <a
href="https://ckan.ymparisto.fi/dataset/pohjavesitietoaineisto-povet1">Metadata</a></td>
<td>…</td>
<td>Finnish Environment Institute, Economic Development Centres, 2025.
Groundwater dataset POVET.</td>
</tr>
<tr>
<td>GW areas<br />
</td>
<td>Finnish Environment Institute</td>
<td>The geometries and descriptions of mapped, anthropogenically
classified GW areas</td>
<td>Download</td>
<td>Through Hertta portal <a
href="https://ckan.ymparisto.fi/dataset/pohjavesialueet">Metadata</a></td>
<td>…</td>
<td>Finnish Environment Institute, 2026. Groundwater areas.</td>
</tr>
<tr>
<td>SPI &amp; SPEI<br />
monthly drought indices</td>
<td>ECMWF Climate Data Store</td>
<td>Monthly values for 1, 3, 6, 12, 24, 36, 48 month accumula-<br />
tion periods. Global, gridded, based on ERA5</td>
<td>API</td>
<td><a href="https://doi.org/10.24381/9bea5e16">Dataset and
metadata</a></td>
<td></td>
<td>Keune, J., Di Giuseppe, F., Barnard, C. et al. ERA5–Drought: Global
drought indices based on ECMWF reanalysis. Sci Data 12, 616 (2025).
(10.1038/s41597-025-04896-y)</td>
</tr>
<tr>
<td>Temperature<br />
and<br />
precipitation</td>
<td><a href="https://fmi.fi/en">Finnish Meteorological
Institute</a></td>
<td>Gridded dataset of T &amp; P observations</td>
<td>Download</td>
<td><a
href="https://avoindata.suomi.fi/data/fi/dataset/saahavaintojen-hilamuotoiset-kuukausiarvot">Download
link</a> <a
href="http://paikkatietohakemisto.fi/geonetwork/srv/api/records/b5ac0243-3da6-47ed-96b0-1867cdeda838">Metadata</a></td>
<td>…</td>
<td>…</td>
</tr>
<tr>
<td>Tentative:<br />
Global T &amp; P</td>
<td>Climatic Research Unit (Univ. of East Anglia) and NCAS</td>
<td>T &amp; P global time series for reference</td>
<td>Download</td>
<td><a
href="https://crudata.uea.ac.uk/cru/data/hrg/cru_ts_4.09">Download
link</a> <a href="https://doi.org/10.6084/m9.figshare.11980500">Metadata
DOI</a></td>
<td><ol start="22" type="a">
<li>4.09</li>
</ol></td>
<td>Harris, I., Osborn, T.J., Jones, P. et al. Version 4 of the CRU TS
monthly high-resolution gridded multivariate climate dataset. Sci Data
7, 109 (2020). (10.1038/s41597-020-0453-3)</td>
</tr>
<tr>
<td>Surface<br />
geology<br />
(200k)</td>
<td><a href="https://gtk.fi/en">Geological Survey of Finland</a></td>
<td>Approximate classification of surficial soil deposits</td>
<td>Download</td>
<td><a href="https://hakku.gtk.fi/fi/locations?id=3">Hakku link</a> <a
href="https://tupa.gtk.fi/paikkatieto/meta/maapera_200k.html">Metadata</a></td>
<td><a href="https://gtk.fi/avoinlisenssi">License</a></td>
<td>…</td>
</tr>
<tr>
<td>Surficial<br />
deposit<br />
thickness</td>
<td>Geological Survey of Finland</td>
<td>…</td>
<td>Download</td>
<td><a href="https://hakku.gtk.fi/fi/locations?id=113">Hakku link</a> <a
href="https://tupa.gtk.fi/paikkatieto/meta/maapeitepaksuus_1000k.html">Metadata</a></td>
<td><a href="https://gtk.fi/avoinlisenssi">License</a></td>
<td>…</td>
</tr>
<tr>
<td>Self-<br />
calibrating<br />
Palmer<br />
Drought<br />
Severity<br />
Index<br />
</td>
<td>Climatic Research Unit (Univ. of East Anglia)</td>
<td>Monthly global values of scPDSI derived from CRU-TS v4.09. 1901-2024
and resolution of 0.5°*0.5°</td>
<td>Download</td>
<td><a href="https://crudata.uea.ac.uk/cru/data/drought/#global">UEA-CRU
link</a> Metadata in readme of the above, and in the NetCDF files</td>
<td><a
href="http://opendatacommons.org/licenses/odbl/1.0">License</a></td>
<td><p>van der Schrier G, Barichivich J, Briffa KR and Jones PD (2013) A
scPDSI-based global data set of dry and wet spells for 1901-2009. J.
Geophys. Res. Atmos. 118, 4025-4048 (10.1002/jgrd.50355).</p>
<p>Barichivich J, Osborn TJ, Harris I, van der Schrier G and Jones PD
(2025) Monitoring global drought using the self- calibrating Palmer
Drought Severity Index [in “State of the Climate in 2024”]. Bull. Amer.
Meteor. Soc., 106, S77-S78 (10.1175/BAMS-D-25-0102.1)</p></td>
</tr>
</tbody>
</table>

### Data Access Notes

[Hertta](https://syke.fi/en/environmental-data/maps-and-information-services/open-environmental-information-systems),
the open data portal of the [Finnish Environment
Institute](https://syke.fi/en), requires the creation of a free user
account. The portal is mostly available in English. There is no
one-button solution to download either the GW observations or the GW
area information.  
Hakku requires order details, such as email, for digital delivery of
spatial data product downloads.  
The automated downloads through the European Centre for Medium-Range
Weather Forecasts (ECMWF) API requires an API key, obtained via creating
a free account. The script tries to ask for this automatically

## Methods Summary

The GW source data will be quality controlled prior to analysis. Quality
control steps have been outlined in Pöykkö et al. (2026).  
**Model Framework:** GW is aggregated to monthly values due to gaps and
sparse measurement interval. This also matches the temporal resolution
of the drought indices.  
The GW levels are converted into Standardized Groundwater Index (SGI)
for individual pipes. Also, monitoring stations (~10 pipes) are
aggregated their own time series for comparison. The drought indices
available in the above mentioned dataset accumulate the drought
conditions in the environment into a standardized numerical value. The
correlations and concurrency between the SGI and drought index time
series are studied. Further analysis was intended, but issues with the
datasets postponed it.

## Repository Structure

| Folder/File | Description |
|----|----|
| `inputs/` | Stores all input data required |
| `inputs/manual/` | Input data requiring a manual download. Contents not committed to repository. |
| `inputs/auto/` | Stores automatically downloaded datasets. Contents not committed to repository. |
| `analysis_ready/` | Analysis-ready datasets (No saved model outputs, model configuration files, predictions) |
| `figures/` | Figures, tables, graphs, and data-derivatives (e.g. summary statistics) displayed in manuscript text |
| `run_reproducibility.R` | Reproducibility wrapper |

## How to Reproduce

0.  Install the R language v.4.5.3.
1.  Install the Positron IDE, which will come bundled with Quarto.
    Alternatively install Quarto CLI.
2.  Download all datasets with “Download” access in the above table.
    Place them directly into `inputs/manual/`.  
    (Only the GW dataset used. Contact for details on what data to
    download…)
3.  Run the file `run_reproducibility.R`.

### Computational requirements

The code has been tested on:

- Windows operating system
- Intel Core Ultra 5 125H, 14 cores
- 32 Gb of RAM  
  Any sufficiently modern computer should manage to run the code. Linux
  or MacOS systems should also be compatable.

### Data access configurations

The drought index data downloads require an API key for European Centre
for Medium-Range Weather Forecasts services. This key can be obtained by
registering an ECMWF account on <https://www.ecmwf.int/>, and viewing
the key from your personal profile. The script should ask for this key
automatically. It can also be provided by running the command
`ecmwfr::wf_set_key()`

## Results

The scope of this project was initially too broad. Ultimately, only two
main datasets were used: the Finnish national GW dataset and the
ERA5-based drought index (SPI & SPEI) dataset. The main reason for this
was the overhead related to learning to use and format these notebooks.
Working with large tables with a lot of text and links (the data sources
table above) is also a huge pain! It would be wiser to format such table
in an excel file, and to convert to Markdown only as needed.

Another reason for the project ending up more limited was that the main
drought index dataset used was found to be of bad quality, or at least
unsuitable for the kind of analysis carried out here. More details on
this are noted in the `SE4_results_viz` notebook. The main reason is
that the dataset appears unsuitable for small scale analysis. Each GW
stations was represented by a single ~28x28 km pixel of drought the
index dataset. However, when examined like this, all indices had very
apparent errors, an example shown below. ![A SPEI-6 time series of a
station with regular extreme spikes](.\figures/bad-station-ts.png)

These errors make it impossible to study the relationships between GW
levels and the drought indices: ![A station with bad SPEI-6 time
series](.\figures/bad-rmse-station.png)

Similar bad time series were very prevelant across the dataset: ![All
bad time series of stations, identified based on non-normality of the
standardized index](.\figures/bad-stations-map.png)

The code also produces intermediary files suitable for further analysis
into the folder `analysis-ready`. These are produced by and documented
in `SE2_data_processing.qmd`

## How to cite

Pöykkö, P., 2026. Drought index assessment for groundwater drought
prediction. \[software\] https://doi.org/XXXXXXXXX  
DOI: **DOI_PENDING** The project will not be uploaded to online
services.

## License

MIT

## Contribution Guidelines

Contributions that improve the quality, clarity, and reproducibility of
this project are welcome.

- Open an issue before making major or result-affecting changes.
- Keep pull requests focused and clearly describe what changed and why.
- Follow existing code style and update documentation as needed.
- Do not modify code or data used to reproduce published results without
  discussion.
- Ensure workflows remain reproducible (environment, dependencies,
  random seeds).
- Do not commit large or restricted datasets; respect data licenses. By
  contributing, you agree that your work will be released under the
  project’s license.

## References

- Gao, Y., Markkanen, T., Thum, T., Aurela, M., Lohila, A., Mammarella,
  I., Kämäräinen, M., Hagemann, S., Aalto, T., 2016. Assessing various
  drought indicators in representing summer drought in boreal forests in
  Finland. Hydrol. Earth Syst. Sci. 20, 175–191.
  https://doi.org/10.5194/hess-20-175-2016
- Lai, T.-Y., Salminen, J., Jäppinen, J.-P., Koljonen, S., Mononen, L.,
  Nieminen, E., Vihervaara, P., Oinonen, S., 2018. Bridging the gap
  between ecosystem service indicators and ecosystem accounting in
  Finland. Ecological Modelling 377, 51–65.
  https://doi.org/10.1016/j.ecolmodel.2018.03.006
- Karlsson, I.B., Sonnenborg, T.O., Jensen, K.H., Refsgaard, J.C., 2014.
  Historical trends in precipitation and stream discharge at the Skjern
  River catchment, Denmark. Hydrology and Earth System Sciences 18,
  595–610. https://doi.org/10.5194/hess-18-595-2014
- Pöykkö et al., 2026. TBD.
- Schneider, R., Stisen, S., Hansen, M.F.T., Andreasen, M., Nilsson, B.,
  Hinsby, K., Henriksen, H.J., Seidenfaden, I.K., 2025. Drought dynamics
  across the hydrological cycle – an extensive validation of the
  National Hydrological Model of Denmark. EGUsphere 1–53.
  https://doi.org/10.5194/egusphere-2025-5373
- Teutschbein, C., Grabs, T., Giese, M., Todorović, A., Barthel,
  R., 2025. Drought propagation in high-latitude catchments: insights
  from a 60-year analysis using standardized indices. Natural Hazards
  and Earth System Sciences 25, 2541–2564.
  https://doi.org/10.5194/nhess-25-2541-2025
