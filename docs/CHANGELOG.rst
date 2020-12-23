
Changelog
=========

`0.2.3 <https://github.com/saltstack-formulas/openntpd-formula/compare/v0.2.2...v0.2.3>`_ (2020-12-23)
----------------------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **map:** use top-level ``values:`` key in ``map.jinja`` dumps (\ `264445b <https://github.com/saltstack-formulas/openntpd-formula/commit/264445b3180f9ccea69874858b626101f28f54b6>`_\ )

`0.2.2 <https://github.com/saltstack-formulas/openntpd-formula/compare/v0.2.1...v0.2.2>`_ (2020-12-22)
----------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **commitlint:** ensure ``upstream/master`` uses main repo URL [skip ci] (\ `2372d07 <https://github.com/saltstack-formulas/openntpd-formula/commit/2372d07ba34c8d0eeaf2f53dc056a77e768f64e3>`_\ )
* **gitlab-ci:** add ``rubocop`` linter (with ``allow_failure``\ ) [skip ci] (\ `1e0fbe5 <https://github.com/saltstack-formulas/openntpd-formula/commit/1e0fbe57992ba7325332621983132e7bee304acc>`_\ )
* **gitlab-ci:** use GitLab CI as Travis CI replacement (\ `2a686fe <https://github.com/saltstack-formulas/openntpd-formula/commit/2a686fef9ab853731936cc09527766b2ac1455dc>`_\ )
* **pre-commit:** add to formula [skip ci] (\ `b682131 <https://github.com/saltstack-formulas/openntpd-formula/commit/b6821311395ed78c6f4106f52973e3d7c7e6e87a>`_\ )
* **pre-commit:** enable/disable ``rstcheck`` as relevant [skip ci] (\ `a710834 <https://github.com/saltstack-formulas/openntpd-formula/commit/a710834c01b24a938015320495c684d62b76e9d2>`_\ )
* **pre-commit:** finalise ``rstcheck`` configuration [skip ci] (\ `1eed3db <https://github.com/saltstack-formulas/openntpd-formula/commit/1eed3db0f4b7902d7c29b99a0246f16703e4eea4>`_\ )

Tests
^^^^^


* **_mapdata:** fix existing verification files (\ `4f6d735 <https://github.com/saltstack-formulas/openntpd-formula/commit/4f6d73509cd880379befe125d762eaf401756513>`_\ )
* **_mapdata:** generate remaining verification files (\ `64ae00d <https://github.com/saltstack-formulas/openntpd-formula/commit/64ae00d2fa97788ff618438ca70977e77dc620b8>`_\ )
* **map:** standardise ``map.jinja`` verification (\ `7580eaf <https://github.com/saltstack-formulas/openntpd-formula/commit/7580eaf0fba3bb57c524cf0b33dbbb1603e8e0d0>`_\ )

`0.2.1 <https://github.com/saltstack-formulas/openntpd-formula/compare/v0.2.0...v0.2.1>`_ (2020-09-10)
----------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **state:** restart service when configuration has changed (\ `9fc8fbd <https://github.com/saltstack-formulas/openntpd-formula/commit/9fc8fbda597d4acb603997080643125725d8ef37>`_\ )

`0.2.0 <https://github.com/saltstack-formulas/openntpd-formula/compare/v0.1.2...v0.2.0>`_ (2020-08-25)
----------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **map:** sync map.jinja with template-formula (\ `ed386a8 <https://github.com/saltstack-formulas/openntpd-formula/commit/ed386a83658feac22bdab86c5b5e802b29c30092>`_\ )

Tests
^^^^^


* **_mapdata:** update for merging from test pillar (\ `aec6af0 <https://github.com/saltstack-formulas/openntpd-formula/commit/aec6af0054b9b8fffc81c780849d6704461f7dfa>`_\ )

`0.1.2 <https://github.com/saltstack-formulas/openntpd-formula/compare/v0.1.1...v0.1.2>`_ (2020-08-25)
----------------------------------------------------------------------------------------------------------

Tests
^^^^^


* **map:** verify ``map.jinja`` dump using ``_mapdata`` state (\ `80c4eaa <https://github.com/saltstack-formulas/openntpd-formula/commit/80c4eaa9b083be33790374cc24af5f759809e88b>`_\ )

`0.1.1 <https://github.com/saltstack-formulas/openntpd-formula/compare/v0.1.0...v0.1.1>`_ (2020-08-14)
----------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **salt-lint:** fix all violations (\ `7135a97 <https://github.com/saltstack-formulas/openntpd-formula/commit/7135a975d14674eb056e10401f1db461782a3060>`_\ )
* **yamllint:** fix violations (\ `dba380e <https://github.com/saltstack-formulas/openntpd-formula/commit/dba380e7ceaa18a56078f656dbe8a619bb5964f9>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** add Kitchen tests (\ `0e4672c <https://github.com/saltstack-formulas/openntpd-formula/commit/0e4672cf7508847c5a6a20169a320d5d3393e729>`_\ )
