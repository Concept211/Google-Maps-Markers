![Google Maps](https://maps.gstatic.com/tactile/settings/logo_maps-2x.png)
# Google Maps Markers
Updated "Visual Refresh" version of the Google Maps Marker Icons. Google's new marker icons look great, but they never bothered to provide us with matching PNG versions of them when we need custom colors and labels. I went ahead and created my own set using ImageMagick and my [ImageMagick.vbs](https://github.com/Concept211/Google-Maps-Markers/blob/master/source/ImageMagick.vbs) VBScript file. You can also link to the [pre-generated](#usage-premade) images I created instead of creating your own.

---

## Table of Contents
* [Installation](#installation)
* [Usage (Custom)](#usage-custom)
* [Usage (Premade)](#usage-premade)
* [Examples](#examples)

## <a name="installation"></a>Installation

1. Download and install **ImageMagick** from: http://www.imagemagick.org/script/binary-releases.php#windows
2. Download the **ImageMagick.vbs** file and a base image from the **source** folder: https://github.com/Concept211/Google-Maps-Markers/tree/master/source

## <a name="usage-custom"></a>Usage (Custom)

1. Open the **ImageMagick.vbs** file and edit the settings block to configure the base image file name, font family/style, characters/letters/numbers to generate, directory to save to, etc.
2. Run the VBS file.

## <a name="usage-premade"></a>Usage (Premade)
Use the following format when linking to the GitHub-hosted image files:
```
https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_[color][character].png
```
| Placeholder | Possible Values |
| --- | --- |
| color | red, black, blue, green, grey, orange, purple, white, yellow |
| character | A-Z, 1-100, !, @, $, +, -, =, (%23 = #), (%25 = %), (%26 = &), (blank = &bull;) |

## <a name="examples"></a>Examples
| Old | New |
| --- | --- |
| ![Old Red Dot](http://maps.google.com/mapfiles/marker.png) | ![New Red Dot](https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_red.png) |
| ![Old Green A](http://maps.google.com/mapfiles/marker_greenA.png) | ![New Green A](https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_greenA.png) |
| N/A | ![New Purple 1](https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_purple1.png) |
| N/A | ![New Orange @](https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_orange@.png) |
| N/A | ![New White 99](https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_white99.png) |
| N/A | ![New Blue #](https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_blue%23.png) |
| N/A | ![New Yellow +](https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_yellow+.png) |
| N/A | ![New Black Z](https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_blackZ.png) |
