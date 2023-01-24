<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body, html
        {
            padding: 0;
            margin: 0;
        }
    </style>

    <script type="text/javascript">

        function OnInit(s, e) {
            AdjustSize();

            ASPxClientUtils.AttachEventToElement(window, "resize", function(evt) {
                AdjustSize();
            });
        }
        function AdjustSize() {
            var height = document.documentElement.clientHeight;
            pc.SetHeight(height);
        }

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxPageControl ID="pc" runat="server" ActiveTabIndex="0" Height="100px" ClientInstanceName="pc"
        Width="100%">
        <ContentStyle BackColor="LightGray">
        </ContentStyle>
        <Paddings Padding="0px" />
        <TabPages>
            <dx:TabPage Text="First">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Second">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Third">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
        <ClientSideEvents Init="OnInit" />
    </dx:ASPxPageControl>
    </form>
</body>
</html>