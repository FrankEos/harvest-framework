package org.harvest.web.bean.base;

import java.util.List;

public class BaseListResponse<T> extends BaseResponse {
	private int total;

	private List<T> rows;

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "BaseResponse [total=" + total + ", rows=" + rows + "]";
	}

}
