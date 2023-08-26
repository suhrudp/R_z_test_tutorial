# Z-TEST FOR PROPORTIONS

## **LOAD LIBRARIES**

```{r}
library(readxl)
library(gtsummary)
library(flextable)
```

## **ATTACH DATA**

```{r}
df <- read_excel(file.choose())
attach(df)
View(df)
```

## **DESCRIPTIVE ANALYSIS**

```{r}
table1 <- tbl_summary(df[c("Group", "MI")], by="Group")
table1
```

## **ASSUMPTIONS**

1.  Data are simple random values from both the populations.

2.  Both populations follow a binomial distribution.

3.  Samples are independent of each other.

## **Z-TEST FOR PROPORTIONS**

```{r}
prop.test(x = c(728, 445), n = c(1000, 1000))
```
