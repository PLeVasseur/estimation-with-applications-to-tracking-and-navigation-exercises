Jupyter notebooks created while working through [Estimation with Applications to Tracking and Navigation](#barshalom).

# How to View the Jupyter Notebook

The suggested steps are as follows
1. Install Anaconda. Anaconda is a great way to manage Python dependencies.
2. Put conda on your path from where it's installed
3. Create an Anaconda environment that has all dependencies needed for this Jupyter Notebook
```bash
cd $HOME/estimation-with-applications-to-tracking-and-navigation-exercises
conda env create -f environment.yml
```
4. Activate the environment
```bash
conda activate kf_bf
```
5. Open the Jupyter Notebook
```bash
jupyter notebook
```

# How to Build PDFs and Static HTML from Jupyter Notebooks

Run `./gen-pdfs.sh` to generate PDFs from Jupyter Notebooks

## Depends on a valid XeLaTeX install

The easiest way to go about this is to

```bash
sudo apt-get install texlive-xetex \
                     texlive-latex-recommended \
                     pandoc
```

# How to Automatically Build Fresh PDFs and Static HTML on git commit

Run `./githooks-init.sh` to set up your git hooks such that on a `git commit` fresh PDFs and HTML pages will be created.

# References

<a id="barshalom"></a>Y. Bar-Shalom, X. R. Li, T. Kirubarajan, Estimation with Applications to Tracking and Navigation: Theory Algorithms and Software, New York:Wiley, 2001.