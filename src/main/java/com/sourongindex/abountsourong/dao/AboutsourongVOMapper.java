package com.sourongindex.abountsourong.dao;

import com.sourongindex.abountsourong.domain.AboutsourongVO;
import com.sourongindex.abountsourong.domain.AboutsourongVOExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AboutsourongVOMapper {
    int countByExample(AboutsourongVOExample example);

    int deleteByExample(AboutsourongVOExample example);

    int deleteByPrimaryKey(Integer sourongid);

    int insert(AboutsourongVO record);

    int insertSelective(AboutsourongVO record);

    List<AboutsourongVO> selectByExample(AboutsourongVOExample example);

    AboutsourongVO selectByPrimaryKey(Integer sourongid);

    int updateByExampleSelective(@Param("record") AboutsourongVO record, @Param("example") AboutsourongVOExample example);

    int updateByExample(@Param("record") AboutsourongVO record, @Param("example") AboutsourongVOExample example);

    int updateByPrimaryKeySelective(AboutsourongVO record);

    int updateByPrimaryKey(AboutsourongVO record);
}