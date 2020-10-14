import requests as req
from bs4 import BeautifulSoup as bs

URL = "https://www.amazon.com/Razer-BlackWidow-Lite-Detachable-Tenkeyless/dp/B07JGDDWDN/ref=sr_1_2?crid=XO9P73H79RME&dchild=1&keywords=razer+mechanical+keyboard&qid=1602356895&sprefix=razer+mecha%2Caps%2C285&sr=8-2"

headers = {"User-Agent": 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Brave Chrome/84.0.4147.125 Safari/537.36'}

page = req.get(URL, headers=headers)
soup = bs(page.content, 'html.parser')

title = soup.find(id="productTitle")
price = soup.find(id="priceblock_ourprice")

print(price)
