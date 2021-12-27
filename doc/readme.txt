
SSM整合,异常处理：

    1. 使用的entity表

    2. 创建maven web项目

    3. 修改pom.xml加入依赖： spring ，springmvc，mybatis， mybatis-spring, mysql驱动，druid， jackson

    4. 写web.xml ： 声明容器对象

       1）声明spring的监听器ContextLoaderListener： 创建spring的容器对象， 创建service ，dao对象

       2）声明springmvc的中央调度器DispatherServlet : 创建springmvc容器对象， 创建controller对象

       3）声明字符集的过滤器 CharacterEncodingFilter ， 解决post请求乱码的问题

    4.5：创建异常类

    5. 创建程序中的包， dao ，service， controller， entity

    6. 写spring，springmvc， mybatis配置文件

    7. 写java代码， 实体类， dao接口和mapper文件， service类，controller类。 使用注解声明对象和赋值

    8. 创建视图文件， 各种jsp

