# Kickstarter Campaign Success Prediction

ML Classification project

## Goal

The goal of this project is to predict the success of a Kickstarter campaign. The datasets used in this project came from Web Robots website from January through April 2021. I used various classification algorithms such as KNN, Logistic Regression, Decision Tree, Random Forest, Naive Bayes, and XGBoost. My final classification model was XGBoost that has a F1 score of 0.80 and AUC score of 0.82. The Model was interpreted using SHAP values metrics to understand which features have higher importance for success. Lastly, a Flask app was built using the final model after retraining it with the entire dataset.

To learn more, see my [blog post](https://crystalhuang-ds.medium.com/ml-classification-model-to-predict-kickstarter-campaign-success-128c8358f0d3) and [presentation slides](https://github.com/crystal-ctrl/classification_project/blob/main/Presentation.pdf) .

## Workflow

- Code (in [Workflow Folder](https://github.com/crystal-ctrl/classification_project/tree/main/Workflow))
  - Flask app (in [app Folder](https://github.com/crystal-ctrl/classification_project/tree/main/app))

## Technologies

* SQLite, sqlalchemy
* Python (Pandas, numpy)
* Matplotlib, Seaborn
* Tableau
* Scikit-learn
* Flask

## Approaches Used

Classification Algorithms:

- KNN
- Logistic Regression
- Decision Tree, Random Forest
- Naive Bayes- Gaussian, Bernoulli
- XGBoost

Metrics:

- ROC-AUC curve
- F1 score
- Confusion matrix