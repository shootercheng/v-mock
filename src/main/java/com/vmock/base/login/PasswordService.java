package com.vmock.base.login;

import com.vmock.base.exception.UserPasswordNotMatchException;
import com.vmock.biz.entity.User;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.stereotype.Component;

/**
 * 登录密码方法
 *
 * @author mock
 */
@Component
public class PasswordService {

    public void validate(User user, String inputPassword) {
        if (!matches(user, inputPassword)) {
            throw new UserPasswordNotMatchException();
        }
    }

    public boolean matches(User user, String inputPassword) {
        return user.getPassword().equals(encryptPassword(inputPassword, user.getSalt()));
    }

    public String encryptPassword(String password, String salt) {
        return new Md5Hash(password, salt).toHex();
    }

    public static void main(String[] args) {
        String password = "123456";
        String salt = "fc4a41";
        String encrypt = new Md5Hash(password, salt).toHex();
        System.out.println(encrypt);
    }
}
