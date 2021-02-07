# Getting started

1. Clone the repo 
   
   ```sh
   git clone --bare git@github.com:benesgarage/dotconf.git $HOME/.dotconf
   ```

2. Overwrite all your current config files  
   
   ```sh
   git --git-dir=/home/benes/.dotconf/ --work-tree=/home/benes reset HEAD .
   ```
   
3. Install all of your favorite software 
   
   ```sh
   make -f ~/.bootstrap/Makefile up
   ```
   
Done! Now get to work!
