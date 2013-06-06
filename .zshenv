# zsh environment configurations

# Add aliases
alias ls="ls -GxF"

# MAVEN
export M2_HOME=~/Dropbox/apps/apache-maven-3.0.4/
export MAVEN_HOME=~/Dropbox/apps/apache-maven-3.0.4/

# JAVA
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home/
export JRE_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home/jre/

# RUBY
export RUBY_HEAP_MIN_SLOTS=5000000
export RUBY_GC_MALLOC_LIMIT=50000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1

# GIT
export GIT_USER=ggoodyer

# PATH
export PATH=$PATH:$MAVEN_HOME/bin/:$JAVA_HOME/bin/

# Custom Key.
ssh-add ~/.ssh/rs-dash.key > /dev/null 2>&1

# Add boxen to zsh environment
source /opt/boxen/env.sh


