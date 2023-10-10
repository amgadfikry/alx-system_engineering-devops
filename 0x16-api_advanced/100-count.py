#!/usr/bin/python3
""" module to get all hot posts on subreddit """
from requests import get


def recurse(subreddit, hot_list=[]):
    """ get all hot posts on provided subreddit
        Params:
            subreddit: subreddit provided to search in it
            hot_list: list of titles
        Return:
            list of all title of posts
    """
    if len(hot_list) > 0 and hot_list[0].find('after') != -1:
        after = hot_list[0]
    else:
        after = ''
    url = f'https://www.reddit.com/r/{subreddit}/hot.json{after}'
    header = {'User-Agent': 'Amgad_fikry_alx_task_2'}
    req = get(url, allow_redirects=False, headers=header)
    if req.status_code == 200:
        data = req.json().get('data')
        if len(hot_list) > 0:
            hot_list.pop(0)
        posts = data.get('children')
        for post in posts:
            hot_list.append(post.get('data').get('title'))
        if data.get('after') != 'null':
            hot_list.insert(0, f'?after={data.get("after")}')
            recurse(subreddit, hot_list)
            return hot_list
