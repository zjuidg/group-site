---
title: "iTTVis Framework"
date: 2018-02-14T20:42:07+08:00
type: "ittvis_framework"
---
# About
This is an open source visual analysis framework for comprehensive analysis of the table tennis match. The biggest strength of this framework is the deep exploration on tactical and technical features of table tennis players. We provide data format and example data for a table tennis match. You can explore various aspects of a table tennis match, such as varying patterns of scores and correlation patterns of stroke attributes. By this way, you can get a big picture of the match quickly and obtain the required information accurately. And you will gradually understand how domain experts of table tennis are aided by these visualizations in the analysis of table tennis data. This framework is worked out with very experienced domain experts who worked for the Chinese national table tennis team, and has been incorporated into the analysis of the table tennis match.

# Featured Publication
<div class="link publication">
  <a href="/publications/ittvis">
    <i class="fa fa-book"></i>iTTVis: Interactive Visualization of Table Tennis Data
  </a>
  <img src="/images/ittvis_framework/ittvis_paper.png">
</div>

# Our Collaborators
The experts were data analysts with a focus on the analysis of techniques and tactics of players. The most senior expert, [Hui Zhang](http://mypage.zju.edu.cn/sports_science_zhanghui), worked for the Chinese national table tennis team.
![collaborator image](/images/ittvis_framework/collaborator.png)

# Data Description
For a table tennis match with two players A and B, a data table with hundreds of strokes was collected. Each stroke, which corre- sponds to a row in the table, has a variety of attributes, namely, stroke attributes. The important attributes are described below.
![collaborator image](/images/ittvis_framework/data_description.jpg)

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
