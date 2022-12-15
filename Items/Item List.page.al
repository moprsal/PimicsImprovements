pageextension 50100 "PIMX Cust Item List" extends "Item List"
{
    layout
    {
        addafter("Base Unit of Measure")
        {
            field("PIMX Feature 1"; Rec."PIMX Feature 1")
            {
                Tooltip = '!!!Feature 1';
                ApplicationArea = All;
                Visible = PIMXFieldFeatureVisible1;
                CaptionClass = '3,' + PIMXFieldFeatureCaption[1];
            }
            field("PIMX Feature 2"; Rec."PIMX Feature 2")
            {
                Tooltip = '!!!Feature 2';
                ApplicationArea = All;
                Visible = PIMXFieldFeatureVisible2;
                CaptionClass = '3,' + PIMXFieldFeatureCaption[2];
            }
            field("PIMX Feature 3"; Rec."PIMX Feature 3")
            {
                Tooltip = '!!!Feature 3';
                ApplicationArea = All;
                Visible = PIMXFieldFeatureVisible3;
                CaptionClass = '3,' + PIMXFieldFeatureCaption[3];
            }
            field("PIMX Feature 4"; Rec."PIMX Feature 4")
            {
                Tooltip = '!!!Feature 4';
                ApplicationArea = All;
                Visible = PIMXFieldFeatureVisible4;
                CaptionClass = '3,' + PIMXFieldFeatureCaption[4];
            }
        }
    }

    var
        PIMXIsFiltered: Boolean;
        PIMXFieldFeatureVisible1: Boolean;
        PIMXFieldFeatureVisible2: Boolean;
        PIMXFieldFeatureVisible3: Boolean;
        PIMXFieldFeatureVisible4: Boolean;
        PIMXFieldFeatureCaption: array[4] of Text;

    trigger OnOpenPage()
    begin
        PIMXFieldFeatureVisible1 := Rec.GetFilter("PIMX Feature 1 Filter") <> '';
        PIMXFieldFeatureVisible2 := Rec.GetFilter(Rec."PIMX Feature 2 Filter") <> '';
        PIMXFieldFeatureVisible3 := Rec.GetFilter(Rec."PIMX Feature 3 Filter") <> '';
        PIMXFieldFeatureVisible4 := Rec.GetFilter(Rec."PIMX Feature 4 Filter") <> '';
        PIMXFieldFeatureCaption[1] := GetFeatureName(Rec.GetFilter("PIMX Feature 1 Filter"));
        PIMXFieldFeatureCaption[2] := GetFeatureName(Rec.GetFilter("PIMX Feature 2 Filter"));
        PIMXFieldFeatureCaption[3] := GetFeatureName(Rec.GetFilter("PIMX Feature 3 Filter"));
        PIMXFieldFeatureCaption[4] := GetFeatureName(Rec.GetFilter("PIMX Feature 4 Filter"));
    end;

    local procedure GetFeatureName(FeatureId: Text): Text
    var
        Feature: Record "PIMX Feature";
    begin
        if FeatureId = '' then
            exit('Unknown');

        if not Feature.Get(FeatureId) then
            exit('Unknown');

        exit(Feature.Description);
    end;
}