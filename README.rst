Ansible scripts for CKAN deployment to opendata.gov.lt

How to set up local development environment
===========================================

Install CKAN locally::

  make local

Run CKAN development server::

  make run


How to deploy CKAN
==================

Run::

  make <env> deploy

For example::

  make staging deploy
  make prod deploy
