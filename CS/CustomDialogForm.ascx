<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CustomDialogForm.ascx.cs" Inherits="S35859DialogForm" %>

<dx:ASPxFormLayout runat="server" ColCount="2" Width="500px">
    <ClientSideEvents Init="onDialogFormInitialized" />
    <Items>
        <dx:LayoutItem Caption="Type">
            <LayoutItemNestedControlCollection>
                <dx:LayoutItemNestedControlContainer>
                    <dx:ASPxListBox runat="server" ClientInstanceName="listProperty_type">
                        <Items>
                            <dx:ListEditItem Text="Default. Decimal numbers (1, 2, 3, 4)" Value="1" />
                            <dx:ListEditItem Text="Alphabetically ordered list, lowercase (a, b, c, d)" Value="a" />
                            <dx:ListEditItem Text="Alphabetically ordered list, uppercase (A, B, C, D)" Value="A" />
                            <dx:ListEditItem Text="Roman numbers, lowercase (i, ii, iii, iv)" Value="i" />
                            <dx:ListEditItem Text="Roman numbers, uppercase (I, II, III, IV)" Value="I" />
                        </Items>
                    </dx:ASPxListBox>
                </dx:LayoutItemNestedControlContainer>
            </LayoutItemNestedControlCollection>
        </dx:LayoutItem>
        <dx:LayoutItem RowSpan="3" ShowCaption="False">
            <LayoutItemNestedControlCollection>
                <dx:LayoutItemNestedControlContainer>
                    <dx:ASPxRoundPanel runat="server" HeaderText="Sample list preview:" Width="100%" Height="160px" ClientInstanceName="listProperty_preview">

                    </dx:ASPxRoundPanel>
                </dx:LayoutItemNestedControlContainer>
            </LayoutItemNestedControlCollection>
        </dx:LayoutItem>
        <dx:LayoutItem Caption="Start">
            <LayoutItemNestedControlCollection>
                <dx:LayoutItemNestedControlContainer>
                    <dx:ASPxSpinEdit runat="server" Width="100%" ClientInstanceName="listProperty_start"></dx:ASPxSpinEdit>
                </dx:LayoutItemNestedControlContainer>
            </LayoutItemNestedControlCollection>
        </dx:LayoutItem>
        <dx:LayoutItem ShowCaption="False">
            <LayoutItemNestedControlCollection>
                <dx:LayoutItemNestedControlContainer>
                    <dx:ASPxCheckBox runat="server" Text="Compact" ClientInstanceName="listProperty_compact"></dx:ASPxCheckBox>
                </dx:LayoutItemNestedControlContainer>
            </LayoutItemNestedControlCollection>
        </dx:LayoutItem>
    </Items>
</dx:ASPxFormLayout>