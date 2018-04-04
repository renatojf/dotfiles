#!/bin/sh

echo "NB! This process could be too destructive sometimes and you may need to run 'bundle' command from your project directory."
echo "Do you want to cleanup all gemsets?"
read -p "(anything other than 'yes' will cancel) > " ANSWER

if [[ $ANSWER != "yes" ]]
  then
    echo "Phew...\nMay be another day."
  else
    for gemset in `ls $rvm_path/gems | grep @`
    do
      echo "Switching to gemset $gemset"
      rvm $gemset do gem cleanup
    done
    echo "\nAll gemsets are clean and shiny!"
fi

exit 0
