#!/usr/bin/env python

from setuptools import setup

setup(name='version_control',
      version='1.0',
      description='A version controlled bundle of Python packages',
      author='Team LibreELEC',
      url=' https://libreelec.tv',
      py_modules = ['dummy'],
      install_requires=[
          "PyNaCl==1.1.2",
          "cryptography>=2.0.3",
          "pycparser==2.18",
          "asn1crypto==0.22.0",
          "enum34==1.1.6",
          "idna==2.6",
          "iso8601==0.1.12",
          "six==1.11.0",
          "ipaddress==1.0.18",
          "natsort==5.1.0",
          "tuf==0.10.0",
          "pycryptodome==3.4.7"
        ],
     )
