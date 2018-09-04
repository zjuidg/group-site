---
title: "Visualization Framework For Table Tennis Analysis"
date: 2018-02-14T20:42:07+08:00
type: "ittvis_framework"
---
# About
It is an open source visual analysis framework for table tennis analysis. We have been collaborating with senior table tennis experts who worked for the Chinese national table tennis team to design and develop this framework. Traditional methods, such as statistical models and video analysis, target particular problems and fail to locate unexpected patterns. This framework hence aims to provide a quick and holistic view of the different stroke techniques and sophisticated playing tactics during the fast-paced and highly dynamic table tennis sports. You can explore the time-varying scores, multi-attribute strokes, and elaborate tactics of table tennis players with the help of this framework.

Till now, two projects have been proposed under the framework. The first project is the first attempt to systematically characterize the domain problems of analysis of table tennis data. The visualization system built in this project, iTTVis, supports detection of time-varying patterns of scores, correlations patterns of stroke attributes, and frequent patterns of tactics in a table tennis match. After iTTVis, the second project was further proposed to fulfill the new requirements for analyses of the co-evolution of stroke attributes over a specified stroke subsequence. These analyses are crucial for experts to identify temporal characteristics of techniques and tactics of players. The visualization system in the project, iSSVis, can help experts navigate through diverse stroke subsequences and explore time-varying features, reasons, and effects of strokes in a subsequence comprehensibly. Two visualization systems have been successfully incorporated into the analysis of the table tennis match by the experts. This webpage provides demos of the two systems. It also provides a data format and an example data file for table tennis match.

# Project
<p>
<div class="link project">
  <a href="/ittvis_framework/issvis">
    <i class="fa fa-cube"></i>
    <highlight>iSSVis: Interactive Visualization of Stroke Subsequences in Table Tennis</highlight>
    <sup class="flag">new</sup>
  </a>
</div>
<div class="project">
  <video src="https://www.youtube.com/watch?v=lxhMTGrAerg" controls="controls" width="100%"></video>
</div>

<div class="link project">
  <a href="/ittvis_framework/ittvis">
    <i class="fa fa-cube"></i>iTTVis: Interactive Visualization of Table Tennis Data
  </a>
</div>
<div class="project">
  <video src="https://www.youtube.com/watch?v=yuninyIr2dQ" controls="controls" width="100%"></video>
</div>
</p>

# Featured Publication
<p>
<div class="link publication">
  <a href="/publications/ittvis">
    <i class="fa fa-book"></i>iTTVis: Interactive Visualization of Table Tennis Data
  </a>
</div>
</p>

# Our Collaborators
The experts were data analysts with a focus on the analysis of techniques and tactics of players.
The most senior expert, [Prof. Hui Zhang](http://mypage.zju.edu.cn/sports_science_zhanghui), was a chief data scientist and worked for the Chinese national table tennis team for 10 years. In addition, Prof. Hui Zhang was a national first grade sportsman, a first grade coach, and an international umpire with German A-level coaching license. He was a council member of both the international symposium on computer science in sport and China sport science society.
![collaborator image](/images/ittvis_framework/collaborator.png)

# Data Description
For a table tennis match with two players A and B, a data table with hundreds of strokes was collected. Each stroke, which corre- sponds to a row in the table, has a variety of attributes, namely, stroke attributes. The important attributes are described below.

|    Name    |  Description  |
|:-------|:-------------|
| Game ID  |  The ID of the game to which this stroke belongs.  |
| Rally ID  |  The ID of the rally to which this stroke belongs.  |
| Stroke ID  |  The ID of this stroke within a rally. |
| Score A  |  The score of player A when this stroke takes place. |
| Score B  |  The score of player B when this stroke takes place. |
| Stroke player  |  The player who gives this stroke. |
| Stroke effect  |  The effect of a stroke reflecting the competition situation.  |
| Stroke technique  |  The technique the player uses. |
| Stroke position  |  The position where the player gives the stroke. |
| Stroke placement |  The drop point of the current stroke. |
<p></p>

* _**Stroke effect:**_ The effect is recorded as an ordinal number marked by five levels. A small number indicates a good effect of the stroke for the stroke player. For example, the first level, as the smallest one, means that the stroke directly leads to a point win for the stroke player and puts an end to the rally.
* _**Stroke technique:**_ The stroke technique records how the player gives the stroke. The domain experts define eleven important techniques: serve, loop, quick attack, smash, flick, chop long, drop shot, block, cutting, parrel and lob.
* _**Stroke position:**_ The stroke position records where the player gives the stroke. Each side of the table can be divided into the forehand area and the backhand area. The player can use forehand or backhand in both areas. Four stroke positions are derived. The stroke position is defined as forehand when the player uses forehand in the forehand area. Similarly, backhand is defined as using backhand in the backhand area, sideways as using forehand in the backhand area, and anti-sideways as using backhand in the forehand area.
* _**Stroke placement:**_ The stroke placement records the drop point of the stroke. The table tennis table is divided into 18 parts with nine parts at each side. All stroke placements are recorded as part names. That is, they are spontaneously classified into nine categories.

<p class="link">
  This is an example data file.
  <a href="/files/ittvis_data.csv">
    <i class="fa fa-file-excel-o" style="margin-left: 10px; margin-right: 5px;"></i>example.csv
  </a>
</p>

# Contact
If you have any further inquiries, please contact [Dr. Lan](lanjizju.github.io/)([lanjiZJU@gmail.com](mailto://lanjiZJU@gmail.com?subject=iTTVis_1.0 feedback))
