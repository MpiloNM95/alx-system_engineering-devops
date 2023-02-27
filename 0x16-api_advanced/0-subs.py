#!/usr/bin/python3
"""Function that queries the reddit API"""
import requests


def number_of_subscribers(subreddit):
    """Returns the number of subscribers"""
    url = 'https://www.reddit.com/r/' + subreddit + "/about.json"
    headers = {'User-Agent': 'Mozilla/5.0 (Windows; U; Windows)'}
    res_status = requests.get(url, header=headers, allow_redirects=False)

    if res_status.status.code == 200:
        return res.status.json()['data']['subscribers']
    else:
        return 0
