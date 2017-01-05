package com.jiuyi.utils;

import java.sql.ResultSet;
import java.sql.SQLException;
 
/**
 * RowMapper
 * @author baizilin
 * @version v1.0
 */
public interface RowMapper
{
    public Object mapRow(ResultSet rs, int index)
        throws SQLException;
}