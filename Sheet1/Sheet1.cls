VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Sheet1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Option Explicit

Dim grow As Integer
Dim gclm As Integer


Private Sub Worksheet_BeforeRightClick(ByVal Target As Range, Cancel As Boolean)
  grow = Target.Row '�s'
  gclm = Target.Column '��'

  '�E�N���b�N�̃��j���[�\���𖳌�'
  Cancel = True

  'BS�ňꕶ�������f
  If Cells(grow, gclm) = Cells(4, 4) Then
    Cells(2, 2) = Left(Cells(2, 2), Len(Cells(2, 2)) - 1)
    
  'AC�ŃN���A�ɂ���f
  ElseIf Cells(grow, gclm) = Cells(4, 2) Then
    Cells(2, 2) = ""

  '=�Ōv�Z'
  ElseIf Cells(grow, gclm) = Cells(12, 6) Then
    Range("B2").Value = Evaluate(Range("B2").Value)

  '���������̂�\������'
  Else
    Cells(2, 2) = Cells(2, 2) + Cells(grow, gclm)
  End If

End Sub