package com.service.impl;

import com.dao.AdminDao;
import com.po.Admin;
import com.po.PageInfo;
import com.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 用户Service接口实现类
 */
@Service("adminService")
@Transactional
/**
 * @Transactional 注解是 Spring 框架中用于声明事务管理的注解。它的主要作用是在方法或类上标识事务边界，以便 Spring 可以管理这些方法或类中的数据库操作，确保它们在一个事务中被执行。事务是数据库的一个逻辑单元，它确保了一组操作要么全部成功，要么全部失败，从而保证数据的一致性和完整性。
 */
public class AdminServiceImpl implements AdminService {
	// 注入UserDao
	@Autowired
	private AdminDao adminDao;

	//管理登陆查询
	@Override
	public Admin findAdmin(Admin admin) {
		Admin a = adminDao.findAdmin(admin);
		return a;
	}

	@Override
	public List<Admin> getAll(){

		List<Admin> adminList = adminDao.getAll();
		return adminList;
    }

	@Override
	public PageInfo<Admin> findPageInfo(String a_username, String a_describe,Integer a_id,Integer pageIndex, Integer pageSize) {
		PageInfo<Admin> pi = new PageInfo<Admin>();
		pi.setPageIndex(pageIndex);
		pi.setPageSize(pageSize);
		//获取总条数
		Integer totalCount = adminDao.totalCount(a_username,a_describe,a_id);
		if (totalCount>0){
			pi.setTotalCount(totalCount);
			//每一页显示管理员信息数
			//currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
			List<Admin> adminList =	adminDao.getAdminList(a_username,a_describe,a_id,
					(pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
			pi.setList(adminList);
		}
		return pi;
	}

	//添加管理员信息
	@Override
	public int addAdmin(Admin admin) {
		return adminDao.addAdmin(admin);
	}

	//通过id删除管理员信息
	@Override
	public int deleteAdmin(Integer a_id) {
		return adminDao.deleteAdmin(a_id);
	}

	//修改管理员信息
	@Override
	public int updateAdmin(Admin admin) {
		return adminDao.updateAdmin(admin);
	}
	//根据id查询管理员
	@Override
	public Admin findAdminById (Integer a_id){
		Admin a = adminDao.findAdminById(a_id);
		return  a;
	}
}
