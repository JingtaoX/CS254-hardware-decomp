import suffix_tree_extractor
import json


def load_data(filename):
    """ Load data from a JSON file. """
    try:
        with open(filename, 'r') as file:
            return json.load(file)
    except (FileNotFoundError, json.JSONDecodeError):
        return []  # Return an empty list if file does not exist or is empty

def save_data(filename, data):
    """ Save data to a JSON file. """
    with open(filename, 'w') as file:
        json.dump(data, file, indent=4)

def add_or_update_benchmark(data, name, force = 1):
    """ Add or update a benchmark item in the JSON file. """
    found = False
    if not force:
        for item in data:
            if item['name'] == name:
                found = True
                return # Do nothing if item already exists

    if not found:
        num, ast = suffix_tree_extractor.run(name)
        data.append({'name': name, 'num': num, 'ast': str(ast)})  # Add new item

    save_data(result_file, data)


if __name__ == '__main__':
    result_file = 'benchmarks.json'
    data = load_data(result_file)

    for item in data:
        print(f"{item['name']:<60}{item['num']}")
        if (len(str(item['ast'])) < 5000): print(str(item['ast']))
    exit()

    benchmark_file = 'BENCHMARKS-SMALL'
    with open(benchmark_file, 'r') as file:
        lines = [line.strip() for line in file]
        # print(lines)

    for name in lines:
        add_or_update_benchmark(data, name)


    # print(ast)

