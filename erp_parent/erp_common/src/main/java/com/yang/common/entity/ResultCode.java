package com.yang.common.entity;

import io.swagger.annotations.ApiModelProperty;

/**
 * @Description: 返回码定义
 * @author: caoshenyang
 * @date: 2020.11.20
 */
public enum ResultCode {

    //---系统成功返回码-----
    SUCCESS(true, 20000, "操作成功！"),

    //---系统错误返回码-----
    FAIL(false, 10001, "操作失败"),
    UNAUTHENTICATED(false, 10002, "您还未登录"),
    UNAUTHORISE(false, 10003, "权限不足"),
    SERVER_ERROR(false, 99999, "抱歉，系统繁忙，请稍后重试！");
    //---用户操作返回码----
    //---企业操作返回码----
    //---权限操作返回码----
    //---其他操作返回码----

    @ApiModelProperty(value = "操作是否成功")
    boolean success;

    @ApiModelProperty(value = "操作代码")
    int code;

    @ApiModelProperty(value = "提示信息")
    String message;

    ResultCode(boolean success, int code, String message) {
        this.success = success;
        this.code = code;
        this.message = message;
    }

    public boolean success() {
        return success;
    }

    public int code() {
        return code;
    }

    public String message() {
        return message;
    }
}
