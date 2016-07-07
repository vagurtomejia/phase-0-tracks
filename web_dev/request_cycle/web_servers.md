Release 1: Research Web Servers
===============================
###What are some of the key design philosophies of the Linux operating system?
According to [this article](https://opensource.com/business/15/2/how-linux-philosophy-affects-you), there are nine major tenets to the Linux philosophy:

+ Small is Beautiful
+ Each Program Does One Thing Well
+ Prototype as Soon as Possible
+ Choose Portability Over Efficiency
+ Store Data in Flat Text Files
+ Use Software Leverage
+ Use Shell Scripts to Increase Leverage and Portability
+ Avoid Captive User Interfaces
+ Make Every Program a Filter

###In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
It is a partition method of a server in many virtual independent servers that each has the the characteristics of a dedicated server, usinf virtualization techniques.

The advantages of using a VPS are:

+ to improve the security : if an application, the web server for example, is damaged, the other applications that are on different VPS will continue to work normally
+ to reduce cost 
+ to reduce the number of physical servers

###Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
Running as root is bad practice because of:

+ *Mistakes:* If you try to change the system in anyway that could be harmful you need to do sudo because of your lack of permissions and this can make you realize that you are about to make a possible big/costly change. If you run as root, you have all permissions.
+ *Security:* harder to hack if you dont know the admin user's login account. Root means you already have one half of the working set of admin credentials.
+ *Not necessary*: If you need to run several commands as root and you are annoyed by having to enter your password several times when sudo has expired all you need to do is sudo su - and you are now root. Want to run some commands using pipes? Then use sudo sh -c "comand1 | command2".

