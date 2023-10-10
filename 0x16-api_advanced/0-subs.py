#!/usr/bin/python3
""" module to get all available users on subreddit """
from requests import get


def number_of_subscribers(subreddit):
    """ get all available users on provided subreddit
        Params:
            subreddit: subreddit provided to search in it
        Return:
            numbers of subscribers if valid subreddit
            or 0 if not vaild subreddit
    """
    url = f'https://www.reddit.com/r/{subreddit}/about.json'
    header = {'User-Agent': 'Amgad_fikry_alx'}
    req = get(url, allow_redirects=False, headers=header)
    if req.status_code == 200:
        data = req.json()
        return data.get('data').get('subscribers')
    else:
        return 0
