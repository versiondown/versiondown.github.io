---
layout: post
title: 《面向零基础新手的CSharp基础知识》笔记
date: 2017-07-08 18:00:00
categories: [慕课笔记, C# ]
tags: [慕课笔记, C# ]
description: 《面向零基础新手的CSharp基础知识》课程学习笔记
---

![面向零基础新手的CSharp基础知识](./blogTopImage.png)  

> 状态：完结
> 最新更新：20170806  
> 备注：此课程为C#入门课程，作为UWP开发入门课程的先修基础课程。 

---

## 第一讲 课程介绍  
  
### 内容简介  
* 主题简介，了解课程预期效果，相关软件下载等准备工作。  
  
* **VisualStudio 2017下载地址** ：https://www.visualstudio.com/zh-hans/thank-you-downloading-visual-studio/?sku=Community&rel=15  
* 对于VisualStudio 2017安装过程中Windows 10 SDK 安装失败的情况，可以直接下载单独的SDK文件单独安装（安装时候需要退出VisualStudio 2017）。SDK百度云：链接: http://pan.baidu.com/s/1o8x8hXS 密码: vycy  


## 第二讲 创建你的第一个C#程序  

### 内容简介 
* 学习如何创建一个简单的应用程序，并获取针对您在开始编写和编译代码时可能会遇到的不同问题的常用解决方案的说明。  
  
### 简记  
* 编程中各种括号区分()、{}、[]、<>  
* 编程易错点：大小写、中英文符号使用错误、符号使用没有配对、没有以分号结尾……  
* 要思考的点：1.为什么那样做、做了什么、表象之下发生了什么。2.编程语法规则。  


## 第三讲 了解你的第一个 C# 程序  

### 内容简介  
* 为了从较高层面更好地了解 C# 语法，请返回到我们刚刚创建的程序，以便拆分每个关键字和符号。  

### 简记  






## 第四讲 使用代码文件、项目和解决方案  

### 内容简介  
了解如何打开和关闭项目中的各个文件、项目和解决方案之间的关系，等等。  

### 简记  
* Solution Explore 解决方案资源管理器  
* 当前项目位置:文档（Documents）\Visual Studio（当前使用的版本）\Projects\  
* bin 文件夹为 binary 缩写，表示是二进制执行文件存储文件夹  
* Debug 文件夹调试应用程序时创建的文件夹，程序创建了一个临时版本的应用程序来进行调试  

### 评估  
* **方法:** 一个命名的代码块，你可以通过调用其名称来调用/执行它  
* 源代码的编译结果称为：**.NET 程序集**  
* .NET Framework 运行时（CLR）的用途为：它是你的程序在……内运行的内容，可保护用户免受恶意代码的侵害，并处理内存管理和其他运行时任务  

## 第五讲 了解数据类型和变量  

### 内容简介  
* 通过浏览基本构造块，向您的词汇表添加 C# 语法︰数据类型和变量。此外，还了解基本主题（例如命名约定和数据类型转换）。  

### 简记  
* variable 变量  
* **Console.WriteLine()和Console.Write()区别：**Console.WriteLine()和Console.Write()都是System.Console提供的方法，都是用来输出的。Console.WriteLine()是把要输出的字符串与换行符一起输出，会输出完毕后将光标移到下一行，而Console.Write()不会换行。  
* **Ctrl + .**  更改某个变量后，可以通过此快捷键批量更改同名变量  
* 驼峰式命名法：第一个单词小写，后续单词的首字母大写  
* **让变量名更具描述性与辨识性**： 不能对同一个变量定义两次、不要重复使用变量名称（只改改大小写）、遵循命名约定。  
*  合理使用intellisense(智能提示)  

## 第六讲 if判定语句  

### 内容简介  
* 获得 if 判定语句以及条件运算符的简介。找出如何重构代码以使其更紧凑且不太可能会产生错误。  

### 简记  
* **范围、在特定范围内部声明变量**：本质上说，在一个内部范围内（如一个if语句内部）定义一个变量时，该变量在这个范围之外不可用。换言之，如果我们在一个代码块内部，或一个花括号内部，定义一个变量，则它只在这对花括号内有用，在这对花括号以外不可用。  
* 替换代码 {0}  

### 课堂代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Decisions
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            Console.WriteLine("Bob's Big Giveaway");
            Console.Write("Choose a door: 1, 2 or 3: ");

            string uservalue = Console.ReadLine();
            string message = "";

            if (uservalue == "1")
            {
                message = "You won a new car!";
            }
            else if(uservalue == "2")
            {
                message = "You won a new boat!";
            }
            else if(uservalue == "3")
            {
                message = "You won a new cat!";
            }
            else
            {
                message = "Sorry , we can't understand.";
                message += " Sorry, you lose.";
            }

            Console.WriteLine(message);

            Console.ReadLine();
            */

            Console.WriteLine("Bob's Big Giveaway");
            Console.Write("Choose a door: 1, 2 or 3: ");
            string uservalue = Console.ReadLine();

            string message = (uservalue == "1") ? "boat" : "strand of lint";

            //Console.Write("You won a ");
            //Console.Write(message);
            //Console.Write(".");

            //Console.WriteLine("You won a {0} .", message);
            Console.WriteLine("You entered: {0}, therefore you won a {1}.", uservalue, message);

            Console.ReadLine();

        }
    }
}
```

## 第七讲 运算符、表达式和语句  

### 内容简介  
* 了解如何创建格式正确的 C# 语句(由包含运算符和操作数的表达式组成)。了解在忽略 C# 的语法规则时出现的编译错误。  

### 简记  
* 操作数、运算符、表达式  
* 对象、类、变量
* **运算符：** +加、-减、*乘、/除  
* **逻辑运算符：** and 与、|| 或  
* Console是一个“类”，而“类”是“容器”，缺少对方法的一个更强大的定义。访问一个类或一个对象的成员方法的方式就是使用英文的 . 符号，此为成员访问运算符。  
* 方法调用运算符，如通过()符号调用一个名为 WriteLine 的方法  

### 评估  
* 表达式由哪几项组成: 操作数和运算符  
* 语句由哪项组成：表达式  

## 第八讲 for迭代语句  

### 简介  
* 了解几种不同类型的迭代语句，如何利用“代码段”帮助提示您此复杂语句的语法，并进行调试。  

### 简记  
* for 迭代语句
* F9 设置断点调试  
* 单步执行程序  
* 条件中断调试  
* 出现代码补全提示后 Tab * 2 进行自动代码模板填充，填充并进行条件更改后直接回车可以自动到达代码块编写处。  

## 第九讲 理解数组  

### 简介  
* 了解数组并了解如何声明和使用数组。观看几个强大的内置方法(可为数组提供额外的功能)的演示。  

### 简记  
* 数组  

### 相关代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnderstandingArrays
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            int number1 = 4;
            int number2 = 8;
            int number3 = 15;
            int number4 = 16;
            int number5 = 23;

            if (number1 = 16)
            {

            }
            else if (number2 == 16)
            {

            }
            else if (number3 == 16)
            {

            }
            */

            /*
            int[] numbers = new int[5];

            numbers[0] = 4;
            numbers[1] = 8;
            numbers[2] = 15;
            numbers[3] = 16;
            numbers[4] = 23;
            //numbers[5] = 42;

            //Console.WriteLine(numbers[1]);
            Console.WriteLine(numbers.Length);
            Console.ReadLine();
            */

            //int[] numbers = new int[] { 4, 8, 15, 16, 23, 42 };

            string[] names = new string[] { "Eddie", "Alex", "Michael" };


            /*for (int i = 0; i < names.Length; i++)
            {
                Console.WriteLine(names[i]);
            }
            Console.ReadLine();
            */

            /*
            foreach (string name in names)
            {
                Console.WriteLine(name);
            }
            Console.ReadLine();
            */

            //利用数组实现字符串倒置
            string zig = "You can't get what you want out of life " + 
                " if you help enough other people get what they want.";     //创建字符串zig
            char[] charArray = zig.ToCharArray();       //将字符串zig中的字符复制到字符数组charArrray
            Array.Reverse(charArray);       //反转整个charArray中的项目顺序

            foreach (char zigChar in charArray)     //循环访问数组charArray
            {
                Console.Write(zigChar);
            }
            Console.ReadLine();



        }
    }
}
```

