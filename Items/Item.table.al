tableextension 50100 "PIMX Cust. Item" extends Item
{
    fields
    {
        field(50100; "PIMX Feature 1"; Text[2048])
        {
            Caption = 'Feature 1';
            FieldClass = FlowField;
            CalcFormula = lookup("PIMX Product Feature".Value WHERE(Number = field("PIMX Feature 1 Filter"), "Source Id" = field(SystemId)));
        }
        field(50101; "PIMX Feature 1 Filter"; Text[250])
        {
            FieldClass = FlowFilter;
            TableRelation = "PIMX Feature"."Feature ID";
        }
        field(50102; "PIMX Feature 2"; Text[2048])
        {
            Caption = 'Feature 1';
            FieldClass = FlowField;
            CalcFormula = lookup("PIMX Product Feature".Value WHERE(Number = field("PIMX Feature 2 Filter"), "Source Id" = field(SystemId)));
        }
        field(50103; "PIMX Feature 2 Filter"; Text[250])
        {
            FieldClass = FlowFilter;
            TableRelation = "PIMX Feature"."Feature ID";
        }
        field(50104; "PIMX Feature 3"; Text[2048])
        {
            Caption = 'Feature 1';
            FieldClass = FlowField;
            CalcFormula = lookup("PIMX Product Feature".Value WHERE(Number = field("PIMX Feature 3 Filter"), "Source Id" = field(SystemId)));
        }
        field(50105; "PIMX Feature 3 Filter"; Text[250])
        {
            FieldClass = FlowFilter;
            TableRelation = "PIMX Feature"."Feature ID";
        }
        field(50106; "PIMX Feature 4"; Text[2048])
        {
            Caption = 'Feature 1';
            FieldClass = FlowField;
            CalcFormula = lookup("PIMX Product Feature".Value WHERE(Number = field("PIMX Feature 4 Filter"), "Source Id" = field(SystemId)));
        }
        field(50107; "PIMX Feature 4 Filter"; Text[250])
        {
            FieldClass = FlowFilter;
            TableRelation = "PIMX Feature"."Feature ID";
        }
    }

    var
        myInt: Integer;
}