# -*- coding: utf-8 -*-

import os
import sys
import re

DOC_ROOT = os.path.abspath(os.path.dirname(__file__))
APP_DIR = os.path.abspath(DOC_ROOT + '../../../app')

project = 'Administration GBD Biotopmanager'
copyright = '2021, Geoinformatikbüro Dassau GmbH'
author = 'Geoinformatikbüro Dassau GmbH'

sys.path.insert(0, APP_DIR)
sys.path.insert(0, DOC_ROOT)

extensions = [
    # 'sphinx.ext.autodoc',
    # 'sphinx.ext.autosummary',
    'sphinx.ext.doctest',
    'sphinx.ext.intersphinx',
    'sphinx.ext.todo',
    'sphinx.ext.coverage',
    'sphinx.ext.ifconfig',
    'sphinx.ext.viewcode',
]

templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
language = 'en'
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']
pygments_style = 'sphinx'

html_theme = "sphinx_rtd_theme"
html_theme_options = {}
html_static_path = ['_static']
html_sidebars = {}
html_show_sourcelink = False

intersphinx_mapping = {'https://docs.python.org/': None}
todo_include_todos = True

keep_warnings = True


def replace_vars(app, docname, source):
    for k, v in globals().items():
        if isinstance(v, str):
            source[0] = source[0].replace('{' + k + '}', v)


def replace_tables(app, docname, source):
    def _table(m):
        cc = m.group(1).strip().split('\n')
        cc = ['   ' + s.strip() for s in cc]

        return '\n'.join(
            [
                '.. csv-table::',
                '   :delim: ~',
                '   :widths: auto',
                ''
            ] + cc)

    source[0] = re.sub(r'(?s)TABLE(.+?)/TABLE', _table, source[0])