### 评估  
* 正确声明并初始化数组：`int[] numbers = {1, 2, 3, 4};`  
* 当尝试访问数组中位于数组范围外部的项目时，会遇到的异常：IndexOutOfRangeException  

## 第十讲 定义和调用方法  

### 简介  
* 创建一个帮助器**方法**，创建和调用方法来检索值，创建和使用输入参数，了解字符串格式设置，并创建重载方法。  

### 简记  
* **方法：**由花括号定义的代码块  
* 对于多次复制粘贴的代码块，要仔细检查，保持警惕  
* 本讲需要仔细体会，尤其是重载方法  

### 课堂代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelperMethods
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("The Name Game");
            
            Console.Write("What's your first name? ");
            string firstName = Console.ReadLine();

            Console.Write("What's your last name? ");
            string lastName = Console.ReadLine();

            Console.Write("In what city were you born?");
            string city = Console.ReadLine();

            DisplayResult(ReverseString(firstName),
                ReverseString(lastName),
                ReverseString(city));

            Console.ReadLine();
            
        }

        private static string ReverseString(string message)
        {
            char[] messageArray = message.ToCharArray();
            Array.Reverse(messageArray);
            return String.Concat(messageArray);
        }

        private static void DisplayResult(
            string reversedFirstName,
            string reversedLastName,
            string reversedCity)
        {
            Console.Write("Results: ");
            Console.Write(string.Format("{0} {1} {2}",
                reversedFirstName,
                reversedLastName,
                reversedCity));
        }

        private static void DisplayResult(string message)
        {
            Console.Write("Results: ");
            Console.Write(message);
        }


    }
}
```

### 评估  
* 应该在何时创建方法：当你需要可能多次重复使用相同的代码时  
* 要创建重载方法，要执行的操作：创建两个或以上具有相同名称，但输入参数数目不同和/或数据类型不同的方法  

## 第十一讲 While迭代语句  

### 简介  
* 学习一个新的迭代语句，您可以使用该语句继续执行一个代码块，直到某个条件不再为 true。  

### 简记  
* 前期已学迭代语句回顾：  
 **for 循环：**能够遍历代码块，预设次数根据计数器来定  
 **foreach 迭代语句：**能够以一个数组中每一项一次的频率来遍历一个代码块  
 在上面两种迭代语句中，都需要知道有多少次迭代或者要遍历多少次指定的代码块。但是如果事先不知道迭代多少次，或许需要一直迭代，知道满足某个条件为止，可以使用while、do-while  
* do-while 跳出迭代语句之前至少能迭代一次  
* 本讲主要内容：while、do-while  
* while 用处例子：为控制台窗口应用程序创建某类菜单系统  
* **int.Parse()** 强制类型转换  
* **Console.Clear()** 清屏  
* **Random.Next 方法 (Int32, Int32)** 返回在指定范围内的任意整数  
* while将评估最开始的第一次，但需求实际上可能从不运行。do-while将先执行一次，然后评估条件while()  

### 课堂代码  
**带菜单的打印数字和猜数字游戏**  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Whileteration
{
    class Program
    {
        static void Main(string[] args)
        {
            bool displayMenu = true;
            while (displayMenu)
            {
                displayMenu = MainMenu();
            }
        }

        private static bool MainMenu()
        {
            Console.Clear();
            Console.WriteLine("Choose an option:");
            Console.WriteLine("1) Print Numbers");
            Console.WriteLine("2) Guessing Game");
            Console.WriteLine("3) Exit");
            string result = Console.ReadLine();
            if (result == "1")
            {
                PrintNumbers();
                return true;
            }
            else if (result == "2")
            {
                GuessingGame();
                return true;
            }
            else if (result == "3")
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        private static void PrintNumbers()
        {
            Console.Clear();
            Console.WriteLine("Print Numbers!");
            Console.Write("Type a number: ");
            int result = int.Parse(Console.ReadLine()); //将读到的字符串转换为int
            int counter = 1;
            while (counter <= result)
            {
                Console.Write(counter);
                Console.Write("-");
                counter++;
            }
            Console.ReadLine();
        }

        private static void GuessingGame()
        {
            Console.Clear();
            Console.WriteLine("Guessing game!");

            Random myRandom = new Random();     //产生随机数
            int randowmNumber = myRandom.Next(1, 11);   //生成1-11的随机数

            int guess = 0;
            bool incorrect = true;

            do
            {
                Console.WriteLine("Guess a number between 1 and 10: ");
                string result = Console.ReadLine();
                guess++;

                if (result == randowmNumber.ToString())
                {
                    incorrect = false;
                }
                else
                {
                    Console.WriteLine("Wrong!");
                }

            } while (incorrect);
            Console.WriteLine("Correct! It took you {0} guesses.",guess);


            Console.ReadLine();
        }
    }
}
```

### 评估  
* 如果需要.NET 生成一个随机数，可以用：Random类  
* 为什么选择do-while语句：因为需要执行代码块至少一次  
* 为什么应该使用while 迭代语句而非for 迭代语句：因为需要继续循环访问代码块，直到给定条件不再为true  

## 第十二讲 处理字符串  

### 简介  
* 了解如何使用内置的 String 方法操作文字字符串内部的内容，并了解如何使用 StringBuilder 类以内存和资源友好的方式将很多字符串串联在一起。  

### 简记  

