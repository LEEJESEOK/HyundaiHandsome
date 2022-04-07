import os
import requests
from bs4 import BeautifulSoup

path, filename = os.path.split(os.path.abspath(__file__))
out = open(path+'/insert fashion brand.sql', 'w', encoding='utf-8')


url = 'https://www.handsome.co.kr/ko/brand/fashion.do'
response = requests.get(url)
html = response.text
soup = BeautifulSoup(html, 'html.parser')

# 브랜드관 이름
nameList = soup.findAll('p', {'class': 'brandName'})
for i, e in enumerate(nameList):
    nameList[i] = e.get_text().replace("'", "''")


ssList = soup.findAll('p', {'class': 'brandSS'})
for i, e in enumerate(ssList):
    ssList[i] = e.get_text().replace("'", "''")

descList = soup.findAll('span', {'class': 'brandDesc'})
for i, e in enumerate(descList):
    descList[i] = e.get_text().replace('\t', '').replace(
        '\r\n', '\n').replace('\n', '', 1).replace("'", "''")

# 브랜드관 링크
buttons = soup.findAll('button', {'class': 'btn btn-block btnPop'})


print('set define off', file=out)
for name, ss, desc, button in zip(nameList, ssList, descList, buttons):
    sql = "INSERT INTO brand (ID, TYPE, NAME, SS, DESCRIPTION, MALL_TYPE, MALL_ID)" + \
        "\n       VALUES" + \
        "\n       (brand_seq.NEXTVAL, " + \
        "\n       (" + \
        "\n       SELECT DISTINCT " + \
        "\n          id " + \
        "\n       FROM" + \
        "\n          brand_type " + \
        "\n       WHERE" + \
        "\n          name LIKE 'fashion'" + \
        "\n       )," + \
        "\n       '" + name + "'," + \
        "\n       '" + ss + "'," + \
        "\n       '" + desc + "', " +\
        "\n(" +\
        "select id from mall_type where name = '" + \
        button['onclick'][10:12] + "'), '" + \
        button['onclick'][14:-3] + "'); "

    print(sql, file=out)
print('set define on', file=out)
