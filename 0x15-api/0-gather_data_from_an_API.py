#!/usr/bin/python3
""" module fot gather data from api """
from requests import get
from sys import argv


def main():
    """ main function to run as script not module """
    url_tasks = "https://jsonplaceholder.typicode.com/todos"
    tasks = get(url_tasks).json()
    url_users = "https://jsonplaceholder.typicode.com/users/{}".format(argv[1])
    user = get(url_users).json().get("name")
    all_tasks = 0
    done_tasks = 0
    done_list = []
    for t in tasks:
        if t.get("userId") == int(argv[1]):
            all_tasks += 1
            if t.get("completed"):
                done_tasks += 1
                done_list.append(t.get("title"))
    print("Employee {} is done with tasks({}/{})".format(
        user, done_tasks, all_tasks))
    for d in done_list:
        print("\t {}".format(d))


if __name__ == "__main__":
    main()
