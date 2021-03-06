package io.github.xaphira.panic.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import io.github.xaphira.common.exceptions.SystemErrorException;
import io.github.xaphira.common.utils.ErrorCode;
import io.github.xaphira.common.utils.ParameterStatic;
import io.github.xaphira.feign.dto.chart.AxisChartDto;
import io.github.xaphira.feign.dto.chart.CommonChartDto;
import io.github.xaphira.feign.dto.chart.LegendChartDto;
import io.github.xaphira.feign.dto.chart.SeriesChartDto;
import io.github.xaphira.feign.service.ParameterI18nService;
import io.github.xaphira.panic.dao.PanicReportRepo;

@Service("statisticsPanicReportService")
public class StatisticsPanicReportImplService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private PanicReportRepo panicReportRepo;
	
	@Autowired
	private ParameterI18nService parameterI18nService;

	@Transactional(isolation = Isolation.READ_UNCOMMITTED, rollbackFor = SystemErrorException.class)
	public CommonChartDto getStatisticsArea(Integer year, Authentication authentication, String p_locale) throws Exception {
		if (year != null) {
			List<Map<String, Object>> panics = panicReportRepo.loadDataGroupByProvince(year);
			if(panics != null) {
				CommonChartDto chart = new CommonChartDto();
				LegendChartDto legend = new LegendChartDto();
				AxisChartDto axis = new AxisChartDto();
				SeriesChartDto series = new SeriesChartDto();
				series.setName("Area");
				legend.getData().add("Area");
				panics.forEach(panic -> {
					series.getData().put(panic.get("area").toString(), panic.get("total"));
					axis.getData().add(panic.get("area").toString());
				});
				chart.setLegend(legend);
				chart.setAxis(axis);
				chart.getSeries().add(series);
				return chart;
			} else
				throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}

	@Transactional(isolation = Isolation.READ_UNCOMMITTED, rollbackFor = SystemErrorException.class)
	public CommonChartDto getStatisticsGender(Integer year, Authentication authentication, String p_locale) throws Exception {
		if (year != null) {
			List<Map<String, Object>> panics = panicReportRepo.loadDataGroupByGender(year);
			if(panics != null) {
				CommonChartDto chart = new CommonChartDto();
				LegendChartDto legend = new LegendChartDto();
				AxisChartDto axis = new AxisChartDto();
				SeriesChartDto series = new SeriesChartDto();
				series.setName("Gender");
				Map<String, Object> temp = new HashMap<String, Object>();
				panics.forEach(panic -> {
					temp.put("parameterCode", panic.get("gender"));
					try {
						String keyData = parameterI18nService.getParameter(temp, p_locale).getParameterValue();
						legend.getData().add(keyData);
						series.getData().put(keyData, panic.get("total"));
						axis.getData().add(keyData);
					} catch (Exception e) {
						e.printStackTrace();
					}
				});
				chart.setLegend(legend);
				chart.setAxis(axis);
				chart.getSeries().add(series);
				return chart;
			} else
				throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}

	@Transactional(isolation = Isolation.READ_UNCOMMITTED, rollbackFor = SystemErrorException.class)
	public CommonChartDto getStatisticsPeriode(Integer year, Authentication authentication, String p_locale) throws Exception {
		if (year != null) {
			List<Map<String, Object>> panics = panicReportRepo.loadDataGroupByMonth(year);
			if(panics != null) {
				CommonChartDto chart = new CommonChartDto();
				LegendChartDto legend = new LegendChartDto();
				AxisChartDto axis = new AxisChartDto();
				SeriesChartDto series = new SeriesChartDto();
				series.setName("Periode");
				legend.getData().add("Periode");
				Map<String, Object> temp = new HashMap<String, Object>();
				for(int i=0; i<12; i++) {
					String month = ParameterStatic.MONTH_PARAMETER + StringUtils.leftPad(""+(i+1), 2, "0");
					temp.put("parameterCode", month);
					String keyData = parameterI18nService.getParameter(temp, p_locale).getParameterValue();
					axis.getData().add(keyData);
					panics.forEach(panic -> {
						if(month.equals(panic.get("periode"))) {
							series.getData().put(keyData, panic.get("total"));
						} else {
							series.getData().put(keyData, 0);							
						}
					});
					if(panics.size() == 12) break;
				}
				chart.setLegend(legend);
				chart.setAxis(axis);
				chart.getSeries().add(series);
				return chart;
			} else
				throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}

	@Transactional(isolation = Isolation.READ_UNCOMMITTED, rollbackFor = SystemErrorException.class)
	public CommonChartDto getStatisticsEmergency(Integer year, Authentication authentication, String p_locale) throws Exception {
		if (year != null) {
			List<Map<String, Object>> panics = panicReportRepo.loadDataGroupByEmergency(year);
			if(panics != null) {
				CommonChartDto chart = new CommonChartDto();
				LegendChartDto legend = new LegendChartDto();
				AxisChartDto axis = new AxisChartDto();
				SeriesChartDto series = new SeriesChartDto();
				series.setName("Emergency");
				Map<String, Object> temp = new HashMap<String, Object>();
				panics.forEach(panic -> {
					temp.put("parameterCode", panic.get("emergency"));
					try {
						String keyData = parameterI18nService.getParameter(temp, p_locale).getParameterValue();
						legend.getData().add(keyData);
						series.getData().put(keyData, panic.get("total"));
						axis.getData().add(keyData);
					} catch (Exception e) {
						e.printStackTrace();
					}
				});
				chart.setLegend(legend);
				chart.setAxis(axis);
				chart.getSeries().add(series);
				return chart;
			} else
				throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}

	@Transactional(isolation = Isolation.READ_UNCOMMITTED, rollbackFor = SystemErrorException.class)
	public CommonChartDto getStatisticsDevice(Integer year, Authentication authentication, String p_locale) throws Exception {
		if (year != null) {
			List<Map<String, Object>> panics = panicReportRepo.loadDataGroupByDevice(year);
			if(panics != null) {
				CommonChartDto chart = new CommonChartDto();
				LegendChartDto legend = new LegendChartDto();
				AxisChartDto axis = new AxisChartDto();
				SeriesChartDto series = new SeriesChartDto();
				series.setName("Device");
				legend.getData().add("Device");
				panics.forEach(panic -> {
					series.getData().put(panic.get("device").toString(), panic.get("total"));
					axis.getData().add(panic.get("device").toString());
				});
				chart.setLegend(legend);
				chart.setAxis(axis);
				chart.getSeries().add(series);
				return chart;
			} else
				throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}

	@Transactional(isolation = Isolation.READ_UNCOMMITTED, rollbackFor = SystemErrorException.class)
	public CommonChartDto getStatisticsAge(Integer year, Authentication authentication, String p_locale) throws Exception {
		if (year != null) {
			List<Map<String, Object>> panics = panicReportRepo.loadDataGroupByAge(year);
			if(panics != null) {
				CommonChartDto chart = new CommonChartDto();
				LegendChartDto legend = new LegendChartDto();
				AxisChartDto axis = new AxisChartDto();
				SeriesChartDto series = new SeriesChartDto();
				series.setName("Age");
				int limitAge = 30;
				int ageUnder = 0;
				int ageUpper = 0;
				for(Map<String, Object> panic: panics) {
					try {
						Integer dataAge = Integer.parseInt(panic.get("age").toString());
						Integer totalAge = Integer.parseInt(panic.get("total").toString());
						if(dataAge<=limitAge) {
							ageUnder = ageUnder + totalAge;
						} else {
							ageUpper = ageUpper + totalAge;
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				if(ageUnder>0 || ageUpper>0) {
					legend.getData().add("<= 30 years old");
					series.getData().put("<= 30 years old", ageUnder);
					axis.getData().add("<= 30 years old");
					legend.getData().add("> 30 years old");
					series.getData().put("> 30 years old", ageUpper);
					axis.getData().add("> 30 years old");	
				}
				chart.setLegend(legend);
				chart.setAxis(axis);
				chart.getSeries().add(series);
				return chart;
			} else
				throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}

}
