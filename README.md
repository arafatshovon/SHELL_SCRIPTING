# A Begineer's Shell Scripting

I created this repository to learn shell scripting. I am new in Linux OS system and I am exploring the everything that I see and hear from others.  
I am a noob here, so please don't judge me !!!!  
I am following some free books. You can find the links of the books down here.
# Books  
| Name | Links |  
|:----:|:-----:|  
|Linux Shell Scripting Cookbook | [**Link To Book**](https://fac.iitg.ac.in/asahu/cs241-2018/A3/Linux.Shell.Scripting.Cookbook.pdf) |  
|Introduction to Bash Scripting | [**Link To Book**](https://github.com/bobbyiliev/introduction-to-bash-scripting?tab=readme-ov-file) |  

# SHELL
**I have used the BASH (Bourne Again SHELL) for practice. You Can choose your own. zsh can be a good option**  

# A Sample Shell Script

```
print_red_line()
{
    lines=$@
    for line in lines;
    do
        echo -e "\e[1;31m $line \e[0m]"
    done
}

print_red_line "Hello World !!!!"
```


 
 

