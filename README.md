# OpenCV-4-build-script-on-Raspbian-Stretch
Simple script that builds OpenCV on Raspbian Stretch.
OpenCV will be Installed for use python 3 on virtualenv cv.

## Usage
### Build and install OpenCV
```$ ./build-OpenCV.sh```
### Use OpenCV
Enter virtualenv.  
```$ source ~/.profile```  
```$ workon cv```

Run demo.py  
```$ cd ~/Downloads/opencv/samples/python```  
```$ python demo.py```


Confirmed with  
- Raspbian Stretch with desktop Version:November 2018
- OpenCV 4.0.1
- Python 3.5.3