* **主要内容：**  
    1. 如何使用反斜杠字符进行转义、插入  
    2. 文字字符串中的转义字符、特殊字符  
    3. 如何使用 String.Format  
    4. [标准数字格式字符串（英语）][16]  
        [标准数字格式字符串（中文）][17]  


* 反斜杠字符“\”特殊性：可以用来转义或者将转义序列插入到文字字符串中，也可以用来将一些特殊字符放入某些换行符中，把东西放入文字字符串中。  

* 真实需要把 \ 当做字符方法：  
  1. 使用双重反斜杠: `\\`  
  2. 在字符串双引号前使用@声明：`@“Test\”`  

* 要是数据显示为数据格式，可以在引用后面跟上冒号和格式符号C：`string mySting = string.Format("{0:C}", 123.45);`  

* 显示为数字格式：`string myString = string.Format("{0:N}", 123456789)`  

* 百分号格式：`string myString = String.Format("Percentage:{0:P}", .123);`  

* 创建自定义格式（格式化自定义电话号码）
```cs
string myString = string.Format("Phone Number:{0:(###) ###-####}",1234567890);
```

* 当使用自定义 `#` 符号来为数字值创建一个自定义格式时候，格式化会从右向左进行。若实际数字多于格式中表示的数字，多余的数字会被推向最左侧的格式。  

* **String.Substring(Int32)** 从String中检索，返回忽略前Int32个字符后的字符  

* **String.Substring(Int32,Int32)** 从String中检索，忽略前Int32个字符，取出接下来的Int32个字符并丢弃多于的字符  

* **String.ToUpper()** 强制大写转换String  

* **String.Replace("a", "b")** 搜索String中的a并替换为b  

* **String.Remove(5, 12)** 删除String字符串中5-12字符  

* **String.Trim()** 从当前 String 对象移除所有前导空白字符和尾部空白字符  

* **StringBuilder** 创建可变字符字符串  

### 课堂代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkingWithString
{
    class Program
    {
        static void Main(string[] args)
        {
            //string myString = "My \"so-called\" life";
            //string myString = "What if I need a \nNew line?";
            //string myString = "Go to your c:\ drive";
            //string myString = @"Go to your c:\ drive";

            //string myString = String.Format("{0} = {1}","First", "Second");
            //string myString = String.Format("{0} = {0}", "First", "Second");
            //string myString = String.Format("{1} = {0}", "First", "Second");

            //string myString = String.Format("{0:C}", 123.45);             //显示货币格式
            //string myString = String.Format("{0:N}", 123456789);          //显示数字格式
            //string myString = String.Format("Percentage:{0:P}", .123);    //显示百分比格式
            //string myString = string.Format("Phone Number:{0:(###) ###-####}",1234567890); //显示自定义电话格式

            //string myString = " That summer we took threes across the board  ";
            //myString = myString.Substring(6,14);      //抛弃前6个字符，只取后续14个字符
            //myString = myString.ToUpper();            //强制大写转换
            //myString = myString.Replace(" ", "--");   //搜索替换
            //myString = myString.Remove(6, 14);        //删除字符

            /*
            myString = String.Format("Length before:{0} -- Length after:{1}",
                myString.Length,
                myString.Trim().Length);
            */

            /*
            string myString = "";
            for (int i = 0; i < 100; i++)
            {
                myString += "--" + i.ToString();
            }
            */

            StringBuilder myString = new StringBuilder();

            for (int i = 0; i < 100; i++)
            {
                myString.Append("--");
                myString.Append(i);
            }

            Console.WriteLine(myString);
            Console.ReadLine();
        }
    }
}
```

### 评估  

1. **StringBuilder 类有什么用途：**提供一种更友好的内存方式来处理字符串  

2. **那个字符用于对C#字符串中的绝大多数特殊字符进行转义：**反斜杠  

3. **下列哪一项不是字符串数据类型的可用方法**D  
    * A. Trim()  
    * B. Replace()  
    * C. Append()  
    * D. ToUpper()  

4. **我想设置这些数字的格式：1234.56 ,使其如 1,234.56 所示，下面那个表达式可以实现这一点**A  
```
    * A. string.Format("{0:C}", 1234.56)  
    * B. string.Format("{0:#,###.##}", 1234.56)  
    * C. string.Format("{0:G}", 1234.56)  
    * D. string.Format("{0:P}", 1234.56)  
```

5. **以下代码行的什么问题会导致它无法编译string myString = string.Format("{2} - {3}", "3", "4", "5");**D  
    * A. 有未使用的额外字符串值  
    * B. 大括号中的替换代码是从零开始的，因此"{3}"将在范围之外  
    * C. 替换代码应该使用方括号，而不是花括号  
    * D. 替换代码将不起作用，除非用"{1}"开头  

## 第十三讲 处理日期和时间  

### 简介  
* 了解如何使用日期和时间数据，如何创建新的 DateTime实例，如何添加时间，以及如何设置要显示的数据格式。看看 TimeSpan 类  

### 简记  

* **主要内容**  
    * 时间显示  
    * 时间、日期的加、减  
    * 通过`TimeSpan`确定两个日期之间的差值  
    * 创建日期的不同方式（创建过去、现在、未来时间）：用DateTime对戏那个构造函数创建时间、用DayTime.parse并传递到一个字符串中  

* 用 . 可以将一个接一个的调用方法连接在一起。例如`Console.WriteLinge(myValue.AddDays(3).ToLongDateString());`  


### 课堂代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatesAndTimes
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime myValue = DateTime.Now;
            //Console.WriteLine(myValue.ToString());    //显示标准当前区域时间
            //Console.WriteLine(myValue.ToShortDateString());   //短日期格式
            //Console.WriteLine(myValue.ToShortTimeString());   //短时间格式
            //Console.WriteLine(myValue.ToLongDateString());    //长日期格式
            //Console.WriteLine(myValue.ToLongTimeString());    //长时间格式

            //Console.WriteLine(myValue.AddDays(3).ToLongDateString());     //日期加
            //Console.WriteLine(myValue.AddHours(3).ToLongTimeString());    //时间加
            //Console.WriteLine(myValue.AddDays(-3).ToLongDateString());    //日期减

            //Console.WriteLine(myValue.Month);     //月份

            //DateTime myBirthday = new DateTime(1995, 12, 7);      //显示过去时间
            //Console.WriteLine(myBirthday.ToShortDateString());

            DateTime myBirthday = DateTime.Parse("12/7/1969");      //设定出生日期
            TimeSpan myAge = DateTime.Now.Subtract(myBirthday);     //计算时间跨度年
            Console.WriteLine(myAge.TotalDays);     //年转化为天

            Console.ReadLine();
        }
    }
}
```

### 评估  
1. **哪种数据类型表示两个特定的DateTime对象之间经过的时间**C  
    * A. SpannedTime  
    * B. ElapsedTime  
    * C. TimeSpan  
    * D. TimeElapsed  
