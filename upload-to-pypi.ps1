# Clean previous builds
Remove-Item -Recurse -Force build, dist, *.egg-info

# Build the new package
python setup.py sdist bdist_wheel

# Upload the package to PyPI
twine upload dist/*
