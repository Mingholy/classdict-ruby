# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Erase All data (Except pictures)
Course.destroy_all
BookNote.destroy_all
Contribution.destroy_all
User.destroy_all
BookReview.destroy_all
Usercourse.destroy_all
Userbook.destroy_all
Globalinfo.destroy_all
Userinfo.destroy_all
Coursebook.destroy_all
Book.destroy_all

#Get Data
Course.create! [
                   { title: "高级软件工程", school: "中国科学院大学", time: '2015-09-01', description: "软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。", clicks: 2240},
                   { title: "数据挖掘", school: "中国科学院大学", time: '2015-09-01', description: "本课程为计算机软件学科研究生的专业普及课程。主要介绍数据挖掘技术的起源、原理、主要算法、关键技术等。课程包含的主要议题包括：数据挖掘的重要性、特点、应用领域、数据仓库、数据预处理技术、关联规则、分类、预测、聚类、顺序模式等。 本课程采用全英文教学，并将注重理论与实践相结合，使计算机专业研究生掌握数据挖掘的概念的同时，锻炼解决实际问题的能力，为将来的科研工作奠定基础。", clicks: 5406},
                   { title: "数值分析", school: "中国科学院大学", time: '2015-09-01', description: "本课程为计算数学和应用数学专业硕士研究生的专业普及课，同时也可作为物理、力学、化学及工程科学等专业硕士研究生的选修课。本课程的主要内容包括：1. 基本概念；2. 线性方程组数值求解；3. 函数逼近；4．数值积分；5. 矩阵特征值数值计算；6.非线性方程数值求解；7.常微分方程数值解。 通过本课程的学习，希望学生掌握数值分析的基本内容和基本方法，能运用所学方法上机实算，为今后从事科学与工程计算打下基础。", clicks: 4312},
                   { title: "模式识别", school: "中国科学院大学", time: '2015-09-01', description: "本课程为控制科学与工程学科研究生的核心课，讲授和讨论模式识别领域的核心基础理论与方法。主要内容有模式识别定义和基本思想、贝叶斯决策、多种分类器设计、神经网络和深度学习、核方法、聚类分析、特征提取与选择、决策树、概率图模型等。 通过本课程的学习，希望学生能了解模式识别基础理论和方法，了解模式识别和机器学习最新研究成果，掌握基本思想和关键技术，培养学生在模式识别及其应用领域的研究和技术开发能力。 ", clicks: 4116},
                   { title: "矩阵分析与应用", school: "中国科学院大学", time: '2015-09-01', description: "本课程为控制科学与工程专业研究生的专业普及课。近代矩阵分析的范围很广，本课程主要内容为以矩阵为工具的处理大量有限空间形式与数量关系的方法学。包括：矩阵分析的基本理论，矩阵分解的基本技术和特殊矩阵的性质。 通过本课程的学习，希望学生能掌握利用矩阵解决问题的基本理论和基本技巧，对矩阵分析的近代发展有所了解，为利用矩阵分析的技术解决问题和从事专业研究打下基础。
", clicks: 2331},
                   { title: "图像处理与分析", school: "中国科学院大学", time: '2015-09-01', description: "本课程是为计算机、自控、电子等学科研究生开设的专业核心课。本课程讲授经典的图像处理与分析理解领域的主要概念、 算法思想和经典图像处理与分析技术。主要内容有图像模型，图像的空域与频域处理技术、彩色图像处理、小波分析与多分辨率分析技术、 形态学处理、信息熵与图像编码、图像边缘检测与形状描述等。 通过本课程的学习，希望学生能了解图像处理的基本概念与经典算法，为进一步学习机器视觉与图像理解打下坚实的基础，并通过Matlab语言对所学习内容的实践验证，加深对知识深入理解与灵活应用，提升学生良好的动手实践与研究能力。
", clicks: 1895},
                   { title: "线性代数", school: "中国科学院大学", time: '2015-09-01', description: "本课程是各专业本科生必修基础课。要求学生通过本门课程的学习，掌握线性代数的入门知识和方法，还有相关的代数基本知识。本课程分A（数理）, B（理工）两类。这两类的基本内容相同（见第三部分：教学内容和学时），但B类有更多的理论分析，A类则以严格的理论证明为基础。A类适合那些以后继续学习数学、物理、计算机等学科的学生，也适合继续学习其他学科的学生，B类适合以后学习数学以外任何专业的学生。通过本课程教学，学生应达到以下基本要求：掌握线性代数入门知识及相关的代数知识的基本概念和基本方法，初步了解和形成线性代数的思维方式，为学习线性代数II和其他课程打下基础。 ", clicks: 8755},
                   { title: "应用概率论", school: "中国科学院大学", time: '2015-09-01', description: "本课程是为非数学学科硕士研究生开设的一门公共选修课。概率论是研究随机现象数量规律的一门数学分支。通过该课程向学生传输概率论的基本思想与运用概率论解决实际问题的基本技能。
", clicks: 6532},
                   { title: "微积分", school: "中国科学院大学", time: '2015-09-01', description: "本课程是许多后继课程如微分方程、微分几何、复变函数、实变函数、概率论、基础物理、理论力学等学习的基础。微积分同时也是大学数学的基本能力及思维方法的训练重要课程。具有良好的微积分的基础对于今后的学习和研究起着关键的作用。
", clicks: 7098},
                   { title: "Python语言导论", school: "中国科学院大学", time: '2015-09-01', description: "本课程为各学科专业研究生的选修课。Python是出现较晚的一种程序设计语言，正逐渐发展为主流程序设计语言之一，目前在TIOBE编程语言排行榜中长期占据第八的位次。该语言简单、易学；免费、开源；可移植性好；支持面向对象；可扩展性好；支持可嵌入性；具有丰富的库。Python语言是少有的一种可以称得上既简单又功能强大的编程语言，使学习者不至于陷入复杂的语法，非常适合训练编程思维。Python语言是一种通用语言，可用于编写任何类型的程序，目前大量用于编写脚本程序、网站开发、文本处理、图像处理、科学计算及教育等方面。通过本课程的学习，要求达到：掌握Python语言的基本语法、具备阅读和理解程序的能力、掌握编程思维方法、能够结合科研实践编写一定难度的程序并获得进一步深入学习的能力。
", clicks: 1653},
                   { title: "网络数据挖掘", school: "中国科学院大学", time: '2015-09-01', description: "本课程是计算机科学专业研究生一年级上开设的专业普及课，其目的是使学生初步掌握数据挖掘的基本方法与在网络数据上的应用。本课程聚焦于数据挖掘基础理论及其在推荐系统、社交网络、互联网搜索、互联网广告中的应用及最新进展，授课与编程相结合，培养学生使用数据挖掘技术解决实际问题的能力，并逐步积累独立学习和研究的经验。
", clicks: 1698},
                   { title: "计算机体系结构", school: "中国科学院大学", time: '2015-09-01', description: "本课程为计算机科学与技术学科研究生的专业核心课。本课程重点论述计算机系统的各种基本结构、设计技术和性能分析方法。课程的目的及任务是：使学生通过本课程的学习，了解计算机系统的各种基本结构，掌握在计算机设计的各个环节中影响性能的因素，以及提高性能的各种理论和方法，并通过定量分析技术为设计的整体和局部的性能进行科学评价。", clicks: 1897},
                   { title: "数据库新技术", school: "中国科学院大学", time: '2015-09-01', description: "本课程为计算机专业研究生的普及课程 ，同时也可作为其它相关学科研究生选择。本课程讲授和讨论数据库设计和研究方面的关键技术。主要内容有:关系数据库设计理论和方法、数据库管理系统的功能、布式数据库、面向对象数据库、互联网分布式系统的数据资源存储与管理、云计算中数据库、大数据中的数据库技术、数据仓库和数据挖掘等。通过本课程的学习，希望学生能了解数据库前沿研究领域，了解数据库最新研究成果，掌握基本思想和关键技术，培养学生在数据库领域的研究能力。
", click: 3243},
                   { title: "计算机领域信息检索与利用实用技巧", school: "中国科学院大学", time: '2015-09-01', description: "本课程以普及学生科研信息查询技巧为具体目标，以提高学生科学研究能力为宗旨，推行研究生信息素质教育。具体目标包括：（1）有效发现和描述科研过程中的信息需求；（2）了解中科院图书馆的资源与服务；（3）掌握信息查找和获取方法；（4）培养信息的筛选和分析能力；（5）培养信息管理和利用技能。 本课要求学生了解科研过程中的信息需求类型，掌握综合利用数字图书馆的信息资源与服务的方法，能够高效查询、获取、管理和利用学术信息。
", clicks: 1853},
                   { title: "现代信息检索", school: "中国科学院大学", time: '2015-09-01', description: "本课程为计算机科学与技术学科研究生的专业普及课。本课程主要以互联网内容应用为背景讲授和讨论现代信息检索领域的主要思想和关键技术。主要内容有检索模型、检索评价、相关反馈、查询扩展、信息的组织和索引、文本处理、文本分类与聚类、信息过滤、WEB检索等等。 通过本课程的学习，希望学生能了解信息检索的基本思想和概念，了解信息检索相关的最新研究成果，培养学生在信息检索相关领域的研究能力和在互联网内容应用上的知识运用能力。", clicks: 1322},
                   { title: "计算机网络", school: "中国科学院大学", time: '2015-09-01', description: "本课程为计算机学科研究生的专业核心课。本课程讲授和讨论计算机网络前沿研究领域的主要思想和关键技术。主要内容有TCP/IP协议栈、路由算法、网络测量和分析、内容分发网络、SDN/NFV、未来互联网体系结构等。 通过本课程的学习，希望学生能了解网络体系结构和协议前沿研究领域，了解网络体系结构理论、系统实现与新型业务最新研究成果，掌握基本思想和关键技术，培养学生在网络协议、算法方面的研究能力。
", clicks: 2553},
                   { title: "C++ 程序设计", school: "中国科学院大学", time: '2015-09-01', description: "本课程的主要教学目的讲解C++语言的基本思想和方法，介绍面向对象的编程风格。使学生从理论上掌握C++程序设计语言的基础概念（对象、类、继承和多态等）。进而对复用、面向对象的思想、编译的基本过程及运行时结构有比较深刻的认识。 ", clicks: 3654},
                   { title: "人机交互", school: "中国科学院大学", time: '2015-09-01', description: "本课程为计算机科学与技术学科研究生的 专业普及课。本课程讲授和讨论 人机交互前沿研究领域的主要思想和关键技术。主要内容有图形用户界面、笔式用户界面、基于视觉的用户界面、多通道交互、界面设计与用户评估等。 通过本课程的学习，希望学生能了解自然人机交互的前沿研究领域，了解人机交互领域的最新研究成果，掌握基本思想和关键技术，培养学生进一步开展人机交互各领域的研究能力。
", clicks: 3212},
                   { title: "计算机网络", school: "中国科学院大学", time: '2015-09-01', description: "本课程为控制科学与工程、机械工程等学科研究生的专业普及课。本课程重点讲授旋转关节式工业机器人及其控制系统的基本原理，兼顾移动机器人的结构、定位与控制方法，并介绍机器人学的前沿研究领域以及部分热点问题。通过本课程的学习，希望研究生能够掌握工业机器人和轮式移动机器人的基本结构、建模方法、控制原理，了解智能机器人领域研究热点以及发展趋势，为后续研究工作打下基础。
", clicks: 1834},
                   { title: "当代美国史", school: "中国科学院大学", time: '2015-09-01', description: "这门课主要介绍美国第二次世界大战以后的社会政治、外交关系的演化，重点有两个：一个是冷战，另一个是民权运动，二者塑造、改变了美国社会，而且二者之间有极大的关联。这门课从杜鲁门到奥巴马，研究内容包括原子弹的制造和使用、冷战的开启、朝鲜战争、麦卡锡主义、苏联卫星升天的冲击、民权运动、越南战争、妇女运动、环保运动、冷战结束、计算机网络和生物新技术兴起、9/11恐怖袭击及其后果、气候变化、奥巴马的当选、经济大衰退的影响等。我们关注的问题包括：国际政治和国内政治如何互相影响？技术是美国当代史的主要驱动力吗？美国从1945 到2014年有那些变化、又有哪些没有变化？我们的主要学习方式为课下阅读和写作、课上讲演、讨论、视频，以求获得没够近代史的知识，并改进批判性思维、写作和口头交流的能力。
                  ", clicks: 1001},
                   { title: "科学幻想与现代科技", school: "中国科学院大学", time: '2015-09-01', description: "教学目的和要求： 本课程是为国科大研究生开设的公共选修课，旨在通过对包括科幻文学、科幻电影等各种科幻艺术发展历程的介绍与作品赏析，引导学生思考科技发展对现代文化的影响、科学技术与人类的关系，以及科学哲学、科技伦理等问题，增强学生对什么是科学、什么是科学精神等问题的理解，提高学生的人文素养
                  ", clicks: 1001},
                   { title: "临床心理学", school: "中国科学院大学", time: '2015-09-01', description: "本课程为心理学学科各专业博士、硕士研究生的学科专业基础课。 临床心理学(Clinical Psychology)是运用心理学的知识和原理，帮助病人纠正自己的精神和行为障碍，通过心理学的技术指导和培养健全的人，以便有效地适应环境和更有创造力。临床心理学属于应用心理学的范畴，各种心理问题和心理障碍的人是临床心理学的主要研究对象，但正常的心理过程也是临床心理学研究的范围。
                  ", clicks: 1002},
                   { title: "女性主义电影与批评", school: "中国科学院大学", time: '2015-09-01', description: "世界电影距今有百年历史，而女性主义及其电影批评和电影创作在探索中也走过四十多年的道路。随着女性主义本身学术化和知识体系化的发展，了解女性主义思想，了解女性主义美学和艺术，一方面已成为当代学人知识结构中的一种学养的必需，另一方面，鉴于我们的社会性别文化体系和结构中，两性关系依然是一个复杂的问题领域，培养清晰正确的社会性别意识，既是社会人文的重要主题之一，也是一种现代公民的人文觉悟和素养。从这两个需要出发，借助对女性主义电影的理论和创作的介绍分析，可以明晰和提高学生的社会性别觉悟以及电影艺术修养。
                  ", clicks: 1003},
                   { title: "军事科技史", school: "中国科学院大学", time: '2015-09-01', description: "教学目的、要求 使学生对军事科学技术的发展历程有所了解，开阔学生的眼界，加强学生的国防意识，提高学生的综合素质。 预修课程 （略） 教 材 （略） 主要内容 从古代到近现代军事装备及技术的基本状况和演变过程，历史上军事科学技术对战争以及国家安全的影响。
                  ", clicks: 1004},
                   { title: "中国现代作家系列讲座", school: "中国科学院大学", time: '2015-09-01', description: "内容提要： 中国现代作家系列人物之一：老舍之死与口述历史 中国现代作家系列人物之二： 二战风云中的战地记者—萧乾 中国现代作家系列人物之三：徐志摩---“你是人间的四月天” 中国作家学会会员、散文学会会员、老舍研究会常务理事
                  ", clicks: 1005},
                   { title: "巴洛克及其时代", school: "中国科学院大学", time: '2015-09-01', description: "教学目的和要求： 本课程是非艺术类专业本科生的选修课，旨在增进学生的艺术修养、审美能力、完善知识结构、扩展知识面、提高学生素质。 本课程以讲述及分析欧洲17世纪美术史中的主要流派、艺术家、作品其产生的文化、历史背景，从而提高学生鉴赏、分析、理解美术作品的能力，丰富学生的精神世界。
                  ", clicks: 1006},
                   { title: "诗词鉴赏", school: "中国科学院大学", time: '2015-09-01', description: "一、通过诗歌参证历史或通过历史印证诗歌，寻找诗中的文化、文化中的诗。文学不仅在短短的方寸之间为我们展示了过去的琼楼玉宇，逼真地复制了那在过去岁月中也许早已为人们淡忘了的生动具体的细节，而且还为我们塑造了一个活生生的人群，一种生活的韵味，一片奇妙的风光。不习之，何以知之？ 　　　二、诗歌能培养诗人的才情、哲人的思辩、历史学家的深沉。经典诗词可以使现代人在物欲横流而灵魂放逐的年代有一块属于自己的精神家园，并可以在其中诗意栖居。 　　　三、“一代有一代之文学”，从上古的神话到明清小说，每一个朝代都有其独领风骚的文学作品和文学现象，方今盛世，我们正应当将这些宝贵精神财富继承与传承下去
                  ", clicks: 1007},
                   { title: "导航与通讯", school: "中国科学院大学", time: '2015-09-01', description: "介绍全球卫星导航系统的基本理论，是卫星导航领域的技术入门必修课程，内容涵盖导航发展、卫星导航、系统时间产生、信号处理、测定轨、组合导航等方面。目的是使学生全面、系统了解卫星导航基础知识，培养学生在卫星导航与通讯方面的基本研究能力，具备开展卫星导航与通讯专业研究的基础技能。 导航与通讯是当代人们生产、生活的重要方式之一，为人们的出行、购物、旅游、交际、沟通提供了快捷与便利。有必要了解生产、生活中广泛应用的导航与通讯方式和手段。
                  ", clicks: 1008},
                   { title: "天文学史", school: "中国科学院大学", time: '2015-09-01', description: "为天文学及相关研究生普及天文学史及与之有关的天文学基础知识,以提高学生的天文素养和综合素质。要求学生了解天文学起源和发展的历史，尤其是近代天文学革命以及天体物理学的重大进展，掌握天文观测技术和分析手段不断发展的基本进程，领会人类探索和认识宇宙在广度和深度上取得的历史性进步，把握天文学与物理学以及光学、电子技术等相关科学技术的密切联系，同时了解太阳系、恒星、星系、宇宙这一知识结构体系的形成及其研究进展，加深理解天文学的基本概念和思想，认识天文学的科学本质、发展规律，及其在整个科学进步和人类文明发展史中的重要意义和作用，从而激发学生进一步学习天文学知识和从事天文观测与研究事业的兴趣和热情。
                  ", clicks: 1009},
                   { title: "天体物理中的辐射过程", school: "中国科学院大学", time: '2015-09-01', description: "本课程是为天文学科天体物理专业研究生开设的专业基础课，也可供相关物理专业研究生和天文工作者选修。该课程是联系基础物理和天文学的桥梁，是天体物理研究者的基本工具之一。要求学生熟悉电动力学、电磁理论，对量子力学和相对论理论有初步的了解和简单运用。课程将系统讲述天体物理中辐射过程的基本概念和原理，包括经典辐射理论和（半）量子辐射理论，以及辐射转移，基础性与系统性兼备。课堂讲授着重物理分析，有必需的理论推导，强调理论在各类天体中的应用，适当联系当前天体物理研究中的一些前沿问题。课程还包含较多的、理论联系实际的课后练习，以及综合运用辐射机制和辐射转移的小课题，学生必须有一定的课后练习时间。通过本课程的学习，要求学生掌握天体物理中辐射的基本过程、相应物理、以及应用技能，帮助学生较快进入天体物理研究课题。
                  ", clicks: 1010}
               ]





Book.create![{ title: "当代美国史", school: "中国科学院大学", time: '2015-09-01', description: "这门课主要介绍美国第二次世界大战以后的社会政治、外交关系的演化，重点有两个：一个是冷战，另一个是民权运动，二者塑造、改变了美国社会，而且二者之间有极大的关联。这门课从杜鲁门到奥巴马，研究内容包括原子弹的制造和使用、冷战的开启、朝鲜战争、麦卡锡主义、苏联卫星升天的冲击、民权运动、越南战争、妇女运动、环保运动、冷战结束、计算机网络和生物新技术兴起、9/11恐怖袭击及其后果、气候变化、奥巴马的当选、经济大衰退的影响等。我们关注的问题包括：国际政治和国内政治如何互相影响？技术是美国当代史的主要驱动力吗？美国从1945 到2014年有那些变化、又有哪些没有变化？我们的主要学习方式为课下阅读和写作、课上讲演、讨论、视频，以求获得没够近代史的知识，并改进批判性思维、写作和口头交流的能力。
", clicks: 1001},
{ title: "科学幻想与现代科技", school: "中国科学院大学", time: '2015-09-01', description: "教学目的和要求： 本课程是为国科大研究生开设的公共选修课，旨在通过对包括科幻文学、科幻电影等各种科幻艺术发展历程的介绍与作品赏析，引导学生思考科技发展对现代文化的影响、科学技术与人类的关系，以及科学哲学、科技伦理等问题，增强学生对什么是科学、什么是科学精神等问题的理解，提高学生的人文素养
", clicks: 1001},
{ title: "临床心理学", school: "中国科学院大学", time: '2015-09-01', description: "本课程为心理学学科各专业博士、硕士研究生的学科专业基础课。 临床心理学(Clinical Psychology)是运用心理学的知识和原理，帮助病人纠正自己的精神和行为障碍，通过心理学的技术指导和培养健全的人，以便有效地适应环境和更有创造力。临床心理学属于应用心理学的范畴，各种心理问题和心理障碍的人是临床心理学的主要研究对象，但正常的心理过程也是临床心理学研究的范围。
", clicks: 1002},
{ title: "女性主义电影与批评", school: "中国科学院大学", time: '2015-09-01', description: "世界电影距今有百年历史，而女性主义及其电影批评和电影创作在探索中也走过四十多年的道路。随着女性主义本身学术化和知识体系化的发展，了解女性主义思想，了解女性主义美学和艺术，一方面已成为当代学人知识结构中的一种学养的必需，另一方面，鉴于我们的社会性别文化体系和结构中，两性关系依然是一个复杂的问题领域，培养清晰正确的社会性别意识，既是社会人文的重要主题之一，也是一种现代公民的人文觉悟和素养。从这两个需要出发，借助对女性主义电影的理论和创作的介绍分析，可以明晰和提高学生的社会性别觉悟以及电影艺术修养。
", clicks: 1003},
{ title: "军事科技史", school: "中国科学院大学", time: '2015-09-01', description: "教学目的、要求 使学生对军事科学技术的发展历程有所了解，开阔学生的眼界，加强学生的国防意识，提高学生的综合素质。 预修课程 （略） 教 材 （略） 主要内容 从古代到近现代军事装备及技术的基本状况和演变过程，历史上军事科学技术对战争以及国家安全的影响。
", clicks: 1004},
{ title: "中国现代作家系列讲座", school: "中国科学院大学", time: '2015-09-01', description: "内容提要： 中国现代作家系列人物之一：老舍之死与口述历史 中国现代作家系列人物之二： 二战风云中的战地记者—萧乾 中国现代作家系列人物之三：徐志摩---“你是人间的四月天” 中国作家学会会员、散文学会会员、老舍研究会常务理事 
", clicks: 1005},
{ title: "巴洛克及其时代", school: "中国科学院大学", time: '2015-09-01', description: "教学目的和要求： 本课程是非艺术类专业本科生的选修课，旨在增进学生的艺术修养、审美能力、完善知识结构、扩展知识面、提高学生素质。 本课程以讲述及分析欧洲17世纪美术史中的主要流派、艺术家、作品其产生的文化、历史背景，从而提高学生鉴赏、分析、理解美术作品的能力，丰富学生的精神世界。
", clicks: 1006},
{ title: "诗词鉴赏", school: "中国科学院大学", time: '2015-09-01', description: "一、通过诗歌参证历史或通过历史印证诗歌，寻找诗中的文化、文化中的诗。文学不仅在短短的方寸之间为我们展示了过去的琼楼玉宇，逼真地复制了那在过去岁月中也许早已为人们淡忘了的生动具体的细节，而且还为我们塑造了一个活生生的人群，一种生活的韵味，一片奇妙的风光。不习之，何以知之？ 　　　二、诗歌能培养诗人的才情、哲人的思辩、历史学家的深沉。经典诗词可以使现代人在物欲横流而灵魂放逐的年代有一块属于自己的精神家园，并可以在其中诗意栖居。 　　　三、“一代有一代之文学”，从上古的神话到明清小说，每一个朝代都有其独领风骚的文学作品和文学现象，方今盛世，我们正应当将这些宝贵精神财富继承与传承下去
", clicks: 1007},
{ title: "导航与通讯", school: "中国科学院大学", time: '2015-09-01', description: "介绍全球卫星导航系统的基本理论，是卫星导航领域的技术入门必修课程，内容涵盖导航发展、卫星导航、系统时间产生、信号处理、测定轨、组合导航等方面。目的是使学生全面、系统了解卫星导航基础知识，培养学生在卫星导航与通讯方面的基本研究能力，具备开展卫星导航与通讯专业研究的基础技能。 导航与通讯是当代人们生产、生活的重要方式之一，为人们的出行、购物、旅游、交际、沟通提供了快捷与便利。有必要了解生产、生活中广泛应用的导航与通讯方式和手段。
", clicks: 1008},
{ title: "天文学史", school: "中国科学院大学", time: '2015-09-01', description: "为天文学及相关研究生普及天文学史及与之有关的天文学基础知识,以提高学生的天文素养和综合素质。要求学生了解天文学起源和发展的历史，尤其是近代天文学革命以及天体物理学的重大进展，掌握天文观测技术和分析手段不断发展的基本进程，领会人类探索和认识宇宙在广度和深度上取得的历史性进步，把握天文学与物理学以及光学、电子技术等相关科学技术的密切联系，同时了解太阳系、恒星、星系、宇宙这一知识结构体系的形成及其研究进展，加深理解天文学的基本概念和思想，认识天文学的科学本质、发展规律，及其在整个科学进步和人类文明发展史中的重要意义和作用，从而激发学生进一步学习天文学知识和从事天文观测与研究事业的兴趣和热情。
", clicks: 1009},
{ title: "天体物理中的辐射过程", school: "中国科学院大学", time: '2015-09-01', description: "本课程是为天文学科天体物理专业研究生开设的专业基础课，也可供相关物理专业研究生和天文工作者选修。该课程是联系基础物理和天文学的桥梁，是天体物理研究者的基本工具之一。要求学生熟悉电动力学、电磁理论，对量子力学和相对论理论有初步的了解和简单运用。课程将系统讲述天体物理中辐射过程的基本概念和原理，包括经典辐射理论和（半）量子辐射理论，以及辐射转移，基础性与系统性兼备。课堂讲授着重物理分析，有必需的理论推导，强调理论在各类天体中的应用，适当联系当前天体物理研究中的一些前沿问题。课程还包含较多的、理论联系实际的课后练习，以及综合运用辐射机制和辐射转移的小课题，学生必须有一定的课后练习时间。通过本课程的学习，要求学生掌握天体物理中辐射的基本过程、相应物理、以及应用技能，帮助学生较快进入天体物理研究课题。
", clicks: 1010}]



BookNote.create! [
	{title:"1",book_id:1 ,user_id:1 ,page:1 ,content_type:0,content:"First of all, open your book anyway.:)",pro:432 ,con:122 },
	{title:"2",book_id:2 ,user_id:2 ,page:12 ,content_type:1,content:"I want to know why the formulation is like this.",pro:230 ,con:152 },
	{title:"3",book_id:3 ,user_id:2 ,content_type:0,content:"出来",pro:0 ,con:0 },
	{title:"4",book_id:2 ,user_id:2 ,content_type:0,content:"看看效果",pro:0 ,con:0 },
	{title:"5",book_id:2 ,user_id: 2,content_type:0,content:"看看效果",pro:0 ,con:0 },
	{title:"6",book_id:2 ,user_id:2 ,page:1 ,content_type:0,content:"心得2",pro:0 ,con: 0},
	{title:"7",book_id:1,user_id:2 ,page:2 ,content_type:1,content:"怎样问问题",pro:0 ,con:0 },
	{title:"8",book_id:2 ,user_id:4 ,page:1 ,content_type:0,content:"我来发个心得秀优越",pro:0 ,con:0 },	
	{title:"9",book_id:1,user_id:3 ,page:1 ,content_type:3,content:"I really feel it is up to my mind",pro:332 ,con:244 },
	{title:"10",book_id:1,user_id:4 ,page:1 ,content_type:3,content:"I would think otherwise.",pro:132 ,con:94 },
	{title:"11",book_id:1,user_id: 4,page:0 ,content_type:3,content:"哈哈哈啊",pro:0 ,con:0 },
	{title:"12",book_id:1,user_id:4 ,page:0 ,content_type:3,content:"快出来",pro:0 ,con:0 },
	{title:"13",book_id:1,user_id:4 ,page:0 ,content_type:3,content:"看看能行不",pro:0 ,con:0 },
	{title:"14",book_id:1 ,user_id:4 ,page:0 ,content_type:3,content:"看看能行不",pro:0 ,con:0},
	{title:"15",book_id:1 ,user_id:4 ,page:0 ,content_type:3,content:"加油",pro:0 ,con:0 },
	{title:"16",book_id:1 ,user_id:4 ,page:0 ,content_type:3,content:"管理员是我",pro:0 ,con:0 },
	{title:"17",book_id:1 ,user_id:4 ,page:0 ,content_type:3,content:"你说我在灌水？",pro:0 ,con:0 },
	{title:"18",book_id:1 ,user_id:4 ,page:0 ,content_type:3,content:"你好啊",pro:0 ,con:0 },
	{title:"19",book_id:1 ,user_id:4 ,page:0 ,content_type:3,content:"其实你翻翻书后面就好了",pro:0 ,con:0 },
	{title:"20",book_id:1 ,user_id:4 ,page:0 ,content_type:3,content:"这本书叫做",pro:0 ,con:0 },
	{title:"21",book_id:1 ,user_id:4 ,page:0 ,content_type:3,content:"同求答案",pro:0 ,con: 0},
	{title:"22",book_id:1 ,user_id:4 ,page:0 ,content_type:3,content:"如题",pro:0 ,con: 0}

]

Contribution.create! [
	{id:1,user_id:4,content_type:0,content_id:18},
	{id:2,user_id:4,content_type:0,content_id:19},
	{id:3,user_id:4,content_type:0,content_id:20},
	{id:4,user_id:4,content_type:0,content_id:21}
]
Topic_relation.create! [
	{id:1,topic_id:1,reply_id:9},
	{id:2,topic_id:1,reply_id:10},
	{id:3,topic_id:0,reply_id:11},
	{id:4,topic_id:0,reply_id:12},
	{id:5,topic_id:1,reply_id:13},
	{id:6,topic_id:1,reply_id:14},
	{id:7,topic_id:1,reply_id:15},
	{id:8,topic_id:1,reply_id:16},
	{id:9,topic_id:1,reply_id:17},
	{id:10,topic_id:1,reply_id:18},
	{id:11,topic_id:2,reply_id:19},
	{id:12,topic_id:2,reply_id:20},
	{id:13,topic_id:2,reply_id:21},
	{id:14,topic_id:2,reply_id:22}
]
User.create! [
	{id:1,email:"addg@vetg.com",  password:"123456", nickname:"Addg", level:0,score:0},
	{id:2,email:"mnd@ge.org,cn",  password:"123456", nickname:"Mndg", level:0,score:0},
	{id:3,email:"vddcb@geevb.com",password:"123456", nickname:"Vddcb",level:0,score:0},
	{id:4,email:"admin@admin.com",password:"123456", nickname:"Admin",level:0,score:250}
]


Userbook.create! [
	{id:1,user_id:1,book_id:1},
	{id:2,user_id:1,book_id:2},
	{id:3,user_id:4,book_id:1},
	{id:4,user_id:4,book_id:2},
	{id:5,user_id:4,book_id:3},
	{id:6,user_id:4,book_id:4},
	{id:7,user_id:4,book_id:5},
	{id:8,user_id:4,book_id:6},
	{id:9,user_id:4,book_id:7}
]



























