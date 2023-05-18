<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128565602/11.2.10%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T830634)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# How to use the ASPxPageControl control in Full Screen mode (100% browser Width and Height)
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/128565602/)**
<!-- run online end -->


<p>This example demonstrates how to resize a DevExpress ASP.NET control (for example, ASPxPageControl) to occupy the entire browser window (a Full Screen mode)</p><p>1) Reset the following default CSS rules for a page:</p>

```css
    body, html   {
        padding: 0;
        margin: 0;
}    
```

<p>2) Set the <strong>ASPxPageControl.Width</strong> property to "100%" and set an initial <strong>ASPxPageControl.Height</strong> property;</p>

```aspx
<dx:ASPxPageControl ... Height="100px" Width="100%">
```

<p> </p><p>3) Set the<strong> ASPxPageControl.Paddings.Padding</strong> to "0px" to disable default offsets/paddings (this step is optional);</p>

```aspx
<dx:ASPxPageControl...>
    <Paddings Padding="0px" />  
    ...
</dx:ASPxPageControl>
```

<p> </p><p>4) Implement a function that should resize the control within the entire browser window;</p><p>5) Call this function when:</p><p>- the control is initialized for the first time (handle the client-side <strong>ASPxClientControl.Init</strong> event);</p><p>- the browser window size is changed/resized (subscribe to the "resize" event and handle it via the client-side <strong>ASPxClientUtils.AttachEventToElement</strong> method):</p>

```aspx
<dx:ASPxPageControl ...>
    <ClientSideEvents Init="OnInit" />...
 </dx:ASPxPageControl>
```


```js
function OnInit(s, e) {
    AdjustSize();
    ASPxClientUtils.AttachEventToElement(window, "resize", function(evt) {AdjustSize();});
}
    
function AdjustSize() {
    var height = document.documentElement.clientHeight;
    pc.SetHeight(height);
}
```

<strong>See Also:<br />
</strong><a href="https://www.devexpress.com/Support/Center/p/E1081">E1081: How to use the ASPxGridView control (with the enabled vertical scrollbar) in a Full Screen mode (100% browser Width and Height)</a><br />
<a href="http://demos.devexpress.com/ASPxperienceDemos/Splitter/FullscreenMode.aspx"><u>Splitter - Fullscreen Mode</u></a>

<br/>
