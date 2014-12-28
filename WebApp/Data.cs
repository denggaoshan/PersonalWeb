using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp
{
    /// <summary>
    /// 专门与数据库交互的类
    /// </summary>
    public class Data
    {
        /// <summary>
        /// 根据用户名，获得用户的ID
        /// </summary>
        /// <param name="username"></param>
        /// <returns>没找到返回-1</returns>
        public static int GetIdByUsername(string username)
        {
            DataLinkDataContext ctx = new DataLinkDataContext();

            var query = from use in ctx.User
                        select use;

            foreach (var user in query)
            {
                if (user.username == username)
                {
                    return user.Id;
                }
            }
            return -1;
        }

        /// <summary>
        /// 根据ID，获得用户的信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns>ID不存在返回null</returns>
        public static UserInfo GetUserById(int id)
        {
            DataLinkDataContext ctx = new DataLinkDataContext();

            var query = from use in ctx.UserInfo
                        select use;

            foreach (var user in query)
            {
                if (user.Id == id)
                {
                    return user;
                }
            }
            return null;
        }

        /// <summary>
        /// 判断用户名密码是否正确
        /// </summary>
        /// <param name="name"></param>
        /// <param name="psw"></param>
        /// <returns>若存在返回用户的ID，否则返回-1</returns>
        public static int CheckUser(string name, string psw)
        {
            DataLinkDataContext ctx = new DataLinkDataContext();

            var query = from use in ctx.User
                        select use;

            foreach (var user in query)
            {
                if (user.password == psw)
                {
                    return user.Id;
                }
            }
            return -1;
        }

        /// <summary>
        /// 通过账号、密码添加一个用户
        /// </summary>
        /// <param name="name"></param>
        /// <param name="psw"></param>
        /// <returns>如果注册成功，返回用户的ID，否则返回-1</returns>
        public static int AddUser(string name,string psw)
        {
            return -1;
        }
    }
}