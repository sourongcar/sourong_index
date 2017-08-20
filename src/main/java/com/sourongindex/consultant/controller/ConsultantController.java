package com.sourongindex.consultant.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.base.common.domain.CurrentUser;
import com.base.common.domain.JsonResult;
import com.base.datatables.domain.DataTablesRequest;
import com.base.datatables.domain.DataTablesResponse;
import com.sourongindex.abountsourong.domain.AboutsourongVO;
import com.sourongindex.aboutsourong.service.AboutsourongService;
import com.sourongindex.banner.domain.BannerVO;
import com.sourongindex.banner.service.BannerService;
import com.sourongindex.companyinfom.domain.CompanyinfomVO;
import com.sourongindex.companyinfom.service.CompanyinfomService;
import com.sourongindex.consultant.domain.ConsultantVO;
import com.sourongindex.consultant.service.ConsultantService;
import com.sourongindex.createHtml.util.CreateHtml;
import com.sourongindex.product.domain.ProductVO;
import com.sourongindex.product.service.ProductService;
import com.sourongindex.serviceidea.domain.ServiceideaVO;
import com.sourongindex.serviceidea.service.ServiceideaService;


@Controller
@RequestMapping("/consultant")
public class ConsultantController {
	@Autowired
	private ConsultantService service;
	@Autowired
	private CompanyinfomService companyService;
	@Autowired
	private ServiceideaService ideaService;
	@Autowired
	private AboutsourongService aboutService;
	@Autowired
	private ProductService proService;
	@Autowired
	private BannerService bannerService;
	@RequestMapping("/edit")
	public String edit(Integer consultantid,ModelMap map){
		if(consultantid!=null){
			map.addAttribute("entity",service.get(consultantid));
		}
		return "consultant/edit";//跳转到编辑页面
	}
	
	@RequestMapping("/doEdit")
	public String doEdit(ConsultantVO entity){
		CurrentUser user = CurrentUser.getInstance();
		//entity.setCreatorUserId(user.getUserId());//创建者id
		if(entity.getConsultantid()!=null){//修改
			service.update(entity);
		}else{//新增
			service.add(entity);
		}
		return "redirect:/consultant/list.action";//跳转到列表页面
	}
	
	@RequestMapping("/rest/doDelete")
	public @ResponseBody JsonResult doDelete(Integer id){
		JsonResult rs=new JsonResult();
		service.delete(id);
		rs.setStatus(1);
		rs.setMsg("删除成功！");
		return rs;
	}
	
	@RequestMapping("/list")
	public String list(){
		return "consultant/list";//跳转到分页查询页面
	}
	/**
	 * datatable分页查询接口
	 * @param request
	 * @return
	 * @throws Throwable
	 */
	@RequestMapping("/rest/doSearch")
	public @ResponseBody DataTablesResponse<ConsultantVO> pageSearch(
			@RequestBody DataTablesRequest request) throws Throwable{
		return service.listByPage(request);
	}
	
	@RequestMapping("/tohtml")
	public String export(){
		CreateHtml html=new CreateHtml();
		Map<String, Object> root=new HashMap<String, Object>();
		List<ConsultantVO> list=service.list();
		System.out.println(list);
		CompanyinfomVO company=companyService.get(1);
		List<ServiceideaVO> idealist=ideaService.list();
		AboutsourongVO about=aboutService.get(1);
		List<ProductVO> prolist=proService.list();
		List<BannerVO> banlist=bannerService.list();
		root.put("Consultants", list);
		root.put("Serviceideas", idealist);
		root.put("Prouducts", prolist);
		root.put("Banners", banlist);
		root.put("servicePhone",company.getServicephone());
		root.put("serviceTime", company.getServicetime());
		root.put("companyaddress", company.getCompanyaddress());
		root.put("detailaddress", company.getDetailaddress());
		root.put("companyqr",company.getCompanyqr());
		root.put("companylogo", company.getCompanylogo());
		root.put("title", about.getTitle());
		root.put("aboutpic", about.getPicname());
		root.put("specificDescribe", about.getSpecificdescribe());
		html.exportHtml("home", root, "home.html");
		return "consultant/succeed";
	}
	
}
