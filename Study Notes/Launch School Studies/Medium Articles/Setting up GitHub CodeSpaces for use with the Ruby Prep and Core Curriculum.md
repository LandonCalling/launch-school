- What is it?
  - A development environment like Amazon's cloud9.
  - Hosted by GitHub in a Docker container running on a virtual machine.
  - Virtual Machine types
    - processer choices - 2 up to 32 cores
    - ram choices - 8 up to 64 GB
    - storage choices - 32 up to 128 GB
  - Default setup is Ubuntu Linux
    - options for other linux distributions
    - can configure it to suit your needs
    - 
- How to set it up
  - Three main ways
    - Based on an existing repository
    - From a template repository
    - From a blank environment
- Configuring your new development environment
- Tips
  - The default  timeout is 30 minutes.  This applies while you have the development environment open, as well as after you close the window the development environment is in.  So your code hour usage will continue to tick for 30 minutes after you close the window.  To reduce the amount of time that the VM sits idle and accruing charges, change the default timeout, and remember to stop the codespace before exiting the window.
  - To stop the instance while inside the codespace, open the command palette (F1) and search the word 'stop'.  Select the option Codespaces:Stop Current Codespace.  This will bring up a menu listing all of your currently active codespaces.  Click on the codespace you want to close.
- Pricing
  - Free tier: 120 core hours, 15GB storage per month
  - Pro tier: 180 core hours, 20GB storage per month
  - Price per hour over Tier limit is (num of cores * .09).  So a 2 core VM would accrue at a rate of .18 per hour over.
      - The default spending limit on your codespaces account is 0.  If you want to allow overages and overage charges, you must set a non-zero spending limit.
  -  Overage charges for storage are $.07 per GB per month
  - Core hours are charged at a a rate of (num of cores * actual hours used in the codespace)