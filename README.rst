openntpd
========
Install and configure an openntpd server.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``openntpd``
------------

Installs the ``openntpd`` server package and service.

``openntpd.config``
-------------------

Installs the openntpd daemon configuration file included in this formula (under
"openntpd/files"). This configuration file is populated by values from pillar. 
