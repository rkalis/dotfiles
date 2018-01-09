# Taken from: https://gist.github.com/jaimergp/0af35f11155677cc8db6

# Autocompletions for conda commands
# Place this file in ~./config/fish/completions/

# Original implementations, but slow
# function __fish_conda_commands
#   command conda help | awk '/^    \S/ {print $1}'
# end
# function __fish_conda_envs
#   command conda env list | awk 'NR > 2 {print $1}'
# end


# Faster but less tested (?)
function __fish_conda_commands
  command ls --color=none (conda info --root)/bin/conda-* | sed -r 's/^.*conda-([a-z]+)/\1/'
end

function __fish_conda_envs
  command echo root ;and ls -1 --color=none (conda info --root)/envs/
end

function __fish_conda_packages
  command conda list | awk 'NR > 2 {print $1}'
end

function __fish_conda_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'conda' ]
    return 0
  end
  return 1
end

function __fish_conda_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

# Conda commands
complete -f -c conda -n '__fish_conda_needs_command' -a '(__fish_conda_commands)'

# Command needs env as parameter
complete -f -c conda -n '__fish_conda_using_command activate' -a '(__fish_conda_envs)' -d 'Activate an environment'

# Command needs package as parameter
complete -f -c conda -n '__fish_conda_using_command remove' -a '(__fish_conda_packages)' -d 'Uninstall a package'
complete -f -c conda -n '__fish_conda_using_command upgrade' -a '(__fish_conda_packages)' -d 'Update a package'
complete -f -c conda -n '__fish_conda_using_command update' -a '(__fish_conda_packages)' -d 'Update a package'
