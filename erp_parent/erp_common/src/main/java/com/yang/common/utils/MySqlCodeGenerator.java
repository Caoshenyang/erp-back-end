package com.yang.common.utils;


import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

/**
 * @Description: 代码生成器
 * @author: caoshenyang
 * @date: 2020.11.20
 */
public class MySqlCodeGenerator {

    public static void main(String[] args) {

        //1、全局配置
        GlobalConfig config = new GlobalConfig();
        //开启AR模式
        config.setActiveRecord(true)
                //设置作者
                .setAuthor("caoshenyang")
                //生成后打开资源管理器
                .setOpen(false)
                //生成路径(一般都是生成在此项目的src/main/java下面,根据具体情况更改)
                .setOutputDir("D:\\erp-back-end\\erp_parent\\erp_system" + "/src/main/java")
                //第二次生成会把第一次生成的覆盖掉
                .setFileOverride(false)
                //主键策略
                .setIdType(IdType.ID_WORKER_STR)
                //生成的service接口名字首字母是否为I，这样设置就没有I
                .setServiceName("%sService")
                //定义生成的实体类中日期类型
                .setDateType(DateType.ONLY_DATE)
                //开启swagger2模式
                .setSwagger2(true)
                //生成resultMap
                .setBaseResultMap(true)
                //在xml中生成基础列
                .setBaseColumnList(true);

        //2、数据源配置
        DataSourceConfig dataSourceConfig = new DataSourceConfig();
        //数据库类型
        dataSourceConfig.setDbType(DbType.MYSQL)
                .setDriverName("com.mysql.cj.jdbc.Driver")
                .setUrl("jdbc:mysql://localhost:3306/erp?useUnicode=true&&characterEncoding=utf8&&useSSL=false&&serverTimezone=Asia/Shanghai")
                .setUsername("root")
                .setPassword("root");
        //3、策略配置
        StrategyConfig strategyConfig = new StrategyConfig();
        //开启全局大写命名
        strategyConfig.setCapitalMode(true)
                //下划线到驼峰的命名方式
                .setNaming(NamingStrategy.underline_to_camel)
                //表名前缀
                .setTablePrefix("sys_")
                //使用lombok
                .setEntityLombokModel(true)
                //restful api风格控制器
                .setRestControllerStyle(true)
                //url中驼峰转连接符
                .setControllerMappingHyphenStyle(true)
                //逆向工程使用的表
                .setInclude("sys_user","sys_role","sys_permission","sys_role_permission","sys_user_role");
        //4、包名策略配置
        PackageConfig packageConfig = new PackageConfig();
        //设置包名的parent
        packageConfig.setParent("com.yang")
                .setModuleName("system")
                .setMapper("mapper")
                .setService("service")
                .setController("controller")
                .setEntity("entity");
        //5、整合配置
        AutoGenerator autoGenerator = new AutoGenerator();
        autoGenerator.setGlobalConfig(config)
                .setDataSource(dataSourceConfig)
                .setStrategy(strategyConfig)
                .setPackageInfo(packageConfig);
        //6、执行
        autoGenerator.execute();
    }
}

