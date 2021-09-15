unit uMemTableHelper;

interface

uses
  FireDac.Comp.Client, FMX.Grid;

type TFDTableHelper = class helper for TFDMemTable
  procedure AlimentarGrid(Grid: TStringGrid);
end;

implementation

{ TFDTableHelper }

procedure TFDTableHelper.AlimentarGrid(Grid: TStringGrid);
var
  I: Integer;
  Column: TColumn;
begin
  Grid.ClearColumns;
  Grid.RowCount := Self.RecordCount;

  for I := 0 to Pred(Self.FieldCount) do begin
    Column := TColumn.Create(nil);
    Column.Header := Self.Fields[i].FieldName;
    Column.Parent := Grid;
  end;

  Self.First;
  while (not Self.Eof) do begin
    for I := 0 to Pred(Self.FieldCount) do
      Grid.Cells[I, Pred(Self.RecNo)] := Self.Fields[i].AsString;

    Self.Next;
  end;

end;

end.
