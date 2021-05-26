<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to fill editors with data selected from ASPxGridView placed on ASPxPopupControl
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4065/)**
<!-- run online end -->


<p>This example demonstrates how to populate form editors with data by clicking the ASPxGridView row.</p><p>I have used the client-side <a href="https://docs.devexpress.com/AspNet/js-ASPxClientGridView.GetRowValues(visibleIndex-fieldNames-onCallback)"><u>ASPxClientGridView.GetRowValues</u></a> method to get required field values from a grid's data source. To receive values received on a callback and populate the required fields with data, I have used the <a href="https://docs.devexpress.com/AspNet/js-ASPxClientGridViewValuesCallback?p=netframework"><u>ASPxClientGridViewValuesCallback</u></a> delegate function. </p>

<br/>


