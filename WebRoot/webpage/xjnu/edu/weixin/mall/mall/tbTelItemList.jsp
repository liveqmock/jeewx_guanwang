<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="tbTelItemList" title="号码详情" actionUrl="tbTelItemController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="号码联系人名" field="telItemName" query="true"></t:dgCol>
   <%-- <t:dgCol title="小类外键" field="catalogId" query="true"></t:dgCol> --%>
   <t:dgCol title="小类外键" field="tbTelCatalogEntity_Id" query="true" replace="${telCatalogNameReplace }"></t:dgCol>
   <t:dgCol title="学校外键" field="tbSchoolEntity_Id" query="true" replace="${schoolReplace }"></t:dgCol>
   <t:dgCol title="显示顺序" field="displaySequence" query="true"></t:dgCol>
   <t:dgCol title="电话" field="tel" query="true"></t:dgCol>
   <t:dgCol title="办公地址" field="officeAddress" query="true"></t:dgCol>
   <t:dgCol title="办公室名" field="officeName" query="true"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="tbTelItemController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="tbTelItemController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="tbTelItemController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="tbTelItemController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>