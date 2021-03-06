# Steps for setting up Python environment

0. Install Anaconda (Optional, if you do not do this step, skip to step 4) Download the Python 3.7 version <a href=https://www.anaconda.com/download/>here</a>.  Anaconda is a Python environment 
manager that is useful for setting up and configuring Python environments.  If you currently do not have Python on your computer, this would 
be a good place to start.  If you currently have python installed, you might have to uninstall it to avoid conflicts during the 
Anaconda setup, or you can skip using Anaconda altogether.  For Window's users, <b>make sure to check the box that says 
"Add Anaconda to my PATH environment variable" during setup</b>.  If you forget to do this, you will have to add Anaconda to your system path manually.  This is what allows us to call Anaconda from the command line.
1. Check that Anaconda is installed.  In the terminal run `conda info`.  If you have an error here, let me know!
2. Create an python environment.  In the terminal type `conda create -n style python=3.7`, where `style` is the name of the python environment.  You can name the environment anything you'd like.
3. Activate your environment.  In the terminal type `activate style` in Windows or `source activate style` on unix based systems.  You should now see your environment name in the terminal, like `(style)`.
4. Install required libraries.  At this point, you should either have python already installed or be within an Anaconda python environment. <br />
    a. Check to see if you have pip installed by doing `pip -v`.  If you do not have pip you can find it <a href=https://pip.pypa.io/en/stable/installing/>here</a>.
    <br />
    b. Install <b>Tensorflow</b>.  This is the most commonly used deep learning library, and is what we built our style transfer model on top of.
    In Windows, type `pip install --ignore-installed --upgrade tensorflow`, in all other systems, type `pip install tensorflow`.
    <br />
    c. Install <b>Keras</b>.  Keras is a library that was built on top of Tensorflow for creating simpler deep learning models.  We use Keras to download VGGNet16, which is a deep convolutional neural network that we use to learn the style of different painters.
    <br />
    d. Install <b>Pillow</b>.  We use Pillow to open images efficiently.  You can install it by typing `pip install Pillow` in the command line.
    <br />
    e. Install <b>SciPy</b>.  SciPy is an amazing library full of many different scientific computing methods for Python.  In this project, we need SciPy for one of it's optimizer functions for training our neural network, We also use it to save images the images after we finished. 
5. All done!  You can now toggle your environment by typing `source deactivate style` on unix or `deactivate style` on windows.  Once you are out of the environment, just type `source activate style` or `activate style` to reactivate it.
6. To run the style transfer program, activate your Python environment in the terminal and then type `python main.py [content_image] [style_image] [result_dest]`.
    