2. **下列哪一项不是初始化新的DateTime对象的有效方式**D  
    * A. DateTime myValue = DateTime.Parse("12/7/1969");  
    * B. DateTime myValue = new DateTime(1969, 12, 7);  
    * C. DateTime myValue = DateTime.Now;  
    * D. DateTime myValue = 12/7/1969;  

## 第十四讲 了解类  

### 简介  

* 学习如何定义类和如何创建新实例，如何定义属性，以及如何设置给定类实例的值及获取相应值。  

### 简记  

* 类是相关方法的容器  

* 创建类的短属性模板快速输入：prop + Tab*2  
* 创建类的完整属性模板快速输入：propfull + Tab*2  

* [decimal][18]  

* 为类创建方法 

### 课堂代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleClasses
{
    class Program
    {
        static void Main(string[] args)
        {
            Car myCar = new Car();      //创建Car类的实例
            myCar.Make = "Oldsmobile";
            myCar.Model = "Cutlas Supreme";
            myCar.Year = 1986;
            myCar.Color = "Silver";

            Console.WriteLine("{0} {1} {2} {3}", 
                myCar.Make, 
                myCar.Model, 
                myCar.Year, 
                myCar.Color);

            //decimal value = DetermineMarketValue(myCar);
            //Console.WriteLine("{0:C}", value);

            Console.WriteLine("{0:C}",myCar.DetermineMarketValue());

            Console.ReadLine();

        }

        private static decimal DetermineMarketValue(Car car)
        {
            decimal carValue = 100.0M;

            //Someda I might look up the car
            //online webservice to get more
            //accurtge value.
            return carValue;
        }


    }

    class Car       //创建Car类
    {
        public string Make { get; set; }
        public string Model { get; set; }
        public int Year { get; set; }
        public string Color { get; set; }

        public decimal DetermineMarketValue()
        {
            decimal carValue;

            if (Year > 1990)
            {
                carValue = 10000;
            }
            else
            {
                carValue = 2000;
            }

            return carValue;
        }
    }

}
```

### 评估  

* 下列哪一项不是类声明的一部分D  
    A.重载方法  
    B.方法  
    C.属性  
    D.对象  

## 第十五讲 详细了解类和方法  

### 简介  
* 挖掘有关类的更多详细信息:创建新实例，添加类引用，将引用传递到方法。另外，了解重载方法、静态与实例方法以及构造函数。  

### 简记  

* **对象的生存期：**对象变得活跃，生存一段时间，然后死亡，从内存中移除。  

* **.NET Framework 运行库及其在对象创建、维护以及最终从内存中移除中所发挥的作用**  

* **构造函数**是在类的新实例创建时让开发人员能够编写代码的方法  

* **静态方法和属性**  

* 每当发出为类创建新实例的命令时（如 Car myCar = new Car(); ），.NET Framework运行库必须启动，在计算机内存中创建一个点，其大小足以容纳“Car”类中的新实例。计算机内存拥有地址。  
    * .NET Framework 的第一个任务是查找没有被占用的可用空地址（目前没有存储、且地址必须足够大，以便存储类的实例）。  
    * 然后.NET Framework运行库将创建对象实例，并将把目前存储在这个对象实例中的任何值复制到这个内存地址中，并记录对象所放置的位置。它记录放置对象实例的地址，然后将地址返回给我们，我们用实际名称或类的实例名称（“myCar”）存储此地址  

* 可以通过设置对象为空值（myOtherCar = null;）来实现对象被移除，空值并不是零，也不是空字符串，而是不确定。  

* 每当我们将引用设置为空值，或每当超出范围时，我们将移除对象的所有引用。但.NET Framework 运行库本身会了解何时准备就绪（会在后续某个时间），可以从内存中完全移除这些对象。在大多数情况下，这并不是问题。偶尔会发生问题，可以通过“确定收尾”来明确告知系统立即移除相关对象。  

* 构造函数可以理解为在函数类的模板中提前设置某个值，当类的新实例创建时候默认已经是此值。  

* **过载构造函数** 通过调用过载构造函数，可以在实例化时就填写所有值  
* **隐式默认构造函数**在编译时生成，没有输入参数，没有方法正文，但可以让你调用，并创建一致的类的新实例  

* 自定义可以让你对实例化的流程具备控制权  

* 处理包含静态成员的类和包含实例成员的类之间存在根本性差异。实例成员像目前为止的教程操作：有一系列属性描述“Car”等给定类的单一实例，可能是在类似于“Car”的构造函数的单一实例中运行的方法。例如静态方法等静态成员，不会实际在某个单一实例中运行，更类似于实用程序，可以随时调用，独立于类的给定实例甚至应用程序的状态，可以随时使用，因为它们并非实际关联某个具体的“Car”，而是适用于所有“Car”，可以随时使用。此为静态成员和实例成员的区别。  

* 上述两者辨别：如果是静态成员，会包含静态关键词，无法引用任何实例。实例成员类似实例属性，甚至作用于实例属性的实例方法，他们需要类的实例方可运行。主要需明白：类中存在两种成员，尽量不要在同一个类中混合使用  

* 本讲总结：
    * 对象生存期  
    * 创建了对象的新实例（在计算机内存总创建一个区域，为我们返回引用内存中这一对象的地址）  
    * 在对象的生存期内发生了什么情况  
    * 当移除对对象的所有引用时，会发生什么情况  
    * .NET Framework 运行库的角色，及其如何记录对对象的引用数量，以便对内存中不再有引用的对象执行垃圾回收，确保有条理，并让内存可供其他应用程序使用或供应用程序再次使用  
    * 构造函数，以及开发人员如何在对象创建时用它将对象的新实例设置为有效状态  
    * 静态关键词，分析了.NET Framework类库内静态成员的一些用法  
    * 在主方法或自身的方法总自行创建静态成员  
    * 静态成员和实例成员之间的区别（两者不相容），以及为什么不讨论为什么选择其中一种的原因  
  
### 课堂代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectLifeTime
{
    class Program
    {
        static void Main(string[] args)
        {
            Car myCar = new Car();

            Car.MyMethod();

            /*
            myCar.Make = "Oldmobile";
            myCar.Model = "Cutlas Supreme";
            myCar.Year = 1986;
            myCar.Color = "Silver";
            */

            //Car myThirdCar = new Car("Ford", "Escape", "2005", "White");    //调用过载构造函数

            /*
            Car myOtherCar;
            myOtherCar = myCar;

            Console.WriteLine("{0} {1} {2} {3}",
                myOtherCar.Make,
                myOtherCar.Model,
                myOtherCar.Year,
                myOtherCar.Color);

            myOtherCar.Model = "98";

            Console.WriteLine("{0} {1} {2} {3}",
                myCar.Make,
                myCar.Model,
                myCar.Year,
                myCar.Color);

            myOtherCar = null;
            
            Console.WriteLine("{0} {1} {2} {3}",
                myOtherCar.Make,
                myOtherCar.Model,
                myOtherCar.Year,
                myOtherCar.Color);

            myCar = null;
            */

            Console.ReadLine();
        }
    }

    class Car
    {
        public string Make { get; set; }
        public string Model { get; set; }
        public int Year { get; set; }
        public string Color { get; set; }

        /*
        public Car()
        {
            // You could load from a configuration file,
            // a database, etc.
            Make = "Nissan";
        }

        public Car(string make, string model, int year, string color)   //过载构造函数
        {
            Make = make;
            Model = model;
            Year = year;
            Color = color;
        }
        */

        public static void MyMethod()       //静态方法属性
        {
            Console.WriteLine("Called the static MyMethod");
            Console.WriteLine(Make);
        }

    }
}
```
  
