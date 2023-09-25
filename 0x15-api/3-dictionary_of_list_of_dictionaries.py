#!/usr/bin/python3
""" module fot gather data from api """
from requests import get
import json


def main():
    """ main function to run as script not module """
    url_tasks = "https://jsonplaceholder.typicode.com/todos"
    tasks = get(url_tasks).json()
    url_users = "https://jsonplaceholder.typicode.com/users"
    users = get(url_users).json()
    obj = {}
    for u in users:
        obj[u.get("id")] = []
        for t in tasks:
            if t.get("userId") == u.get("id"):
                obj_in = {"username": u.get("username"),
                          "task": t.get("title"),
                          "completed": t.get("completed")
                          }
                obj[u.get("id")].append(obj_in)
    obj_j = json.dumps(obj)
    with open("todo_all_employees.json", "w") as f:
        f.write(obj_j)


if __name__ == "__main__":
    main()
