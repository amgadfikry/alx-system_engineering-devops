#!/usr/bin/python3
""" module fot gather data from api """
from requests import get
from sys import argv
import json


def main():
    """ main function to run as script not module """
    url_tasks = "https://jsonplaceholder.typicode.com/todos"
    tasks = get(url_tasks).json()
    url_users = "https://jsonplaceholder.typicode.com/users/{}".format(argv[1])
    user = get(url_users).json().get("username")
    with open("{}.json".format(argv[1]), "w") as f:
        obj = {argv[1]: []}
        for t in tasks:
            if t.get("userId") == int(argv[1]):
                obj_in = {"task": t.get("title"),
                          "completed": t.get("completed"),
                          "username": user
                          }
                obj[argv[1]].append(obj_in)
        obj_j = json.dumps(obj)
        f.write(obj_j)


if __name__ == "__main__":
    main()
