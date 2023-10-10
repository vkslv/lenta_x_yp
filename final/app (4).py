import requests
import pandas as pd
import os
import logging
from http import HTTPStatus
from datetime import datetime, timedelta, date


from model import forecast
#from config import settings

api_port = os.environ.get("API_PORT", "8000")
api_host = os.environ.get("API_HOST", "127.0.0.1")

_logger = logging.getLogger(__name__)

sales_df_train = pd.read_csv('D:\\yandex\\sp_sales_task\\sales_df_train.csv')
pr_df = pd.read_csv('D:\\yandex\\sp_sales_task\\pr_df.csv')
st_df = pd.read_csv('D:\\yandex\\sp_sales_task\\st_df.csv')

full_df = sales_df_train.merge(st_df, on='st_id')
full_df = full_df.merge(pr_df, on='pr_sku_id')


#def setup_logging():
    #_logger = logging.getLogger(__name__)
    #_logger.setLevel(logging.DEBUG)
    #handler_m = logging.StreamHandler()
    #formatter_m = logging.Formatter(settings.FORMAT)
    #handler_m.setFormatter(formatter_m)
    #_logger.addHandler(handler_m)


def get_address(resource):
    return f"http://{api_host}:{api_port}/api/{resource}"


def get_shops():
    shops_url = get_address(settings.URL_SHOPS)
    resp = requests.get(shops_url)
    if resp.status_code != HTTPStatus.OK:
        _logger.warning("Could not get shops list")
        return []
    return resp.json()["results"]


def get_sales(shop=None, sku=None):
    sale_url = get_address(settings.URL_SALES)
    params = {}
    if shop is not None:
        params["name"] = shop
    if sku is not None:
        params["sku"] = sku
    resp = requests.get(sale_url, params=params)
    if resp.status_code != HTTPStatus.OK:
        _logger.warning("Could not get sales history")
        return []
    return resp.json()["data"]


def get_product_info():
    categs_url = get_address(settings.URL_CATEGORIES)
    resp = requests.get(categs_url)
    if resp.status_code != HTTPStatus.OK:
        _logger.warning("Could not get category info")
        return {}
    return {el["sku"]: el for el in resp.json()["data"]}


def create_new_table(df):
    # Выбираем столбцы 'st_id' и 'pr_sku_id' и удаляем дубликаты
    new_df = full_df.drop_duplicates(subset=['st_id', 'pr_sku_id'])
    new_df.loc[:, 'date'] = pd.to_datetime(new_df['date'])

    # st_id pr_sku_id
    return new_df

def main():
    new_df = create_new_table(full_df)
    sales_submission_fin = forecast(new_df)
    new_df.to_csv('D:\\yandex\\sp_sales_task\\new_df.csv', index=False)
    sales_submission_fin.to_csv('D:\\yandex\\sp_sales_task\\sales_submission_fin.csv', index=False)

if __name__ == "__main__":
    #setup_logging()
    main()
