import catboost
import numpy as np
import pandas as pd
from datetime import datetime, timedelta

model = catboost.CatBoostRegressor()
model.load_model('catboost_model.cbm')


def forecast(df):
    df_copy = df.copy()  # Создаем копию DataFrame
    df_copy['day_of_week'] = df_copy['date'].dt.dayofweek
    df_copy['month'] = df_copy['date'].dt.month
    df_copy['weekend'] = 0
    df_copy.loc[df_copy['day_of_week'].isin([6, 7]), 'weekend'] = 1

    columns_to_drop = ['pr_sales_in_rub', 'pr_promo_sales_in_rub', 'pr_promo_sales_in_units', 'pr_sales_in_units']

    df = df.drop(columns_to_drop, axis=1)

    # Получаем сегодняшнюю дату
    today = datetime.now().date()

    # Проходимся по 14 дням и делаем предсказания
    for i in range(1, 15):
        forecast_date = today + timedelta(days=i)

        # Делаем предсказание
        df_copy['target'] = model.predict(df_copy)

        # Сохраняем предсказание в новом столбце
        df_copy[f'forecast_{forecast_date}'] = df_copy['target']

    # Удаляем временный столбец 'target'
    df_copy.drop(columns=['target'], inplace=True)

    return df_copy

def fag():
    df['target'] = model.predict(df)
    columns = ['st_id', 'pr_sku_id', 'date','target']
    sales_sub = df[columns]
    return sales_sub