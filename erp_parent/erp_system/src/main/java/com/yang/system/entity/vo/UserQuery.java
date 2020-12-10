package com.yang.system.entity.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Description: 用户查询对象
 * @author: caoshenyang
 * @date: 2020.12.09
 */
@Data
public class UserQuery {

    @ApiModelProperty(value = "手机号码")
    private String mobile;

    @ApiModelProperty(value = "用户名称")
    private String username;

}
