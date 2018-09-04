---
title: "iTTVis Instruction"
date: 2018-02-16T14:34:48+08:00
type: "ittvis_framework"
publication: "/publications/ittvis"
publication_name: "iTTVis: Interactive Visualization of Table Tennis Data"
demo: "/iTTVis/"
demo_name: "iTTVis"
video: "https://www.youtube.com/watch?v=yuninyIr2dQ"
paper: "/files/ittvis.pdf"
---
# Overview
Table tennis is one of the most popular sports around the world with more than 300 million active participants. The rapid development of information technology has led to the acquisition of fine-grained data on table tennis matches for improved analysis and understanding. The acquired data, characterized by dynamic, multivariate information on stroke attributes, have an innate nature for analysis and help analysts explore tactics and evaluate the performance of players. Statistical analysis and mathematical modeling have been used to analyze the fine-grained data. These approaches, however, target one particular problem and cannot provide a quick and holistic view. Furthermore, these automatic methods based on clear rules or models are difficult to use in the detection of unusual or unexpected patterns.

Thus, we work closely with senior data analysts working for the Chinese national table tennis team to develop a proper visualization system for table tennis that supports game narration, statistical exploration, and pattern detection for table tennis.
![ittvis_1.0_overview](/images/ittvis_framework/ittvis_1.0_overview.jpg)

Our system consists of three views as follows:

_More details can be found in [paper](/files/ittvis.pdf)._

# Match view
![ittvis_1.0_matchview](/images/ittvis_framework/ittvis_1.0_matchview.jpg)
Analysts require a timeline view that provides an overview of the score information of a match and supports multi-option navigations into key rallies.
We hence designed the match view. Specifically, we employed a tailored step chart **(B-1)** to show the time-varying score information. A point outcome bar **(B-2)**, which shows additional information on each rally, including, point outcome, rally length, and phase, was further used to substitute for the horizontal axis of the step chart. Brushing multiple rallies are supported in the chart for further analysis. A selection panel **(B-3)** was also used to facilitate the selection of rallies. The gray bar on the tailored step chart **(B-1)** highlight the selected rallies.

![ittvis_1.0_rallyview](/images/ittvis_framework/ittvis_1.0_rallyview.jpg)
When analysts click on a ball in the point outcome bar, the stroke view slides in to illustrate detailed information, including placement, technique, position, and effect of each stroke in the rally. We used a ball with a directed curve as a stroke. The stroke technique, position, and effect are displayed when hovering on the ball **(A)**.

# Stat view
![ittvis_1.0_statview](/images/ittvis_framework/ittvis_1.0_statview.jpg)
Three stroke attributes, namely, stroke technique, stroke placement, and stroke position both intra-relate within a stroke and inter-relate between adjacent strokes within rallies selected on the tailored step chart. Thus, complex sequential intra-stroke and inter-stroke relationships are generated. We used the pairwise correlations among the three attributes in a stroke to measure intra-stroke relationships, and used correlations between the same attributes of two adjacent strokes to measure inter-stroke relationships. Specifically, the correlations between two attributes denote the occurrence frequency and scoring rate of the combination of each value of the two attributes in all selected rallies.
We employed a sequence of aligned matrix views to present the correlations sequentially in the stat view.

![ittvis_1.0_statview2](/images/ittvis_framework/ittvis_1.0_statview2.jpg)
First, we used a gray block to represent a stroke. The blocks were arranged according to the stroke sequence. Second, between any two adjacent blocks, we used a matrix to represent correlations between the two strokes in a certain stroke attribute **(B)**. We call the matrix the inter-stroke matrix, and we call the certain stroke attribute the linking stroke attribute **(A)**. Furthermore, we placed three matrices in each stroke block to represent pairwise correlations among the three attributes **(E, F, G)**. We call these three matrices intra-stroke matrices. Generally, the inter-stroke and intra-stroke matrices are aligned with each other, thus creating a neat and symmetrical view to allow multi-facet correlation analysis among a sequence of strokes.
When users hover on a grid cell of a matrix **(B)** or a table **(D)**, the corresponding rows and columns are highlighted. All matrices are updated simultaneously.

# Tactic view
![ittvis_1.0_tacticview](/images/ittvis_framework/ittvis_1.0_tacticview.jpg)
According to the experts, the combination of the stroke attributes of three consecutive strokes is regarded as a tactic in the domain. The tactic view automatically detects all the tactics in the selected rallies and lists them in order of frequency. We designed three compact and discernable glyphs for the representations of three stroke attributes in tactics **(A)** as follows.

- **Stroke position.** We designed four icons to illustrate four different stroke positions **(A-1)**. The icons are created by simplifying the figures as follows.
-  **Stroke placement.** Half of the table tennis table is divided into nine grid cells, and the filled grid indicates the stroke placement **(A-2)**.
- **Stroke technique.** The stroke techniques are shown in abbreviations **(A-3)**.
