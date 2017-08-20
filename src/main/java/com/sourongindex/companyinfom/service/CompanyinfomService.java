package com.sourongindex.companyinfom.service;

import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourongindex.companyinfom.domain.CompanyinfomVO;

public interface CompanyinfomService {
    /**
	 * 新增
	 * @param entity
	 * @return
	 */
	public int add(CompanyinfomVO entity);
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int delete(Integer id);
	/**
	 * 修改
	 * @param entity
	 * @return
	 */
	public int update(CompanyinfomVO entity);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public CompanyinfomVO get(Integer id);
	
	/**
	 * 使用datatables的分页查询
	 * @param request
	 * @return
	 */
	public DataTablesResponse<CompanyinfomVO> listByPage(DataTablesRequest request) throws Throwable;
	
	
}