### 评估  
* **当前执行范围中不再引用的对象会发生什么情况？**B  
    * A. 由.NET Framework运行时保留直到将来再次需要  
    * B. 由.NET Framework运行时的垃圾回收器从内存中移除  
    * C. 由操作系统从内存中自动移除  
    * D. 存储在计算机内存的一个称为堆栈的特殊部分中  

* **关于构造函数，以下语句不正确的是**B  
    * A. 系统会自动为你创建一个默认构造函数（无论你是否意识到）  
    * B. 你必须使用 static 关键字来定义构造函数  
    * C. 你可以按照创建任何重载方法所用的方式来创建重载构造函数  
    * D. 当你创建新的类实例时，系统会自动调用构造函数  

## 第十六讲 了解范围和辅助功能修饰符  

### 简介  
* 探讨变量范围以及 .NET Framework 类库如何使用辅助功能修饰符向给定类的用户显示或隐藏其给定服务的实现  

### 简记  

* **变量范围** 每当在代码块中声明变量时候，这个变量仅在这个代码块、这个代码块的代码块、内部代码块或这个代码块内部的代码块的生存期中活跃。意味着当代码块执行完毕时，在这个代码块内部定义的变量将无法再访问。其值被 .NET Framework 运行库释放。  

* 之前每次创建类时。通常会用 public 关键词，偶尔会用 private 关键词。public 和 private 都是“可访问性修饰符”，用于实施有人参与的面向对象的编程，称为**封装**，此为总要概念。  

* 简而言之，可以将**类**想象成“黑盒子”，所有重要的后台、功能应封装在公共方法和公共属性等界面背后。类也可能存在私有字段，或者在幕后使用的私有方法。类的使用者无须知道类的内部运作，也能处理类、运行类。只需知道通过公共方法中的公共属性所公共显示的内容。“私有”意味着可由同一类中的任何其他方法调用。  

* **公共方法**可以由类别之外的人、给定类别之外的其他代码调用。**私有方法**只可由类内部的成员调用。  

### 课堂代码  
* 此课堂代码主要聚焦于检验变量范围如何运作  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnderstandingScope
{
    class Program   //类class
    {
        private static string k = "";       //私有静态字符k


        static void Main(string[] args)
        {
            string j = "";      //在for循环代码块之外定义j

            for (int i = 0; i < 10; i++)
            {
                j = i.ToString();
                k = i.ToString();
                Console.WriteLine(i);

                if (i == 9)
                {
                    string l = i.ToString();    //在if层面定义l
                }
                //Console.WriteLine(l);           //无法直接引用l


            }
            //Console.WriteLine(i);
            Console.WriteLine("Outside of the for: " + j);      //在for代码块之外访问j
            Console.WriteLine("Outside of the for: " + k);

            HelperMethod();

            Car myCar = new Car();
            myCar.DoSomething();    //调用公共方法"DoSometing"

            Console.ReadLine();
        }

        static void HelperMethod()
        {
            Console.WriteLine("Value of k from the HelperMethod():" + k);
        }
    }

    class Car   //  类calss： Car ，用来说明封装的概念
    {
        public void DoSomething()       //公共方法
        {
            Console.WriteLine(helperMethod());
        }

        private string helperMethod()   //私有方法
        {
            return "Hello world!";
        }
    }


}
```

### 评估  
评估题比较简单，看了本节视频后不会有大问题，略  


## 第十七讲 了解命名空间和如何使用 .NET 类库  
### 简介  
* 了解命名空间以及如何通过搜索 Bing 和 MSDN 找到您的应用程序的类  

### 简记  

* .NET Framework 类库是一系列类的集合，每一个类均包含我们可在应用程序中使用的方法和功能。  
* .NET Framework 类库将自己包含的代码分为多个文件，这些代码文件称为**.NET 程序集**。事实上，我们自己编写的程序，也将最终编译成 .NET 程序集。  

* **自行创建类库**  

* 完整的 .NET Framework 类库中定义了数万个类，在少数情况下适用了同样的类名称，或至少存在使用同样名称的可能性。如果发生这种情况，创建者需要能够分辨不同的类，因此他们提出了“命名空间”的概念。  

* **命名空间**类似于类的“姓氏”  

* 在使用应用程序的过程中，所需的类的全程（如控制台类的全程是 System.Console.WriteLine，即 System.Console 类。）在程序一开始就声明了引用文件，则表示希望每当发现无法识别的类引用时，就查看这些命名空间。若在同一个代码中引用了两个名称相同意义不同的类，则可以使用类的全程来进行区分。  

* 对于代码顶层开头的一系列 using 引用语句，若引用的文件并未在代码中被使用，则会显示为灰色，这些引用删除也可正常编译代码。  

* **为第三方程序集创建引用**  

* 网上搜索微软相关代码、文档。关键词** site:microsoft.com 关键词**  

### 课堂代码  
```cs
using System;
using System.IO;
using System.Net;

