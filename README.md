# colorme
try making console text colorfully.


## format
```
格式：\033[显示方式;前景色;背景色m
```

前景色|背景色|颜色
:-:|:-:|:-:
30|40|黑色
31|41|红色
32|42|绿色
33|43|黄色
34|44|蓝色
35|45|紫红色
36|46|青蓝色
37|47|白色


显示方式|表现
:-:|:-:
0|终端默认设置
1|高亮显示
4|使用下划线
5|闪烁
7|反白显现
8|不可见


example
```
\033[1;31;40m string \033[0m
```
bash中要想实测需使用:
```bash
echo -e format-string
```

## usage

for bash
```
# include the lib of colorme
. colorme.sh
# or source ./colorme.sh

# testcase
ret=`colorme 郭瑞彪 highlight yellow`
echo -e $ret
ret=`customize tiger blink red black`
echo -e $ret
```

![demo.gif](https://github.com/guoruibiao/colorme/blob/master/demo.gif?raw=true)

for Python
```
#!/usr/bin/env python2
from colorme import Enhancer
text = "郭璞"
print Enhancer.highlight(text, Color.BACK_GREEN, Style.BLINK)
print Enhancer.mix("what a amazing colorama!", Color.BLACK_PURPLE, Style.UNDERLINE+Style.HIGHLIGHT+Style.BLINK)
```
