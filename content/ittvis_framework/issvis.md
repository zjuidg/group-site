---
title: "iSSVis Instruction"
date: 2018-04-04T18:02:46+08:00
type: "ittvis_framework"
demo: "/iSSVis/"
demo_name: "iSSVis"
video: "https://www.youtube.com/watch?v=lxhMTGrAerg"
paper: "/files/issvis.pdf"
---
# Overview
Table tennis players usually employ numerous complicated playing techniques and tactics in highly antagonistic, variable, and flexible matches. In-depth analysis of stroke sequences is necessary to obtain insights into the time-varying technical and tactical playing patterns of players. Experienced experts usually watch videos repeatedly to analyze stroke sequences and detect patterns, which is tedious and prone to errors. This work presents a novel interactive visualization system called iSSVis, which was developed through close collaboration with experts to provide multi-scale comprehensible analysis of diverse stroke sequences of players.
![issvis_overview](/images/ittvis_framework/issvis_overview.png)

Our system consists of two views as follows:

# Matrix View
The system aims to provide a concise and comparable overview and flexible navigation of the statistical information of diverse stroke subsequences to help users locate interesting subsequences.
The matrix view **(A)** consisting of seven well-organized matrices with rich interactions fulfills the two tasks: clutter-free presentation and easy navigation of stroke subsequences for two players. The matrices above **(A-2, A-3, and A-4)** present statistical information of stroke subsequences specified by pairwise stroke attributes of player one **(P1)**. Similarly, the matrices below **(A-11, A-12, and A-13)** present the information of player two **(P2)**. Considering that stroke placement is the most important attribute according to domain knowledge, we placed matrices related to the placement in the middle, and added a matrix **(A-10)** to present stroke subsequences specified by the stroke placements of two players.

# Flow View
![issvis_flowview](/images/ittvis_framework/issvis_flowview.png)
The system needs to provide tailored glyphs and juxtaposed flows for familiar and conjoint analysis of the stroke subsequence specified in the matrix view. Besides, multi-scale display and comparative analysis are also required.

The flow view consists of five stroke flows **(A)** and four bar chart flows **(B)** with a set of tailored glyphs. The stroke flows present stroke sequences and the bar chart flows present effects of decisions between two stroke sequences. The main stroke flow **(A-3)** is placed in the middle; it presents the selected stroke subsequence. According to domain knowledge, three consecutive strokes make up a tactic. Each selected stroke can form a tactic with two prior strokes, one prior stroke and one next stroke, or two next strokes. Therefore, two small stroke flows representing the two prior **(A-1, A-2)** or two next strokes **(A-4, A-5)** are placed on each side of the main flow to show the tactical patterns. Bar chart flows **(B)** are placed between two adjacent stroke flows. These charts are used to evaluate the effects of the decisions on stroke attributes of the next strokes in the cases of the prior strokes. We provided five stroke flows and bar chart flows under three modes, with certain consecutive three of the five flows displayed in each mode. A switch button allows switching between different modes. With these designs, experts can quickly detect the main varying features of the selected strokes and identify possible reasons from the variation in their nearby strokes.

![issvis_legend](/images/ittvis_framework/issvis_legend.png)
**Stroke flow:**
We employ a set of visual designs to encode the three stroke attributes in the stroke flow. These intuitive designs connect abstract data to its practical meaning, thus allowing a comprehensible analysis of the variation in the three stroke attributes.

- **Horizontal variation in stroke placement.** B shows the horizontal and vertical distributions of stroke placement values. According to the experts, the variation in horizontal direction is more significant than that in the vertical direction. Therefore, we used the horizontal side of the table as the x-axis of the stroke flow to vividly and outstandingly present the horizontal variation. The other direction of the stroke flow, the y-axis, was used to denote the chronological order.

- **Stroke position.** A shows four distinct stroke position values related to four positions where the player hit the ball. The ball thus comes from different directions given the different positions. Therefore, we employed two opposite fans to represent strokes of two players and employ four directions within each fan to represent four stroke position values D. Besides, the experts commented that the direction in each glyph shows the varying features over the sequence very well.  

- **Vertical variation in stroke placement and stroke technique.** As shown in C, the stroke placement values are divided into three groups in the vertical direction indicating the distance from the middle of the table to the drop point of the ball. We hence used the number of the sectors to encode this vertical distance E. The color of the sector encodes the stroke technique **(F)**.
