
# _rig_    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   ([redbean](https://justine.lol/redbean/)-interactive-[grapher](https://www.chartjs.org/))
---

(This proof-of-concept was intended for single-use but it is made public here in case others might be interested!)

The code here is ___NOT___ intended to be an example of best-practice in Javascript, Lua or the use of APE and redbean. It uses garish colours specifically because the intent is for others to make modifications themselves! All of the source code is to be found within [index.html](https://github.com/cdrubin/rig/blob/main/index.html) - no external CSS or Javascript, no Javascript framework even though I itched to find an excuse to use [Hyperapp](https://github.com/jorgebucaran/hyperapp). 

[SQLite](SQLite) in the browser comes thanks to [SQL.js](https://github.com/sql-js/sql.js). Code highlighting thanks to [Prism](https://prismjs.com/) and [Yace](https://github.com/petersolopov/yace). 

![user interface](https://user-images.githubusercontent.com/232306/119274102-47fe9d00-bbdc-11eb-929a-a846bd5e3ac7.png)

> This is a truly poorly accessible web application, if anyone is interested for better access please reach out - I'm happy to help.

### Usage 

🟠 The ```SQL``` (in orange!) pane accepts queries against the in-memory DB. ```CTRL-Enter``` executes these. 

🟢 Up to 10 rows of results represented in JSON appear in the ```Data``` pane (in green!) including a tiny actual row count. 

🟣 The ```Javascript``` pane (in purple!) accepts JS and again executes when ```CTRL-Enter``` is pressed. To automate code execution whenever a SQL query is executed, check the checkbox!

Loading files is available using the ⇱ button in the top left-hand corner, and saving is available with the ⇲ button in the top right-hand corner of the screen. Remote files can be loaded by pasting a URL.

---
### Notes

 - In queries we avoid joining to the location table for improved speed since this table is really just a static lookup table for location names and information. Using it in a legend for the graph may be sensible. 