namespace AssembliesAndNamespace
{
    class Program
    {
        static void Main(string[] args)
        {
            WebClient client = new WebClient();
            string reply = client.DownloadString("http://msdn.microsoft.com");



            Console.WriteLine(reply);
            File.WriteAllText(@"C:\Time\Lesson17\WriteText.txt", reply);
            Console.ReadLine();
        }
    }
}
```

### 评估  

* **命名空间**主要是：C  
    * A. 一种将方法组织为类的方式  
    * B. 一种将类组织为程序集 的方法  
    * C. 一种消除库中类名称歧义的方式  
    * D. 一种将类组织为项目的方式  

## 第十八讲 创建和添加对程序集的引用   

### 简介  
* 了解 .NET 程序集:代码库和可执行文件、程序集的调试和发布版本。另外，了解如何引用程序集，利用 NuGet，并创建对自定义库的引用  

### 简记  

* 为程序集添加引用的三种方法：  
    * 1. 来自 .NET Framework 类库的程序集  
    * 2. 使用解决方案资源管理器，右键单击引用，然后选择“添加引用”进行添加  
         采用开放源代码，通过名为“NuGet”的特殊工具获取  

    * 3. 当需要为之前创建的类库添加引用时  

### 评估  

* 若想创建一个可在多个项目中重复使用的外部代码库，应该D  
    * A. 将第二个项目添加到我的解决方案中  
    * B. 创建一个代码库  
    * C. 将一个类添加到我的项目中  
    * D. 创建一个新的类库项目  

* 在项目中使用程序集的第一步是：D  
    * A. 将程序集添加到你的项目文件夹  
    * B. 添加一条引用程序集中命名空间的 using 语句  
    * C. 在“项目属性” 页的“引用”选项卡中添加程序集名称  
    * D. 使用“添加引用”对话框添加对程序集的引用  

## 第十九讲 使用集合  

### 简介  
* 看到“旧式”集合以及几个利用泛型语法的较新强类型泛型集合(列表 和字典 )  

### 简记  

* 两种集合：列表（List）和词典（Dictionary）  

* 集合通过一种名为LINQ的语言技术，提供丰富的筛选、排序和聚合功能。LINQ（Language Integrated Query 语言集成查询）  

* **ArrayList**集合大小是动态的，无需再进行其他诸如一次次分别添加项之类的操作。支持诸如排序等实用功能，可以从集合中移除项  

* ArrayList存在问题：无法以一种简单的方法来限制将要存储到数组中的数据类型。  

* 集合实质都是泛型的，但需要去规定该集合内允许的数据类型，使其具有针对性。  

* **词典集合**与网络搜索词典类似，当你需要查询一个词，你会按照字母顺序来找到它，并找到需要下定义的这个词。一旦找到后，你可以在它的右侧看到相关定义。字典中的每个条目都包含了两个组件：**键和值本身**。  

* 集合初始值设定语法  

* 集合初始值设定项  

* 总结：  
    * **数组和集合间的差别**  
    * **旧式集合和新式泛型集合**：新式泛型集合更先进，能确保我们只能将特定的数据类别加入集合中，以便我们通过传入该集合内允许引用的数据类型，将泛型集合变为特定集合。  
    * **对象初始值设定项**：是一种简写语法，用于初始化对象的新实例的属性  
    * **集合初始值设定项**，不仅创建新的集合，还使用汽车集合新实例初始化集合  

### 本节代码  
```cs
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkingwithCollectiongs
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            Car car1 = new Car();
            car1.Make = "Oldsmobile";
            car1.Model = "Cutlas Supreme";
            car1.VIN = "A1";

            Car car2 = new Car();
            car2.Make = "Geo";
            car2.Model = "Prism";
            car2.VIN = "B2";

            Book b1 = new Book();
            b1.Author = "Robert Tabor";
            b1.Title = "Microsoft .NET XML Web Services";
            b1.ISBN = "0-000-00000-0";
            */

            /*
            // ArrayLists are dynamically sized,
            // cool features sorting, remove items
            ArrayList myArrayList = new ArrayList();
            myArrayList.Add(car1);
            myArrayList.Add(car2);
            myArrayList.Add(b1);
            myArrayList.Remove(b1);
            foreach (Car car in myArrayList)
            {
                Console.WriteLine(car.Make);
            }
            */

            /*
            // 泛型列表
            // List<T>
            List<Car> myList = new List<Car>();     // 汽车专用数据类型列表
            myList.Add(car1);
            myList.Add(car2);
            //myList.Add(b1);     //无法将书添加到该列表中
            foreach (Car car in myList)
            {
                Console.WriteLine(car.Model);
            }
            */

            /*
            // 词典
            // Dictionary<Tkey,Tvalue>
            Dictionary<string, Car> myDictionary = new Dictionary<string, Car>();       // 创建字典

            myDictionary.Add(car1.VIN, car1);       // 将汽车数据加入字典
            myDictionary.Add(car2.VIN, car2);

            Console.WriteLine(myDictionary["B2"].Make);     // 由特定关键值输出字典数据
            */


            //string[] names = { "Bob", "Steve", "Brian", "Chunk" };

            // Object initializer 初始值设定项语法
            // No need for a Constructor 无须构造函数
            //Car car1 = new Car() { Make = "BMW", Model = "750li", VIN = "C3" };      // 创建变量，创建汽车实例，填充属性
            //Ca/r car2 = new Car() { Make = "Toyota", Model = "4Runnner", VIN = "D4" };

            // Collection initializer 集合初始值设定项
            // 创建集合并添加两个对象，并在每个对象中对所有属性值进行初始化
            List<Car> myList = new List<Car>() {
                new Car{Make = "Oldsmobile", Model = "Cutlas Supreme", VIN = "E5"},
                new Car{Make = "Nissan" , Model = "Altima" , VIN = "F6" }

            };



            Console.WriteLine();
        }
    }

    class Car
    {
        public string VIN { get; set; }
        public string Make { get; set; }
        public string Model { get; set; }
    }

    class Book
    {
        public string Title { get; set;}
        public string Author { get; set;}
        public string ISBN { get; set; }
    }


}
```

## 第二十讲 使用 LINQ   

### 简介  
* 观看使用枚举的演示、创建自定义枚举，然后在演示第三个判定语句 (switch) 的简单应用程序中使用该枚举  

### 简记  

* 两种不同的LINQ语法：  
    * 用于查询数据库的类似于用于结构化查询语言（SQL）的查询语法  
    * C#开发人员更熟悉的方法语法，但存在较奇怪的明明问题  
  

* LINQ查询语法  

* LINQ方法语法  

* 相关语句
    * [var 关键词][19]为强类型化关键字。与JavaScrip或Visual Basic 含义有所不同。在本讲中表示让编译器来决定正确的数据类型是什么。  

    * [orderby][20]  

    * [select][21]  

    * [First][22]  

    * [trueforall][23] 适合于聚合和全部查看以及检验列表中所有项是否都为真  

    * [Exists][24] 确定指定的文件是否存在  


### 本节代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnderstandingLINQ
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Car> myCars = new List<Car>() {
                new Car() { VIN="A1", Make = "BMW", Model= "550i", StickerPrice=55000, Year=2009},
                new Car() { VIN="B2", Make="Toyota", Model="4Runner", StickerPrice=35000, Year=2010},
                new Car() { VIN="C3", Make="BMW", Model = "745li", StickerPrice=75000, Year=2008},
                new Car() { VIN="D4", Make="Ford", Model="Escape", StickerPrice=25000, Year=2008},
                new Car() { VIN="E5", Make="BMW", Model="55i", StickerPrice=57000, Year=2010}
            };

            // LINQ query LINQ查询语法
            /*// 条件查找
            var bmws = from car in myCars
                       where car.Make == "BMW"
                       &&  car.Year == 2010
                       select car;

            */

            /*// 按年份排序
            var orderedCars = from car in myCars
                              orderby car.Year descending
                              select car;
            */

            // LINQ method 方法语法
            // var bmws = myCars.Where(p => p.Make == "BMW" && p.Year == 2010);

            // var orderedCars = myCars.OrderByDescending(p => p.Year);

            // var firstBMW = myCars.First(p => p.Make == "BMW");      // 输出查找结果第一项

            /*
            var firstBMW = myCars.OrderByDescending(p => p.Year).First(p => p.Make == "BMW");       // 取按年份排序第一项
            Console.WriteLine(firstBMW.VIN);
            */

            //Console.WriteLine(myCars.TrueForAll(p => p.Year > 2002));       // 判断某个属性是否都符合某个要求


            //myCars.ForEach(p => p.StickerPrice -= 3000);        // 从每项基础估价中减去3000
            //myCars.ForEach(p => Console.WriteLine("{0}{1:C}", p.VIN, p.StickerPrice));  // 简短化代码：有序输出并估价

            //Console.WriteLine(myCars.Exists(p => p.Model == "745li"));  // 检查指定的 745li 是否存在

            //Console.WriteLine(myCars.Sum(p => p.StickerPrice));     // 重点：聚合：所有对象中单个字段的和

            Console.WriteLine(myCars.GetType());
            var orderedCars = myCars.OrderByDescending(p => p.Year);
            Console.WriteLine(orderedCars.GetType());



            /*
            foreach (var car in orderedCars)
            {
                Console.WriteLine("{0} {1}", car.Year, car.Model, car.VIN);
            }
            */





            Console.ReadLine();
        }
    }

    class Car
    {
        public string VIN { get; set; }
        public string Make { get; set; }
        public string Model { get; set; }
        public int Year { get; set; }
        public double StickerPrice { get; set; }
    }
}
```

