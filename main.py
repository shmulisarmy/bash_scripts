import yaml

data = open("main.yaml", "r")
data = yaml.load(data, Loader=yaml.FullLoader)

for key, value in data.item():
    print(f"{key = } {value = }")