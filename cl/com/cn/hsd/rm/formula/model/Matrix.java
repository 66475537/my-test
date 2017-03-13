package com.cn.hsd.rm.formula.model;

import java.io.Serializable;

/**
 * Model class of 风险矩阵.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Matrix implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 主键. */
	private String id;

	/** 子节点横坐标风险要素ID. */
	private String xId;

	/** 子节点纵坐标风险要素ID. */
	private String yId;

	/** 坐标（X1,X1Y1,X2Y3...）. */
	private String coord;

	/** 坐标值. */
	private Integer coordVal;

	/** 三维矩阵的低，中，高（分别用1，2，3表示，不是三维矩阵的为0）. */
	private Short dLevel;

	/** 风险要素. */
	private BiRiskFactors biRiskFactors;

	/**
	 * Constructor.
	 */
	public Matrix() {
	}

	/**
	 * Set the 主键.
	 * 
	 * @param id
	 *            主键
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * Get the 主键.
	 * 
	 * @return 主键
	 */
	public String getId() {
		return this.id;
	}

	/**
	 * Set the 子节点横坐标风险要素ID.
	 * 
	 * @param xId
	 *            子节点横坐标风险要素ID
	 */
	public void setXId(String xId) {
		this.xId = xId;
	}

	/**
	 * Get the 子节点横坐标风险要素ID.
	 * 
	 * @return 子节点横坐标风险要素ID
	 */
	public String getXId() {
		return this.xId;
	}

	/**
	 * Set the 子节点纵坐标风险要素ID.
	 * 
	 * @param yId
	 *            子节点纵坐标风险要素ID
	 */
	public void setYId(String yId) {
		this.yId = yId;
	}

	/**
	 * Get the 子节点纵坐标风险要素ID.
	 * 
	 * @return 子节点纵坐标风险要素ID
	 */
	public String getYId() {
		return this.yId;
	}

	/**
	 * Set the 坐标（X1,X1Y1,X2Y3...）.
	 * 
	 * @param coord
	 *            坐标（X1,X1Y1,X2Y3...）
	 */
	public void setCoord(String coord) {
		this.coord = coord;
	}

	/**
	 * Get the 坐标（X1,X1Y1,X2Y3...）.
	 * 
	 * @return 坐标（X1,X1Y1,X2Y3...）
	 */
	public String getCoord() {
		return this.coord;
	}

	/**
	 * Set the 坐标值.
	 * 
	 * @param coordVal
	 *            坐标值
	 */
	public void setCoordVal(Integer coordVal) {
		this.coordVal = coordVal;
	}

	/**
	 * Get the 坐标值.
	 * 
	 * @return 坐标值
	 */
	public Integer getCoordVal() {
		return this.coordVal;
	}

	/**
	 * Set the 三维矩阵的低，中，高（分别用1，2，3表示，不是三维矩阵的为0）.
	 * 
	 * @param dLevel
	 *            三维矩阵的低，中，高（分别用1，2，3表示，不是三维矩阵的为0）
	 */
	public void setDLevel(Short dLevel) {
		this.dLevel = dLevel;
	}

	/**
	 * Get the 三维矩阵的低，中，高（分别用1，2，3表示，不是三维矩阵的为0）.
	 * 
	 * @return 三维矩阵的低，中，高（分别用1，2，3表示，不是三维矩阵的为0）
	 */
	public Short getDLevel() {
		return this.dLevel;
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
		Matrix other = (Matrix) obj;
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