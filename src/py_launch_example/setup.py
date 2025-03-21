from setuptools import setup
import os
from glob import glob
from setuptools import find_packages, setup

package_name = 'py_launch_example'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
	(os.path.join('share', package_name), glob('launch/*launch.py')) 
],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='user',
    maintainer_email='jjhollad@mtu.edu',
    description='TODO: simple launch',
    license='Apache-2.0',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
		'demo_sweep = py_launch_example.demo_sweep:main',
        ],
    },
)
