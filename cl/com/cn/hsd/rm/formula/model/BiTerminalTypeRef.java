package com.cn.hsd.rm.formula.model;

import java.io.Serializable;

/**
 * Model class of 终端分类关系表.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class BiTerminalTypeRef implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 主建. */
	private String id;

	/** 风险要素. */
	private BiRiskFactors biRiskFactors;

	/** 终端分类. */
	private BiTerminalType biTerminalType;

	/**
	 * Constructor.
	 */
	public BiTerminalTypeRef() {
	}

	/**
	 * Set the 主建.
	 * 
	 * @param id
	 *            主建
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * Get the 主建.
	 * 
	 * @return 主建
	 */
	public String getId() {
		return this.id;
	}

	/**
	 * Set the 风险要素.
	 * 
	 * @param biRiskFactors
	 *            风险要素
	 */
	public void setBiRiskFactors(BiRiskFactors biRiskFactors) {
		this.biRiskFactors = biRiskFactors;
	}

	/**
	 * Get the 风险要素.
	 * 
	 * @return 风险要素
	 */
	public BiRiskFactors getBiRiskFactors() {
		return this.biRiskFactors;
	}

	/**
	 * Set the 终端分类.
	 * 
	 * @param biTerminalType
	 *            终端分类
	 */
	public void setBiTerminalType(BiTerminalType biTerminalType) {
		this.biTerminalType = biTerminalType;
	}

	/**
	 * Get the 终端分类.
	 * 
	 * @return 终端分类
	 */
	public BiTerminalType getBiTerminalType() {
		return this.biTerminalType;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		BiTerminalTypeRef other = (BiTerminalTypeRef) obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		} else if (!id.equals(other.id)) {
			return false;
		}
		return true;
	}

}
