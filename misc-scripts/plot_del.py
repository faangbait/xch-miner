#!/usr/bin/python3

import csv, os

LOW_PLOT_THRESHOLD = 70

invalid_plots = set([])
low_plots = set([])
ok_plots = set([])

with open('verify.txt') as csvfile:
    plotreader = csv.reader(csvfile, delimiter=',')
    for name,result in plotreader:
        if not result:
            print(f"INVALID\t{name}")
            invalid_plots.add(name)
        elif int(result.rstrip("%")) < LOW_PLOT_THRESHOLD:
            print(f"LOW\t{name}")
            low_plots.add(name)
        else:
            print(f"OK\t{name}")
            ok_plots.add(name)

    print("INVALID PLOTS:".center(80,'-'))
    print("\n".join(invalid_plots))

    print("LOW PLOTS:".center(80,'-'))
    print("\n".join(low_plots))

    print("OK PLOTS:".center(80,'-'))
    print("\n".join(ok_plots))


    delete_invalid = input("Delete INVALID plots? Type 'yes' to delete: ")
    if delete_invalid == "yes":
        for name in invalid_plots:
            print(f"Deleting {name}")
            if os.path.exists(name):
                os.remove(name)
    else:
        print("Not deleting INVALID plots.")

    delete_low = input("Delete LOW plots? Type 'yes' to delete: ")
    if delete_low == "yes":
        for name in low_plots:
            print(f"Deleting {name}")
            if os.path.exists(name):
                os.remove(name)
    else:
        print("Not deleting LOW plots.")
