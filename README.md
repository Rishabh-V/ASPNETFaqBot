# ASP.NET Core Faq Bot #
The Visual Studio 2015(+) Extension for ASP.NET Core FAQ. The extension presents a chat interface right inside visual studio so that developer gets the answers to common questions regarding ASP.NET Core. [This is how it looks like](https://github.com/Rishabh-V/ASPNETFaqBot/blob/master/ASPNETCoreFaqBot.png)

## Getting started ##
To try the ASP.NET Core FAQ Extension:

1. Download the VSIX from [here](https://github.com/Rishabh-V/ASPNETFaqBot/blob/master/VSIX/FAQ.BOT.Client.vsix)(Its a bit big as it has chromium browser assemblies in it, which are quite heavy :( )
2. Install VSIX.
3. Open a new instance of Visual Studio 2015 or above (tested only in VS 2015 as of now).
4. Go to View--> Other Windows --> ASP.NET Core FAQ BOT.
5. A tool window should show up (if everything went well). You may want to snap this window to right or left.
6. Start by saying Hi/Hello to Bot and it should respond.
7. The key for BOT to work is how much you train it, currently its a WIP and so only has bunch of answers. The more we put the questions in KB, the better it would be. Its a boring job (seriously :)), so I only added about 17-18 items in Knowledge bank, but I will update it as and when I get time.
8. __Currently, it should answer basic stuff like documentation, roadmap, caching, performance, course on ASP.NET Core, video on ASP.NET core, What it is and so and so forth. For other questions it would say "No good match found in KB" meaning KB doesn't have info on those stuff__

### Description ###
The solution has 3 parts:

1. [VSIX](https://github.com/Rishabh-V/ASPNETFaqBot/tree/master/VSIX) - The VSIX folder contains the VSIX, which can be directly installed and used.
2. [FAQ.BOT.Client](https://github.com/Rishabh-V/ASPNETFaqBot/tree/master/FAQ.BOT.Client) - This is the sourec code of Visual Studio Extension project, which provides the chat interface in Visual Studio.
3. [FAQ.BOT](https://github.com/Rishabh-V/ASPNETFaqBot/tree/master/FAQ.BOT) - This is the code for BOT. The BOT is actually hosted in azure and hence doesn't require anyone to run this.

 #### Troubleshooting Tip ####
 This is very much a WIP and is a very early draft and hence have few known issues. In case, while snaping the chat window, the chat control freezes, just close the tool window and reopen the extension. That should fix the issue. For any other issue, please let me know by creating an issue or mailing me as rishabhv@live.com
 
 ##### Screenshot #####
 
![ASP.NET Core FAQ BOT Extension](https://github.com/Rishabh-V/ASPNETFaqBot/blob/master/ASPNETCoreFaqBot.png "ASP.NET Core FAQ BOT Extension")
