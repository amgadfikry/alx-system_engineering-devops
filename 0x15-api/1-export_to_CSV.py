#!/usr/bin/python3
""" module fot gather data from api """
from requests import get
from sys import argv


def main():
    """ main function to run as script not module """
    url_tasks = "https://jsonplaceholder.typicode.com/todos"
    tasks = get(url_tasks).json()
    url_users = "https://jsonplaceholder.typicode.com/users/{}".format(argv[1])
    user = get(url_users).json().get("username")
    with open("{}.csv".format(argv[1]), "a") as f:
        for t in tasks:
            if t.get("userId") == int(argv[1]):
                line = '"{}","{}","{}","{}"\n'.format(
                    argv[1], user, t.get("completed"), t.get("title"))
                f.write(line)


if __name__ == "__main__":
    main()
