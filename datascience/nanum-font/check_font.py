import matplotlib.font_manager as fm

fm._rebuild()

fonts = [(f.name, f.fname) for f in fm.fontManager.ttflist if 'Nanum' in f.name]

for (name, fname) in fonts:
    print(name,': ',fname)
