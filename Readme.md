<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128540149/12.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4065)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to fill editors with data selected from ASPxGridView placed on ASPxPopupControl
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4065/)**
<!-- run online end -->


<p>This example demonstrates how to populate form editors with data by clicking the ASPxGridView row.</p><p>I have used the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_GetRowValuestopic"><u>ASPxClientGridView.GetRowValues</u></a> method to get required field values from a grid's data source. To receive values received on a callback and populate the required fields with data, I have used the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridViewValuesCallbacktopic"><u>ASPxClientGridViewValuesCallback</u></a> delegate function. </p>

<br/>