## 第二十一讲 枚举和 Switch 判定语句  

### 简介  
* 观看使用枚举的演示、创建自定义枚举，然后在演示第三个判定语句 (switch) 的简单应用程序中使用该枚举  

### 简记  

* 一个特殊的数据类型：枚举。优势：它们是描述性的，并且能够限制我们的应用程序以及我们的类的属性的可能值数量  

* 评估点:枚举主要用于：限制给定属性或变量可以设置的值的数量  

### 本节代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnumsAndSwitch
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Todo> todos = new List<Todo>()
            {
                new Todo { Description = "Task 1", EstimatedHours = 6, Status = Status.Completed },
                new Todo { Description = "Task 2", EstimatedHours = 2, Status = Status.InProgress },
                new Todo { Description = "Task 3", EstimatedHours = 8, Status = Status.NotStarted },
                new Todo { Description = "Task 4", EstimatedHours = 12, Status = Status.Deleted },
                new Todo { Description = "Task 5", EstimatedHours = 6, Status = Status.InProgress },
                new Todo { Description = "Task 6", EstimatedHours = 2, Status = Status.NotStarted },
                new Todo { Description = "Task 7", EstimatedHours = 14, Status = Status.NotStarted },
                new Todo { Description = "Task 8", EstimatedHours = 8, Status = Status.Completed },
                new Todo { Description = "Task 9", EstimatedHours = 8, Status = Status.InProgress },
                new Todo { Description = "Task 10", EstimatedHours = 8, Status = Status.Completed },
                new Todo { Description = "Task 11", EstimatedHours = 4, Status = Status.NotStarted },
                new Todo { Description = "Task 12", EstimatedHours = 10, Status = Status.Completed },
                new Todo { Description = "Task 13", EstimatedHours = 12, Status = Status.Deleted },
                new Todo { Description = "Task 14", EstimatedHours = 6, Status = Status.Completed }
            };

            Console.ForegroundColor = ConsoleColor.DarkRed;

            PrintAssessment(todos);
            Console.ReadLine();

        }

        private static void PrintAssessment(List<Todo> todos)
        {
            foreach (var todo in todos)
            {
                switch (todo.Status)
                {
                    case Status.NotStarted:
                        Console.ForegroundColor = ConsoleColor.DarkRed;
                        break;
                    case Status.InProgress:
                        Console.ForegroundColor = ConsoleColor.Green;
                        break;
                    case Status.OnHold:
                        Console.ForegroundColor = ConsoleColor.DarkRed;
                        break;
                    case Status.Completed:
                        Console.ForegroundColor = ConsoleColor.Blue;
                        break;
                    case Status.Deleted:
                        Console.ForegroundColor = ConsoleColor.Yellow;
                        break;
                    default:
                        break;
                }
                Console.WriteLine(todo.Description);
            }
        }
    }

    class Todo
    {
        public string Description { get; set; }     // 待办项描述
        public int EstimatedHours { get; set; }     // 待办项需要小时数
        public Status Status { get; set; }          // 状态类型
    }

    enum Status         // 状态枚举
    {
        NotStarted,     // 尚未开始
        InProgress,     // 进行中
        OnHold,         // 暂停
        Completed,      // 已完成
        Deleted         // 已删除
    }
}
```
   

## 第二十二讲 正常处理异常  

### 简介  
* 了解如何使用 try catch finally 块预测潜在问题，以使最终用户尽量避免遇到这些问题。探讨检查异常时的最佳做法  

### 简记  

* [File.ReadAllText][25] 打开一个文本 文件，将文件的所有行读入一个字符串，然后关闭该文件  

* 将一些内容包括到 try/catch 中，并且尽量考虑到你有可能要处理的异常，寻找到那些据你所知某个特定方法可能导致的具体异常。  

* [ex.Message][26] 获取描述当前异常的消息  

* [finally][27]  

## 第二十三讲 了解事件和事件驱动编程  

### 简介  
* 了解如何在 .NET Framework 类库中使用事件。从使用 Timer 类入手，逐步构建一个基本的 "Hello World" 应用程序  

### 简记  

* **事件驱动编程**是Microsoft的presentation API 的核心，无论对于 Web 还是 Windows 都是如此。可以说它是.NET Framework类库中所有其他 API 的核心。它是帮助构建具有真实用户界面的真实应用程序的必经步骤。  

* 利用事件，开发人员能够通过处理应用程序执行生命周期中的关键时刻来作出响应，你可以编写代码来响应出现的事件。  

* 后续分支可学习方向：ASP.net、WPF、UWP  

### 本讲代码  

#### cs  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;

namespace TimerExample
{
    class Program
    {
        static void Main(string[] args)
        {
            Timer myTimer = new Timer(2000);

            myTimer.Elapsed += MyTimer_Elapsed;   // MyTimer_Elapsed的事件附加或注册到Elapsed事件
            myTimer.Elapsed += MyTimer_Elapsed1;  // 运算符+=作用：指定多少在订阅或被附加到这个事件的当前项也附加上另一个事件处理程序

            myTimer.Start();  // 计时器开始

            Console.WriteLine("Press enter to remove the red event.");
            Console.ReadLine();

            myTimer.Elapsed -= MyTimer_Elapsed1;

            Console.ReadLine();
        }

        private static void MyTimer_Elapsed1(object sender, ElapsedEventArgs e)
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine("Elapsed1:{0:HH:mm:ss.fff}", e.SignalTime);
        }

        private static void MyTimer_Elapsed(object sender, ElapsedEventArgs e)
        {
            Console.ForegroundColor = ConsoleColor.White;
            Console.WriteLine("Elapsed:{0:HH:mm:ss.fff}", e.SignalTime);
        }
    }
}
```

