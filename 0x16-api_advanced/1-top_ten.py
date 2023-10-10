#!/usr/bin/python3
""" module to get all first tenhot posts on subreddit """
from requests import get


def top_ten(subreddit):
    """ get first ten hot posts on provided subreddit
        Params:
            subreddit: subreddit provided to search in it
        Return:
            print ten hot posts if valid subreddit
            or print none if not vaild subreddit
    """
    url = f'https://www.reddit.com/r/{subreddit}/hot.json?limit=9'
    header = {'User-Agent': 'Amgad_fikry_alx'}
    req = get(url, allow_redirects=False, headers=header)
    if req.status_code == 200:
        data = req.json().get('data').get('children')
        for post in data:
            print(post.get('data').get('title'))
    else:
        print(None)
