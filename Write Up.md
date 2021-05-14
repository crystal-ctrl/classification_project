# Kickstarter Success Prediction

Crystal Huang

## Abstract

For this project, the goal is to predict the success of a Kickstarter campaign. The datasets used in this project came from Web Robots website from January through April 2021. I used various classification algorithms such as KNN, Logistic Regression, Decision Tree, Random Forest, Naive Bayes, and XGBoost. My final classification model was XGBoost that has a F1 score of 0.80 and AUC score of 0.82. The Model was interpreted using SHAP values metrics to understand which features have higher importance for success. Lastly, a Flask app was built using the final model after retraining it with the entire dataset.

## Design

Kickstarter is a powerful platform that helps bring creative projects to life. However, it uses an all-or-nothing funding model that no one is charged for a pledge towards a project unless the funding goal is reached. It can be a huge burden on the creators as they have invested time and money into the campaign. On the other hand, backers wouldn't want to miss an amazing successful campaign as well.

The goal of this project is to predict the success of a Kickstarter campaign.

## Data

The datasets used in this project came from Web Robots [website](https://webrobots.io/kickstarter-datasets/) which compiles web-scrapped Kickstarter data monthly. I used the datasets from January through April 2021, which has 870,114 data points and 38 columns. Since the dataset was large, I used SQLite and sqlachemy for data storage and access.

* **Target**: Success Outcome (wether the campaign is successful or not)
  * 59% Success, 41% Failed (Not too imbalanced)

- **Features:**
  - Amount of backers, pledges (were not used due to the futuristic nature)
  - Campaign goal in USD
  - Campaign duration (from Launched date to Deadline)
  - Preparation duration (from Created date to Launched date)
  - Location of the campaign (US-based or not)
  - Length of the campaign description
  - Category of the campaign
  - Geting Featured on Kickstarter

* **Final dataset**: 189,162 data points, 20 features

## Algorithms

*Metric Selection*

* ROC AUC curve for model comparison
* F1 score - I don't want the model to predict too many success that will turn out to be failure (minimize false positives) but also want to make sure the model capture as many success as possible (minimize false negatives). Needs a balance between precision and recall

*Models Evalution and Selection*

1. Baseline model (Logistic Regression with regularization on small set of features): F1 score is 0.75, AUC is 0.65
2. Model 2.0 (Logistic Regression with regularization on full set of features after more feature engineering): F1 score is 0.77, AUC is 0.77
3. Various classification algorithms such as KNN, Logistic Regression, Decision Tree, Random Forest, Naive Bayes, and XGBoost: Top 3 Models are XGBoost (AUC=0.79), Random Forest (AUC=0.79), and Logistic Regression (AUC=0.77)
4. Tuning Hyperparameters with GridSearchCV on the top 3 models: XGBoost is still the best performer (F1=0.8, AUC=0.82)

5. Feature Importance with XGBoost using SHAP

*Model Application Production*

XGBoost model was retrained with the entire dataset and an application was built with Flask using this model

## Findings and Conclusions

*Model Performance*

Final XGBoost model GridSearchCV Scores:

* F1: 0.81
* AUC: 0.82

Holdout

* F1: 0.80

* AUC: 0.82

*Model Interpretation*

For interpretation, I used a metric called SHAP to examine which features have higher importance for success. It shows that having small goal has positive impact on many campaigns, and larger goals have negative impact on small proportion of campaigns. Shorter preparation time can have negative impact on the campaigns. Being featured on Kickstarter makes a big difference for those that have it, but not getting it doesn’t hurt too much. Shorter campaigns do better than the longer ones. And choice of category can make a difference on the outcome.

## Tools and Approaches Used

Classification Algorithms and Metrics:

- KNN
- Logistic Regression
- Decision Tree, Random Forest
- Naive Bayes- Gaussian, Bernoulli
- XGBoost
- ROC-AUC curve, F1 score
- Confusion matrix

OtherL

* SQLite, sqlalchemy
* Pandas, numpy
* Matplotlib, Seaborn
* Tableau
* Scikit-learn
* Flask

## Communication

In addition to the slides and visual presented, the Flask app will be deploy on Heroku and shared on my blog.