#### WPF  
* 布局  
![WPF布局图片](./23_WPF_1.png)  

* 代码  
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WPFEvents
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            button.Click += button_MyOtherClick;
        }

        private void button_MyOtherClick(object sender, RoutedEventArgs e)
        {
            myOtherLable.Content = "Hello again!";
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            myLabel.Content = "Hello ezhq.xyz";
        }
    }
}
```

## 第二十四讲 下一步该怎么做  

### 简介  
了解解决常见问题的方法，去何处寻求帮助，如何寻找问题的答案，并成为 .NET 社区的一部分。查看详细了解开发应用程序的长期路径  

### 简记  
* 学会搜索  

* 相关提问技巧  

* 寻求帮助去处：  
    * **MSDN论坛**：[https://social.msdn.microsoft.com/forums/][28]  

* 后续学习建议：

    * 诸如SQL serve 的关系数据库知识  
    
    * 学习如何使用.net API的 Entity Framework 部分来访问数据库内存储的信息，访问应用中的数据  

    * 不知后续如何，可从HTML5、CSS3 和 JavaScript 入手  

    * 一些可供选择的关键词：

        * **面向对象编程**  

        * **软件开发原理**（如**驱进原理**、**YAGNI原则**、**依赖关系注入**（对于使用asp.net core MVC 等来创建某些新型应用程序非常重要）、**SOLID**（每个字母代表一个不同的次级原理，帮助你意识到你的应用程序中的面向对象的编程的可能））  

        * **软件开发的过程**、**有关软件开发和管理软件项目的工作流程**（即团队工作时需要用到的特定工具和技术，利用 Git 或 Visual Studio Online等源代码存储库或是团队自己的内部源代码存储库工具来与团队成员分享、执行或获得源代码）  

        * **构建单元测试**  

        * **敏捷项目管理**、**敏捷软件开发**、**迭代开发的性质**  




  
## 附1：语法集合  
* [String.ToCharArray方法()][1]  
* [Array.Reverse方法(Array)][2]  
* [foreach in][3]  
* [int32.Parse(String)][4]  
* [Console.Clear][5]  
* [Random][6]  
* [Random.Next(Int32, Int32)][7]  
* [String.Format][8]  
* [String.Substring(Int32)][9]  
* [String.Substring(Int32,Int32)][10]  
* [String.ToUpper()][11]  
* [String.Replace(Char, Char)][12]  
* [String.Remove(Int32, Int32)][13]  
* [String.Trim()][14]  
* [StringBuilder][15]  
* [标准数字格式字符串（英语）][16]  
* [标准数字格式字符串（中文）][17]  
* [decimal][18]  
* [Var][19]  
* [orderby][20]  
* [select][21]  
* [First][22]  
* [trueforall][23]  
* [Exists][24]  
* [File.ReadAllText][25]  
* [ex.Message][26]  
* [finally][27]  




[1]:https://msdn.microsoft.com/zh-cn/library/ezftk57x(v=vs.110).aspx  
[2]:https://msdn.microsoft.com/zh-tw/library/d3877932(v=vs.110).aspx  
[3]:https://docs.microsoft.com/zh-cn/dotnet/csharp/language-reference/keywords/foreach-in  
[4]:https://msdn.microsoft.com/zh-cn/library/b3h1hf19(v=vs.100).aspx  
[5]:https://msdn.microsoft.com/zh-cn/library/system.console.clear(v=vs.110).aspx  
[6]:https://msdn.microsoft.com/zh-cn/library/system.random(v=vs.110).aspx  
[7]:https://msdn.microsoft.com/zh-cn/library/2dx6wyd4(v=vs.110).aspx  
[8]:https://msdn.microsoft.com/zh-cn/library/system.string.format(v=vs.110).aspx  
[9]:https://msdn.microsoft.com/zh-cn/library/hxthx5h6(v=vs.110).aspx  
[10]:https://msdn.microsoft.com/zh-cn/library/aka44szs(v=vs.110).aspx  
[11]:https://msdn.microsoft.com/zh-cn/library/ewdd6aed(v=vs.110).aspx  
[12]:https://msdn.microsoft.com/zh-cn/library/czx8s9ts(v=vs.110).aspx  
[13]:https://msdn.microsoft.com/zh-cn/library/d8d7z2kk(v=vs.110).aspx  
[14]:https://msdn.microsoft.com/zh-cn/library/t97s7bs3(v=vs.110).aspx  
[15]:https://msdn.microsoft.com/zh-cn/library/system.text.stringbuilder(v=vs.110).aspx  
[16]:https://docs.microsoft.com/zh-cn/dotnet/standard/base-types/standard-numeric-format-strings  
[17]:https://msdn.microsoft.com/zh-cn/library/241ad66z(v=vs.80).aspx  
[18]:https://msdn.microsoft.com/zh-cn/library/364x0z75(v=vs.71).aspx  
[19]:https://docs.microsoft.com/zh-cn/dotnet/csharp/programming-guide/classes-and-structs/implicitly-typed-local-variables  
[20]:https://msdn.microsoft.com/zh-cn/library/bb534966(v=vs.110).aspx  
[21]:https://msdn.microsoft.com/zh-cn/library/bb548891(v=vs.110).aspx  
[22]:https://msdn.microsoft.com/zh-cn/library/bb535050(v=vs.110).aspx  
[23]:https://msdn.microsoft.com/zh-cn/library/x2kykt9x(v=vs.110).aspx  
[24]:https://msdn.microsoft.com/zh-cn/library/system.io.file.exists(v=vs.110).aspx  
[25]:https://msdn.microsoft.com/zh-cn/library/system.io.file.readalltext(v=vs.110).aspx
[26]:https://msdn.microsoft.com/zh-cn/library/system.exception.message(v=vs.110).aspx  
[27]:https://docs.microsoft.com/zh-cn/dotnet/csharp/language-reference/keywords/try-finally  
[28]:https://social.msdn.microsoft.com/forums/



---
**版权声明**  
创作站点：[ezhq.xyz](http://ezhq.xyz/)  
本文作者：[ezhq](mailto:ezhq@outlook.com)  
本文链接：[http://ezhq.xyz/2017/07/08/面向零基础新手的CSharp基础知识/](http://ezhq.xyz/2017/07/08/面向零基础新手的CSharp基础知识/)  
版权备注：任何形式使用本作品需保留本完整版权声明，使用本作品前应先和作者取得联系并说明用途，取得作者同意后方可使用。详细了解请点击上方本文作者以取得邮箱联系。