- [69 cent tour of git](#org265242d)
  - [version 0.1](#org4fe357a)
  - [some stops on the tour](#orgea4347e)
    - [working with an existing git repo, e.g.](#org325ad69)
    - [initialize a new git repo](#orgec0a2d9)
    - [starting with existing github repo raku-study](#orgd2af919)
    - [continuing with a new git repo](#org7d11c1a)
    - [the cool stuff](#org3862776)
    - [things you will not do with git](#org6a4bd02)


<a id="org265242d"></a>

# 69 cent tour of git


<a id="org4fe357a"></a>

## version 0.1


<a id="orgea4347e"></a>

## some stops on the tour


<a id="org325ad69"></a>

### working with an existing git repo, e.g.

1.  <https://github.com/doomvox/raku-study>

2.  set-up to do if not done already:

    1.  create a github account
    
    2.  get added to raku-study as a collaborator
    
        1.  Settings->Manage Access->Invite a collaborator
    
    3.  share your public ssh key (rsa, not dsa) at your github account
    
        1.  picture button (top-right)->Settings (near bottom)->SSH and GPG keys->New SSH key button (uppper right)
        
        2.  Add your "ssh-rsa" from: ~/.ssh/id<sub>rsa.pub</sub>
        
            1.  if you don't have one yet, run:
            
                ```perl6
                ssh-keygen -t rsa
                ```

3.  go to the "Code" button near the right, click for the drop-down

4.  with the SSH tab selected (the default) you'll see:

    ```sh
    git@github.com:doomvox/raku-study.git
    ```

5.  create a location to work, e.g.:

    ```perl6
    mkdir /tmp/dev
    cd /tmp/dev
    ```

6.  use git

    ```perl6
    git clone git@github.com:doomvox/raku-study.git
    ```


<a id="orgec0a2d9"></a>

### initialize a new git repo

1.  working standalone

    1.  git add
    
    2.  git status
    
    3.  .gitignore
    
        ```sh
        *~   
        *#* 
        *.[oa]
        ```
    
    4.  .git/info/exclude
    
    5.  git commit
    
    6.  git diff
    
    7.  git log
    
        1.  note: no sequential numbers, "commits" are
        
        2.  SHA1 hashes of information in tree


<a id="orgd2af919"></a>

### starting with existing github repo raku-study

1.  create an account at github

    1.  have me assign you commit privs to raku-study

2.  pull a copy

3.  edit a file, push changes

4.  create a file, push changes

5.  resolving a merge conflict


<a id="org7d11c1a"></a>

### continuing with a new git repo

1.  creating a new project at github

2.  associating existing repo with new project

    See: /home/doom/End/Cave/Ice/Xtal/Git/github.org


<a id="org3862776"></a>

### the cool stuff

1.  git branch

2.  github pull request

3.  this shit **is** cool, but it can get complicated

    <http://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging>
    
    1.  "Pro Git" by Scott Chacon and  Ben Straub
    
        Can read on-line, also via (spit) Amazon Source is at github: <https://github.com/progit/progit2>


<a id="org6a4bd02"></a>

### things you will not do with git

1.  work with binary files

    (compiled code, media files, ms word docs, etc)

2.  control your entire home directory

3.  set up a meta-git repository that contains multiple git projects.

4.  share work with another person without using a server
