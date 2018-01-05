# Effect size
<div style="text-align:center">

```r
knitr::include_graphics("figures/effectsize/teaser.png")
```

![](figures/effectsize/teaser.png)<!-- -->

```r
# TODO: generate the teaser figure in code
```
</div>

## What is an effect size?

Broadly speaking, an effect size is "anything that might be of interest" [@Cumming2013a]; it is some quantity that captures the magnitude of the effect studied.

In HCI, common examples of effect size include the mean difference (e.g., in seconds) in task completion times between two techniques, or the mean difference in error rates (e.g., in percent). These are called *simple effect sizes* (or *unstandardized effect sizes*).

More complex measures of effect size exist called *standardized effect sizes* (see [What is a standardized effect size?](#faq_standardized)). Although the term *effect size* is often used to refer to standardized effect sizes only, using the term in a broader sense can avoid unnecessary confusion [@Cumming2013a; @Wilkinson1999a]. In this document, "effect size" refers to both simple and standardized effect sizes.


## Why and when should effect sizes be reported? {#faq_when_why}

In quantitative experiments, effect sizes are among the most elementary and essential summary statistics that can be reported. Identifying the effect size(s) of interest also allows the researcher to turn a vague research question into a precise, quantitative question [@Cumming2014a]. For example, if a researcher is interested in showing that their technique is faster than a baseline technique, an appropriate choice of effect size is the mean difference in completion times. The observed effect size will indicate not only the likely direction of the effect (e.g., whether the technique is faster or slower), but also whether the effect is large enough to care about. 

For the sake of transparency, effect sizes should always be reported in quantitative research, unless there are good reasons not to do so. According to the American Psychological Association:

> For the reader to appreciate the magnitude or importance of a study's findings, it is almost always necessary to include some measure of effect size in the Results section. [@APA2001]

Sometimes, effect sizes can be hard to compute or to interpret. When this is the case, and if the main focus of the study is on the direction (rather than magnitude) of the effect, reporting the results of statistical significance tests without reporting effect sizes (see the [inferential statistics FAQ]()) may be an acceptable option.


## How should effect sizes be reported? {#faq_how_reporting}

The first choice is on whether to report simple effect sizes or standardized effect sizes. For this question, see [Should simple effect sizes or standardized effect sizes be reported?](#faq_simple_v_standardized) 

It is rarely sufficient to report an effect size as a single quantity. This is because a single quantity like a difference in means or a Cohen's *d* is typically only a *point estimate*, i.e., it is merely a best guess of the true effect size. It is crucial to also assess and report the statistical uncertainty about this point estimate.

For more on assessing and reporting statistical uncertainty, see the [inferential statistics FAQ]().

Ideally, an effect size report should include:

- The direction of the effect if applicable (e.g., given a difference between two treatments `A` and `B`, indicate if the measured effect is `A - B` or `B - A`).
- The type of point estimate reported (e.g., a sample mean difference)
- The type of uncertainty information reported (e.g., a 95% CI)
- The units of the effect size if applicable, or the type of standardized effect size if it is a unitless effect size. 

This information can be reported either numerically or graphically. Both formats are acceptable, although plots tend to be easier to comprehend than numbers when more than one effect size needs to be conveyed [@loftus1993picture; @kastellec2007using]. Unless precise numerical values are important, it is sufficient (and often preferable) to report all effect sizes graphically. Researchers should avoid plotting point estimates without also plotting uncertainty information (using, e.g., error bars).

▸ Exemplar: [simple effect size](#exemplar_simple_effect_size) (specifically in the "Reporting simple effect size" sub-section)


## What is a standardized effect size? {#faq_standardized}

A standardized effect size is a unitless measure of effect size. The most common measure of standardized effect size is Cohen’s *d*, where the mean difference is divided by the standard deviation of the pooled observations [@Cohen1988a]. [Other approaches](http://stats.idre.ucla.edu/other/mult-pkg/faq/general/effect-size-power/faqhow-is-effect-size-used-in-power-analysis/) to standardization exist [prefer citations]. To some extent, standardized effect sizes make it possible to compare different studies in terms of how “impressive” their results are (see [How do I know my effect is large enough?](#faq_large_enough)); however, this practice is not without criticism (see the section *Standardized mean differences let us compare and summarize results when studies use different outcome scales* of [@Cummings2011]).


## Should simple or standardized effect sizes be reported?  {#faq_simple_v_standardized}

While the term *effect size* may conjure up the image of arcane statistical formulas, the most useful effect sizes are often much simpler, and more intuitive, than perhaps should even warrant a specialized term. An effect size is essentially any way to compute the practical size of an effect.

Standardized effect sizes are useful in some situations, for example when effects obtained from different experiments and/or expressed in different units need to be combined or compared [@Cumming2014a]. However, even this practice is controversial, as it can rely on assumptions about the effects being measured that are difficult to verify [@Cummings2011]. 

In most cases, simple effect sizes should be preferred over standardized effect sizes:

> Only rarely will uncorrected standardized effect size be more useful than simple effect size. It is usually far better to report simple effect size. [@Baguley2009]

Simple effect sizes are often easier to interpret and justify [@Cumming2014a; @Cummings2011]. When the units of the data are meaningful (e.g., seconds), reporting effect sizes expressed in their original units is more informative and can make it easier to judge whether the effect has a practical significance [@Wilkinson1999a; @Cummings2011].

Barring a strong, domain- or problem-specific argument for reporting a standardized effect size instead of a simple one, simple effect sizes should be preferred as being more transparent and easier to interpret.

If a standardized effect size is reported, it should be accompanied by an argument for its applicability to the domain. If there is no inherent reasoning to argue for a particular interpretation of the practical significance of the standardized effect size, it should be accompanied by another assessment of the practical significance of the effect.

▸ Exemplar: [simple effect size](#exemplar_simple_effect_size) and [standardized effect size](#exemplar_standardized_effect_size)


## How do I know my effect is large enough? {#faq_large_enough}

Although there exist rules of thumb to help interpret standardized effect sizes, these are not universally accepted. See [What about Cohen's small, medium, and large effect sizes?](#faq_small_medium_large)

It is generally advisable to avoid the use of arbitrary thresholds when deciding on whether an effect is large enough, and instead try to think of whether the effect is of practical importance. This requires domain knowledge, and often a fair degree of subjective judgment. Ideally, a researcher should think in advance what effect size they would consider to be large enough, and plan the experiment, the hypotheses and the analyses accordingly (see the [experiment and analysis planning FAQ](experiment_plan)).

Nevertheless, more often than not in HCI, it is difficult to determine whether a certain effect is of practical importance. For example, a difference in pointing time of 100 ms between two pointing techniques can be large or small depending on the application, how often it is used, its context of use, etc. In such cases, forcing artificial interpretations of practical importance can hurt transparency. In many cases, it is sufficient to present effect sizes in a clear manner and leave the judgment of practical importance to the reader.

Simple effect sizes are often a better choice, because they provide the information necessary for an expert in the area to use their judgment to assess the practical impact of an effect size. For example, a difference in reaction time of 100ms is above the threshold of human perception, and therefore likely of practical impact. A difference of 100ms in receiving a chat message in an asynchronous chat application is likely less impactful, as it is small compared to the amount of time a chat message is generally expected to take. A difference in pointing time of 100ms between two pointing techniques might be large or small depending on the application, how often it is used, the context of use, etc. Presenting simple effect sizes in a clear way---with units---allows the expert author to argue why the effect size may or may not have practical importance *and* allow the expert reader to make their own judgment.


## What about Cohen's small, medium, and large effect sizes? {#faq_small_medium_large}

Conventional thresholds are sometimes used for standardized effect sizes like Cohen’s *d*, labeling them "small", "medium", or "large". These thresholds are however largely arbitrary [@Cummings2011]. They were originally proposed by Cohen based on human heights and intelligence quotients [@Cohen1977], but Cohen, in the very text where he first introduced them, noted that these thresholds may not be directly applicable to other domains:

> The terms "small", "medium", and "large" are relative, not only to
each other, but to the area of behavioral science or even more particularly
to the specific content and research method being employed in any given
investigation... In the face of this relativity, there is
a certain risk inherent in offering conventional operational definitions for
these terms for use in power analysis in as diverse a field of inquiry as behavioral
science. This risk is nevertheless accepted in the belief that more
is to be gained than lost by supplying a common conventional frame of
reference which is recommended for use only when no better basis for estimating
the ES index is available. [@Cohen1977]

Cohen recommended the use of these thresholds only when no better frame of reference for assessing practical importance was available. However, hindsight has demonstrated that if such thresholds are offered, they will be adopted as a convenience, often without much thought to how they apply to the domain at hand [@Baguley2004; @Lenth2001]; Lenth has called this usage "canned effect sizes" [@Lenth2001]. Once adopted, these thresholds make reports more opaque, by standardizing away units of measurement and categorizing results into arbitrary classes. Like Cummings [-@Cummings2011], we recommend against assessing the importance of effects by labeling them using Cohen's thresholds.


## Exemplar: Simple effect size {#exemplar_simple_effect_size}


### Libraries needed for this analysis


```r
library(tidyverse)
library(forcats)    # for fct_...()
library(broom)      # for tidy()
library(ggstance)   # for geom_pointrangeh()
```
This function is for formatting numbers:




### Data

Imagine a between-subjects design, with completion time (in milliseconds) measured in two groups, `A` and `B`, with 20 subjects each.


```r
set.seed(12)
n <- 20
data <- tibble(
  group = rep(c("A", "B"), each = n),
  completion_time_ms = c(
    rnorm(n, mean = 170, sd = 80),
    rnorm(n, mean = 50, sd = 20)
  )
)
```

Note that our model allows for negative completion times, but we will ignore this for the sake of simplicity. With `set.seed(12)` and `n = 20`, we will only get positive numbers.

A good first step in any analysis is always to visualize the data:


```r
p_data <-  # save for the teaser figure
  data %>% 
  mutate(group = fct_rev(group)) %>%  # to display groups in alphabetical order
  ggplot(aes(x = group, y = completion_time_ms)) +
  geom_point(alpha = 0.2) +
  stat_summary(fun.data = mean_cl_normal) +
  coord_flip() +
  ylab("Completion time (ms)") +
  xlab("Group")
p_data
```

<img src="effectsize_files/figure-html/data_plot-1.png" width="384" />

This plot shows all observed completion times, as well as the mean completion time and 95% confidence interval of the mean in each condition.

### Calculating simple effect size

Since we have meaningful units (milliseconds), we will use the *difference* in mean completion times as our effect size. Following [our recommendations on how to report effect size](#faq_how_reporting), we also need to report the uncertainty around the sample effect size. To this end, we will compute a *Student's t distribution confidence interval*.

Again for simplicity, we will not use a log transformation as suggested in the [data transformation](data_transformation) guidelines.


```r
t_result <- 
  t.test(completion_time_ms ~ group, data = data) %>%
  tidy()    # put result in tidy tabular format
t_result
```

```
##   estimate estimate1 estimate2 statistic      p.value parameter conf.low
## 1 91.54983  143.5033  51.95344  5.720729 1.030114e-05  21.45927 58.31272
##   conf.high                  method alternative
## 1  124.7869 Welch Two Sample t-test   two.sided
```

The `tidy()`ed output of the `t.test()` function includes an estimate of the mean difference in milliseconds (`estimate`) as well as the lower (`conf.low`) and upper (`conf.high`) bounds of the 95% confidence interval. 


### Reporting simple effect size

Ideally, we would have space in our paper to report the effect size graphically:


```r
p_simple_effect_size <-   # save for the teaser figure
  t_result %>% 
  ggplot(aes(y = "A - B", x = estimate, xmin = conf.low, xmax = conf.high)) +
  geom_pointrangeh() +
  geom_vline(xintercept = 0, linetype="dashed") +
  xlab("Mean difference in completion time (ms) with 95% CI") +
  ylab("")
p_simple_effect_size
```

<img src="effectsize_files/figure-html/ci_plot-1.png" width="480" />

This graphical report includes all of the [elements of an effect size report that we recommend](#faq_how_reporting):

- The direction of the difference (indicated by the label `A - B`)
- The type of estimate reported (mean difference)
- The type of uncertainty indicated (95% CI)
- The units (ms)

Space may not always permit the graphical report. While it can be less easy to interpret, an alternative is a textual report. **Such a report should still include all of the four elements listed above.** For example:

> Group `A` had a greater mean completion time than group `B` by 92 milliseconds (95% CI: [58, 125]).


### Interpreting effect size: same result, different domains = different interpretations

Because simple effect sizes include units, we can use our expert judgment to interpret the report. Authors may wish to do so in order to put their result in context. Because the report above includes everything necessary for other experts to come to their own conclusion, providing our own interpretation does not prevent readers from applying their own judgment and coming to different conclusions.

To illustrate the effect of domain on interpreting effect size, we will imagine two different domains that might have led to the same result reported above, and write a different interpretation of the data for each.


#### Domain 1: Physical prototyping

Imagine the above study was from the comparison of a novel physical user interface prototyping system (treatment `B`) to the previous state of the art (`A`), and the completion time referred to the time for feedback to be given to the user after they perform an input action. We might report the following interpretation of the results:

> Technique `B` offers a **large** improvement in feedback time (~58 -- 125ms mean decrease), resulting in feedback times that tend to be less than the threshold of human perception (less than about 100ms). By contrast, the larger feedback times offered by technique `A` tended to be above that threshold, possibly degrading users' experience of the prototypes built using that technique.


#### Domain 2: Chatbots

Imagine the same quantitative results, now in the context of a natural language chat bot designed to answer users' questions. Here, technique `A` will be the novel system, with improved natural language capabilities compared to the previous state-of-the-art technique, `B`. We might report the following interpretation of the results:

> While technique `A` takes longer to respond to chat messages (~58--125ms increase in mean response time), we believe this difference is acceptable in the context of an asynchronous chat interface in which users do not expect instantaneous responses. When weighed against the improved natural language capabilites of technique `A`, we believe this **small** increase in response time for messages is worth the improved message content.

The same effect size is plausibly described as **large** in domain 1 and **small** in domain 2, illustrating the importance of expert interpretation to reporting and understanding effect size and the difficulty in applying pre-defined thresholds across domains.




## Exemplar: Standardized effect size {#exemplar_standardized_effect_size}

```
TODO: This needs a domain where we can argue that Cohen's d is an exemplar analysis, then repeat structure of exemplar 1 with it
May be an example of existing meta-analysis in HCI.
```

### Standardized effect size


```r
library(effsize)  # for cohen.d()
cohen_d <- cohen.d(completion_time_ms ~ group, data = data)

# manual calculation
data_A <- (data %>% filter(group == "A"))[["completion_time_ms"]]
data_B <- (data %>% filter(group == "B"))[["completion_time_ms"]]
sd_A <- sd(data_A)
sd_B <- sd(data_B)
sd_pool <- sqrt( (sd_A^2 + sd_B^2) / 2 )
cohen_d_manual <- abs(mean(data_A) - mean(data_B))/sd_pool
```

**Standardized effect size:** Cohen's d = 1.81 SDs with 95% confidence interval [1.05 , 2.57]


## Exemplar: Nonparametric effect size {#exemplar_nonparametric_effect_size}

For a nonparametric test that produces a Z-score, like the Mann-Whitney U test or the Wilcoxon Signed-Rank test, an effect size can be computed as:

<center>$r = \left|\frac{Z}{\sqrt{N}}\right|$</center>

Above, Z is the Z-score and N is the number of observations in all groups [@Rosenthal1991a, p. 19). The result, *r*, is a variance-based effect size, like Pearson *r*, not a Cohen *d*-family effect size. The *r* can be squared to estimate the percentage of variance explained, however it will not be exactly equivalent to the Pearson *r*. 

```
TODO: This needs a domain where we can argue that the nonparametric approach is an exemplar analysis, then repeat structure of exemplar 1 with it
```

### Nonparametric effect size


```r
library(coin)
```

```
## Warning: package 'coin' was built under R version 3.4.1
```

```
## Loading required package: methods
```

```
## Loading required package: survival
```

```r
data_A <- (data %>% filter(group == "A"))[["completion_time_ms"]]
data_B <- (data %>% filter(group == "B"))[["completion_time_ms"]]
wilcox_result <- wilcox_test(completion_time_ms ~ factor(group), data = data)
effect_r <- abs(wilcox_result@statistic@teststatistic / sqrt(nrow(data)))
```

**Non-parametric effect size:** Variance-based effect size *r*  = 0.71.

## Exemplar: Within-subjects experiment {#exemplar_within_subjects_experiment} 

Large individual differences can be a major source of noise. An effective way of accounting for that noise is for every subject to run in every combination of conditions multiple times.

In this example, we'll compare two interfaces for visualizing data.

* Independent Variable **layout**: the two layouts of the interface
* Independent Variable **size**: the size of the dataset visualized (small, medium, and large)
* Independent Variable **color**: interface color, where we don't expect any effect

We run each subject through each combination of these variables 20 times to get (2 interfaces) × (3 sizes) × (4 colors) × (20 repetitions) = 480 trials per subject. We measure some reponse (e.g., reponse time) in each trial.



### Subjects, conditions, and repetitions
In this example, there are 10 subjects (`id` column). Because this is simulated data, we're using subject `id` to represent individual performance differences. Because within-subjects experiments partly account for individual differences, they often need far fewer subjects than between-subject designs. Repetitions also help reduce noise.


```r
set.seed(456) # make the output consistent
data <- expand.grid(
  id = rnorm(6, 5, 0.5), # individual differences
  layout = 0:1, # independent variable
  size = 0:2, # independent variable
  color = 0:3, # independent variable
  repetition = 1:20 # each subject runs in each condition multiple times
)
```

### Simulate some noisy effects
We'll simulate an experiment with a main effect of `layout` and `size` and an interaction between them. However, `color` and its interactions will not have an impact.


```r
data <- 
  data %>% 
  mutate(
  response_time = 
    id + # additive individual differences
    layout * .4 + # main effect of layout
    size * .2 + # main effect of size
    color * 0 + 
    layout * size * .5 + # 2-way interaction
    size * color * 0 + 
    layout * color * 0 + 
    layout * size * color * 0 + 
    rnorm(n()) # noise
)
```

Even though we used numbers to simulate the model, the independent variables and subject ID are all factors.

```r
data <- 
  data %>% 
  mutate(
    id = factor(id), 
    layout = factor(layout), 
    size = factor(size), 
    color = factor(color)
  )
```


### Compute effect sizes
While **Cohen's *d* ** is often used for simple 2-factor, single-trial, between-subject designs, more complex designs can be more consistently interpretted with the **eta squared ($\eta^{2}$)** family of effect sizes, which represent the proportion of variance accounted for by a particular variable. A variant, **generalized eta squared ($\eta_{G}^{2}$)**, is particularly suited for providing comparable effect sizes in both between and within-subject designs [@Olejnik2003; @Bakeman2005]. This property makes it more easily applicable to meta-analyses.

For those accustomed to Cohen's *d*, it's important to be aware that $\eta_{G}^{2}$ is typically smaller, with a Cohen's d of 0.2 being equivalent to a $\eta_{G}^{2}$ of around 0.02. Also, the actual number has little meaning beyond its scale relative to other effects. 


```r
library(afex) # for aov_ez()
```

```
## Loading required package: lme4
```

```
## Loading required package: Matrix
```

```
## 
## Attaching package: 'Matrix'
```

```
## The following object is masked from 'package:tidyr':
## 
##     expand
```

```
## Loading required package: lsmeans
```

```
## Loading required package: estimability
```

```
## ************
## Welcome to afex. For support visit: http://afex.singmann.science/
```

```
## - Functions for ANOVAs: aov_car(), aov_ez(), and aov_4()
## - Methods for calculating p-values with mixed(): 'KR', 'S', 'LRT', and 'PB'
## - 'afex_aov' and 'mixed' objects can be passed to lsmeans() for follow-up tests
## - Get and set global package options with: afex_options()
## - Set orthogonal sum-to-zero contrasts globally: set_sum_contrasts()
## - For example analyses see: browseVignettes("afex")
## ************
```

```
## 
## Attaching package: 'afex'
```

```
## The following object is masked from 'package:lme4':
## 
##     lmer
```

```r
results = afex::aov_ez(
  data = data, 
  id = 'id', # subject id column
  dv = 'response_time', # dependent variable
  within = c('layout', 'size', 'color'), # within-subject independent variables
  between = NULL ,# between-subject independent variables
  anova_table = list(es = 'ges') # effect size = generalized eta squared
)
```

```
## Warning: More than one observation per cell, aggregating the data using
## mean (i.e, fun_aggregate = mean)!
```

*Note: the warning indicates that the aov_ez function automatically collapses repetitions into a mean, which may be a problem if an experiment is not fully counterbalanced. This example, however, has every subject running in every combination of conditions, so simple collapsing is the correct procedure.*


```r
anovaResults <- 
  results$anova_table %>% 
  rownames_to_column('effect') %>%  # put effect names in a column
  select(-`Pr(>F)`) # no need to show p-values
  
anovaResults %>% 
  tidy() %>% 
  rename(F = statistic)
```

```
## Warning in tidy.anova(.): The following column names in ANOVA output were
## not recognized or transformed: effect, num.Df, den.Df, MSE, ges
```

```
##              effect num.Df den.Df        MSE           F         ges
## 1            layout      1      5 0.06281808 415.8246232 0.457926556
## 2              size      2     10 0.08179930 104.8159409 0.356731791
## 3             color      3     15 0.02875552   1.2685908 0.003526733
## 4       layout:size      2     10 0.03113793 101.2790368 0.169419653
## 5      layout:color      3     15 0.03127605   1.0331263 0.003125144
## 6        size:color      6     30 0.03669745   3.2407090 0.022555989
## 7 layout:size:color      6     30 0.04803646   0.9095516 0.008406709
```

*Note that the fractional degrees of freedom result from a Greenhousse-Geisser sphericity correction.*

```
TODO: Boostrapped 95%CIs for effect sizes
Pro: people should
Con: would make the guide even longer
Maybe push into another guideline?
```

### Reporting the results

Looking at the `F` and `ges` (generalized eta squared) columns, there are clear main effects for `layout` and `size` and an interaction between `layout` and `size`. However `color` and the other 2-way and 3-way interactions show only negligeable effects.




 - **layout:** F~1,5~ = 416, $\eta_{G}^{2}$ = 0.458
 - **size:** F~2,10~ = 105, $\eta_{G}^{2}$ = 0.357
 - **layout** × **size:** F~2,10~ = 101, $\eta_{G}^{2}$ = 0.169
 - **color** did not have a substantive effect (F~3,15~ = 1.27, $\eta_{G}^{2}$ = 0.00353)

Report any interaction for which there is reason to believe an effect could occur. Otherwise, you can simply state that other 2-way and 3-way interactions did not have substantive effect sizes. However, when in doubt, report everything!