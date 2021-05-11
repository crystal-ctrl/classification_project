# MVP

The goal of the project is to predict the success of a Kickstarter campaign.

The baseline classification model was built with small subset of features (goal in USD, in US, campaign duration) which has F1 score of 0.75 and ROC score of 0.65.

After experimenting with different subsets of features, the model performed best with all the features, which has F1 score of 0.77 and ROC score of 0.77. Confusion matrix shown as below.

![](https://github.com/crystal-ctrl/classification_project/blob/main/images/confusion%20matrix_lr.png)

Comparing different models, Random Forest outperforms the other models with an AUC score of 0.79 and Logistic Regression has the second highest AUC score.

![](https://github.com/crystal-ctrl/classification_project/blob/main/images/model%20comparison.png)

My next step is to try tuning the hyperparameters for Logistic Regression and Random Forest models to see if I can get a better result. I will also try out XGBoost for any improvement on model performance.

