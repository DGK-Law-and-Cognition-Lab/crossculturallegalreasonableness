# The Nature of Reasonableness

This repository contains the experiments, data, analyses, and figures for the paper ["THE NATURE OF REASONABLENESS"](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5185137) by Kevin Tobia, Ivar R. Hannikainen, David Kamper, Guilherme Almeida, Piotr Bystranowski, Niek Strohmaier, Vilius Dranseika, Markus Kneer, Fernando Aguiar, Kristina Dolinina, Bartosz Janik, Eglė Lauraitytė, Alice Liefgreen, Maciej Próchnicki, Alejandro Rosas, Vivek Kumar Shukla, and Noel Struchiner (2025, _Stanford Journal of International Law_)

__Contents__:

- [Introduction](#introduction)
- [Preregistrations](#preregistrations)
- [Repository Structure](#repository-structure)
- [Paper Results](##paper-results)

## Introduction

“Reasonableness” sets countless legal standards in America. It also informs standards within foreign jurisdictions, from Lithuanian contract law to Dutch tort law. Most legal theorists assume that “reasonableness” is vague and variegated, a flexible term whose uses share no essential core across languages, cultures, and jurisdictions. This Essay questions this conventional wisdom. It develops a surprising new alternative theory: Reasonableness has a shared conceptual core, in the U.S. and across some other languages and cultures. A unique cross-cultural survey-experiment (N = 2,356) examines reasonableness evaluations across Brazil, Colombia, Germany, India, Italy, Lithuania, Netherlands, Poland, Spain and the U.S., finding a subtle commonality across diverse languages, cultures and legal systems. This discovery has practical implications for judge and jury decision-making in these countries. More broadly, the study represents a legal theory proof of concept: Analysis of specific legal concepts like reasonableness across cultures provides a relief on which the features of one jurisdiction’s concept more clearly manifest. Counterintuitively, local questions of particular jurisprudence can be clarified through more general, multi- cultural and multi-linguistic empirical study.

## Preregistrations

Preregistrations for the experiments are available on [The Open Science Framework](https://osf.io/sk7r3/).

## Repository Structure

```
.
├── README.md
├── Code
│   └──  R
├── Data
└── Figures
```

### Code

#### R

`ReasonablenessMedians.Rmd` is the primary analyses file. In this file, it contains all the analyses for the experiments in the paper. A knitted HTML document can be downloaded at `ReasonablenessMedians.html` within the github repository.

### Data

Contains raw data files for the experiment.

### Figures

This contains the data visualization generated in R and included in the paper. See [here](https://dgk-law-and-cognition-lab.github.io/natureofreasonableness_crosscultural/Figures/Figure1_Reasonableness_Filtered.jpg) and [here](https://dgk-law-and-cognition-lab.github.io/natureofreasonableness_crosscultural/Figures/Figure1_Reasonableness_NoFilter.jpg)for your own viewing.

## Paper Results

All results is analyzed and in visualized ``ReasonablenessMedians.Rmd`. All paper results are included in the document. Knitted HTML document can be viewed ``ReasonablenessMedians.html`, and can be accessed [here](https://dgk-law-and-cognition-lab.github.io/natureofreasonableness_crosscultural/Code/R/ReasonablenessMedians.html) for your own viewing.

## Software versions 

Analysis was performed in R version 4.2.2.

R package versions are indicated in the knitted analysis file at `ReasonablenessMedians.html`.
