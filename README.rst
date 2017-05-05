Ansible scripts for CKAN deployment to opendata.gov.lt


Trhoubleshooting
================

Error while loading pylonsmyghty entry point
--------------------------------------------

The error::

    RuntimeWarning: Unable to load template engine entry point: 'pylonsmyghty = pylons.templating:MyghtyTemplatePlugin [myghty]':
    Traceback (most recent call last):
      File "/usr/lib/ckan/default/lib/python2.7/site-packages/pylons/templating.py", line 610, in <module>
        Engine = entry_point.load()
      File "/usr/lib/ckan/default/lib/python2.7/site-packages/pkg_resources/__init__.py", line 2228, in load
        self.require(*args, **kwargs)
      File "/usr/lib/ckan/default/lib/python2.7/site-packages/pkg_resources/__init__.py", line 2245, in require
        items = working_set.resolve(reqs, env, installer)
      File "/usr/lib/ckan/default/lib/python2.7/site-packages/pkg_resources/__init__.py", line 808, in resolve
        if not req_extras.markers_pass(req):
      File "/usr/lib/ckan/default/lib/python2.7/site-packages/pkg_resources/__init__.py", line 993, in markers_pass
        return not req.marker or any(extra_evals) or req.marker.evaluate()
      File "/usr/lib/ckan/default/lib/python2.7/site-packages/pkg_resources/_vendor/packaging/markers.py", line 278, in evaluate
        return _evaluate_markers(self._markers, current_environment)
      File "/usr/lib/ckan/default/lib/python2.7/site-packages/pkg_resources/_vendor/packaging/markers.py", line 203, in _evaluate_markers
        lhs_value = _get_env(environment, lhs.value)
      File "/usr/lib/ckan/default/lib/python2.7/site-packages/pkg_resources/_vendor/packaging/markers.py", line 185, in _get_env
        "{0!r} does not exist in evaluation environment.".format(name)
    UndefinedEnvironmentName: 'extra' does not exist in evaluation environment.

      import pylons.templating

    Target WSGI script '/etc/ckan/default/apache.wsgi' cannot be loaded as Python module.

Solution::

  pip install setuptools==20.4

Source: https://github.com/getsentry/sentry/issues/3143#issuecomment-243437541
