Samples
=======

This repository contains the samples created using [Aspose APIs](http://www.aspose.com)

##Samples in Repository

<table>
  <tr><th>Samples<th>Description</th></tr>
  <tr><td>Export Data and Image from Excel and Show in GridView</td><td>The sample demo reads an Excel file, exports data and images to a datatable. Bind the datatable to an ASP.NET Gridview Control</td></tr>
 </table>

## Export Data and Image from Excel and Show in GridView

An ASP.NET(C#) application using [Aspose.Cells for .NET API](http://www.aspose.com/.net/excel-component.aspx). 

* First, we will [open the Excel file](http://www.aspose.com/docs/display/cellsnet/Opening+Files) and [export the data to a data table](http://www.aspose.com/docs/display/cellsnet/Exporting+Data+from+Worksheets) using the simple Cells.ExportDataTable method by providing it the range of cells from which to import the data.

* Second, we will extract pictures / images from the Excel file using the [Worksheet's Pictures collection](http://www.aspose.com/docs/display/cellsnet/Adding+Pictures) and store them to the same data table. 
 
* when we are extracting the pictures / images, we need to keep this in mind that it is possible that image/ picture in the collection are not in proper order. So, we have written a small function to get the image / picture which is associated with the particular data row.

* Finally we will bind the data table with the gridview we have already designed in our ASP.NET webpage.

* To load the images to the gridview, we need to handle the RowDataBound event of the Gridview

###Data

+ Input - book1.xlsx file is included in the Data folder in Solution.

###Output

+ Output is shown on an aspx Webpage.


[Aspose.Cells for .NET](http://www.aspose.com/.net/excel-component.aspx) is fast and reliable API. It saves time and effort compared to developing your own spreadsheet manipulation solution or using Microsoft Automation. You can check the [Product Page](http://www.aspose.com/.net/excel-component.aspx) to get an idea about the features supported in Aspose.Cells for .NET.



