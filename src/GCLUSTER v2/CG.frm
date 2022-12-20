VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "GCLUSTER"
   ClientHeight    =   11265
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   14520
   LinkTopic       =   "Form1"
   ScaleHeight     =   11265
   ScaleWidth      =   14520
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox Check1 
      Caption         =   "DELETE PREVIOUS RESULTS"
      Height          =   255
      Left            =   7440
      TabIndex        =   38
      Top             =   10680
      Value           =   1  'Checked
      Width           =   2775
   End
   Begin VB.Frame Frame5 
      Caption         =   "Edit sequence"
      Height          =   2055
      Left            =   10800
      TabIndex        =   33
      Top             =   9120
      Width           =   3615
      Begin VB.CommandButton Sterge_sec 
         Caption         =   "Erase sequence"
         Height          =   375
         Left            =   240
         TabIndex        =   37
         Top             =   360
         Width           =   3135
      End
      Begin VB.CommandButton Filtru3 
         Caption         =   "LCASE"
         Height          =   375
         Left            =   1920
         TabIndex        =   36
         Top             =   840
         Width           =   1455
      End
      Begin VB.CommandButton Filtru2 
         Caption         =   "UCASE"
         Height          =   375
         Left            =   240
         TabIndex        =   35
         Top             =   840
         Width           =   1575
      End
      Begin VB.CommandButton Filtru1 
         Caption         =   "Erase LF and CR"
         Height          =   375
         Left            =   240
         TabIndex        =   34
         Top             =   1320
         Width           =   3135
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Method used"
      Height          =   1095
      Left            =   10800
      TabIndex        =   30
      Top             =   7920
      Width           =   3615
      Begin VB.OptionButton CG_op2 
         Caption         =   "CpG content"
         Height          =   375
         Left            =   240
         TabIndex        =   32
         Top             =   600
         Value           =   -1  'True
         Width           =   3135
      End
      Begin VB.OptionButton CG_op1 
         Caption         =   "C+G content"
         Height          =   375
         Left            =   240
         TabIndex        =   31
         Top             =   240
         Width           =   3135
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Dinucleotide analysis"
      Height          =   975
      Left            =   10800
      TabIndex        =   25
      Top             =   6840
      Width           =   3615
      Begin VB.ComboBox DubleN 
         Height          =   315
         Left            =   1800
         TabIndex        =   26
         Text            =   "CG"
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label28 
         Alignment       =   1  'Right Justify
         Caption         =   "Dinucleotide:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   27
         Top             =   360
         Width           =   1575
      End
   End
   Begin VB.PictureBox Picture3 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      Height          =   3615
      Left            =   10680
      ScaleHeight     =   237
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   245
      TabIndex        =   24
      Top             =   2880
      Width           =   3735
      Begin VB.Line Line5 
         BorderStyle     =   4  'Dash-Dot
         X1              =   128
         X2              =   128
         Y1              =   0
         Y2              =   248
      End
      Begin VB.Line Line4 
         BorderStyle     =   4  'Dash-Dot
         X1              =   0
         X2              =   248
         Y1              =   184
         Y2              =   184
      End
      Begin VB.Line Line3 
         BorderStyle     =   4  'Dash-Dot
         X1              =   0
         X2              =   248
         Y1              =   56
         Y2              =   56
      End
      Begin VB.Line Line2 
         BorderStyle     =   4  'Dash-Dot
         X1              =   0
         X2              =   248
         Y1              =   120
         Y2              =   120
      End
   End
   Begin VB.CommandButton Studiu_pe_Gama_de_valori 
      Caption         =   "Start in-depth analysis"
      Height          =   495
      Left            =   3360
      TabIndex        =   16
      Top             =   9960
      Width           =   3855
   End
   Begin VB.CommandButton Stop_procesare 
      Caption         =   "Stop"
      Height          =   495
      Left            =   7320
      TabIndex        =   14
      Top             =   9960
      Width           =   3255
   End
   Begin VB.Frame Frame2 
      Caption         =   "Results"
      Height          =   6255
      Left            =   240
      TabIndex        =   6
      Top             =   4920
      Width           =   2895
      Begin VB.TextBox values_range_I 
         Height          =   2535
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   18
         Top             =   1560
         Width           =   1335
      End
      Begin VB.TextBox values_range_C 
         Height          =   2535
         Left            =   1560
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   17
         Top             =   1560
         Width           =   1215
      End
      Begin VB.Label Status 
         Caption         =   "General Processing: 100%"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   21
         Top             =   5880
         Width           =   2535
      End
      Begin VB.Label Label4 
         Caption         =   "No.CG Clusters"
         Height          =   255
         Left            =   1560
         TabIndex        =   20
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "No. CG Islands"
         Height          =   255
         Left            =   120
         TabIndex        =   19
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Line Line1 
         X1              =   240
         X2              =   2880
         Y1              =   1080
         Y2              =   1080
      End
      Begin VB.Label macro_islands_no 
         Caption         =   "No. Clusters found: 0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   720
         Width           =   2535
      End
      Begin VB.Label islands_no 
         Caption         =   "No. islands found: 0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   360
         Width           =   2535
      End
      Begin VB.Label info 
         Caption         =   "Overall results ..."
         Height          =   1575
         Left            =   240
         TabIndex        =   11
         Top             =   4200
         Width           =   2415
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Parameters"
      Height          =   2055
      Left            =   240
      TabIndex        =   5
      Top             =   2760
      Width           =   2895
      Begin VB.TextBox depth_stop 
         Height          =   285
         Left            =   2040
         TabIndex        =   22
         Text            =   "40"
         Top             =   1440
         Width           =   495
      End
      Begin VB.TextBox depth_start 
         Height          =   285
         Left            =   2040
         TabIndex        =   10
         Text            =   "20"
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox Window_Length 
         Height          =   285
         Left            =   2040
         TabIndex        =   7
         Text            =   "100"
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         Caption         =   "To (%):"
         Height          =   255
         Left            =   1080
         TabIndex        =   23
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "CG threshold (%):"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   1080
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Sliding window length(b):"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   480
         Width           =   1815
      End
   End
   Begin VB.PictureBox Picture2 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   240
      ScaleHeight     =   29
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   941
      TabIndex        =   4
      Top             =   2040
      Width           =   14175
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      Height          =   1575
      Left            =   240
      ScaleHeight     =   101
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   941
      TabIndex        =   3
      Top             =   360
      Width           =   14175
      Begin VB.Line mline 
         BorderStyle     =   4  'Dash-Dot
         X1              =   0
         X2              =   0
         Y1              =   0
         Y2              =   248
      End
      Begin VB.Label dds 
         BackStyle       =   0  'Transparent
         Caption         =   "CpG content"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   0
         TabIndex        =   39
         Top             =   0
         Width           =   975
      End
      Begin VB.Label Status_sus 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Processing: 100%"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   555
         Left            =   4920
         TabIndex        =   15
         Top             =   600
         Visible         =   0   'False
         Width           =   3840
      End
   End
   Begin VB.TextBox results_txt 
      Height          =   3135
      Left            =   3240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Top             =   6720
      Width           =   7455
   End
   Begin VB.TextBox dna_sequence 
      Height          =   3615
      Left            =   3240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "CG.frx":0000
      Top             =   2880
      Width           =   7335
   End
   Begin VB.CommandButton Normal_Analysis 
      Caption         =   "Start normal analysis"
      Height          =   495
      Left            =   3360
      TabIndex        =   0
      Top             =   10560
      Width           =   3855
   End
   Begin VB.Label Label10 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "X-axis - Number of tests"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   12600
      TabIndex        =   41
      Top             =   6480
      Width           =   1815
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Y-axis - No. islands(red line) or clusters(blue line)"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   10680
      TabIndex        =   40
      Top             =   2640
      Width           =   3375
   End
   Begin VB.Label Label7 
      Caption         =   "DNA sequence:"
      Height          =   255
      Left            =   3240
      TabIndex        =   29
      Top             =   2640
      Width           =   1455
   End
   Begin VB.Label Label6 
      Caption         =   "Sequence diagram:"
      Height          =   255
      Left            =   240
      TabIndex        =   28
      Top             =   120
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'  ________________________________                          ___________
' /  GCLUSTER                      \________________________/   v2.00   |
' |                                                                     |
' |                                                                     |
' |     Description:  Dinucleotide island detector                      |
' |           Title:  GCLUSTER: a sensitive program for detecting       |
' |                   dinucleotide islands and clusters through         |
' |                   depth analysis                                    |
' |                                                                     |
' |          Author:  Dr. Paul A. Gagniuc                               |
' |                                                                     |
' |    Date Created:  May 2010                                          |
' |          Update:  December 2022                                     |
' |       Tested On:  Win Vista, Win XP, Win 7, Win 10, Win 11          |
' |           Email:  paul_gagniuc@acad.ro                              |
' |                                                                     |
' |           Notes:  GCLUSTER V2.0                                     |
' |                                                                     |
' |                  _____________________________                      |
' |_________________/                             \_____________________|

Dim foreclosure As Boolean
Dim islands_X As String
Dim cluster_X As String


Private Sub DubleN_LostFocus()
    CG_op2.Caption = DubleN.Text & " content"
End Sub


Private Sub Filtru1_Click()
    dna_sequence.Text = Replace(dna_sequence.Text, Chr(10), "")
    dna_sequence.Text = Replace(dna_sequence.Text, Chr(13), "")
End Sub


Private Sub Filtru2_Click()
    dna_sequence.Text = UCase(dna_sequence.Text)
End Sub


Private Sub Filtru3_Click()
    dna_sequence.Text = LCase(dna_sequence.Text)
End Sub


Private Sub Form_Load()

    Filtru1_Click
    
    DubleN.AddItem "AT"
    DubleN.AddItem "AC"
    DubleN.AddItem "AG"
    DubleN.AddItem "AA"
    
    DubleN.AddItem "CA"
    DubleN.AddItem "CT"
    DubleN.AddItem "CG"
    DubleN.AddItem "CC"
    
    DubleN.AddItem "GT"
    DubleN.AddItem "GA"
    DubleN.AddItem "GC"
    DubleN.AddItem "GG"
    
    DubleN.AddItem "TC"
    DubleN.AddItem "TG"
    DubleN.AddItem "TA"
    DubleN.AddItem "TT"
    
    Normal_Analysis_Click
    
End Sub


Private Sub Normal_Analysis_Click()

    If CG_op1.Value = True Then
        Processing_1
    Else
        Processing_2
    End If
    
End Sub


Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

    q = (Len(dna_sequence.Text) / Picture1.ScaleWidth) * X
    dna_sequence.SetFocus
    dna_sequence.SelStart = q
    dna_sequence.SelLength = Window_Length.Text
    
    info.Caption = "Sliding window" & vbCrLf & " starts at: ~" & Int(q) & "b at ~" & _
    Int(q + Val(Window_Length.Text)) & "b" & vbCrLf
    
    mline.X1 = X
    mline.X2 = X
    
End Sub


Private Sub Picture2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

    q = (Len(dna_sequence.Text) / Picture1.ScaleWidth) * X
    dna_sequence.SetFocus
    dna_sequence.SelStart = q
    dna_sequence.SelLength = Window_Length.Text
    
End Sub


Private Sub Processing_1()

    If Len(dna_sequence.Text) < Val(Window_Length.Text) Then
        MsgBox "Sequence is too small to be analyzed !"
        Exit Sub
    End If
    
    foreclosure = False
    
    If Check1.Value = 1 Then
        Picture1.Cls
        Picture2.Cls
        Picture3.Cls
        values_range_I.Text = Empty
        values_range_C.Text = Empty
        results_txt.Text = Empty
    End If
    
    Status_sus.Visible = True
    
    DNA_length = Len(dna_sequence.Text)
    
    secventaADN = Replace(dna_sequence.Text, vbCrLf, "")
    Window_Length_Value = Val(Window_Length.Text)
    depth_level_start = Val(depth_start.Text)
    
    For i = 1 To DNA_length
        nucleotide = LCase(Mid(secventaADN, i, 1))
        If nucleotide = "a" Then a = a + 1
        If nucleotide = "t" Then T = T + 1
        If nucleotide = "g" Then g = g + 1
        If nucleotide = "c" Then c = c + 1
    Next i
    
    Toltal_CG_Procent = (100 / (c + g + T + a)) * (c + g)
    
    info.Caption = "CG = " & Toltal_CG_Procent & " %" & vbCrLf & vbCrLf & _
    "A = " & Int((100 / (c + g + T + a)) * a) & " %" & vbCrLf & _
    "T = " & Int((100 / (c + g + T + a)) * T) & " %" & vbCrLf & _
    "C = " & Int((100 / (c + g + T + a)) * c) & " %" & vbCrLf & _
    "G = " & Int((100 / (c + g + T + a)) * g) & " %" & vbCrLf & vbCrLf & _
    "Sequence length: " & Len(dna_sequence.Text) & "b"
    
    
    old_I = "N"
    
    
    For i = 1 To DNA_length - Window_Length_Value
    
        a = 0
        T = 0
        c = 0
        g = 0
    
        Status_sus.Caption = "Processing: " & Int((100 / (DNA_length - Window_Length_Value)) * i) & " %"
    
        For j = 1 To Window_Length_Value
    
            If foreclosure = True Then Exit Sub
    
            nucleotide = LCase(Mid(secventaADN, i + j - 1, 1))
            If nucleotide = "a" Then a = a + 1
            If nucleotide = "t" Then T = T + 1
            If nucleotide = "g" Then g = g + 1
            If nucleotide = "c" Then c = c + 1
    
            Window_Length_continut = Window_Length_content & nucleotide
    
        Next j
    
        DoEvents
        
        Window_Length_CG = (Toltal_CG_Procent / (c + g + T + a)) * (c + g)
        gasita = Maximum(Window_Length_CG, depth_level_start)
        percentage_array = percentage_array & Int(Window_Length_CG) & ","
        Window_Length_content = ""
    
        If old_I = "N" And gasita = "I" Then
        
            ins = ins + 1
            results_txt.Text = results_txt.Text & vbCrLf & _
            "CG island - number [" & ins & "] starts at position " & i & "b"
    
        End If
        
        old_I = gasita
    
    Next i
    
    Call Deseneaza_grafic(DNA_length, percentage_array)
    Call Deseneaza_zone(DNA_length, percentage_array, depth_level_start)
    
    islands_no.Caption = "No. islands found: " & ins
    islands_X = ins
    
    Status_sus.Visible = False
    
End Sub


Private Sub Processing_2()

    Dim CG_nr() As String
    
    If Len(dna_sequence.Text) < Val(Window_Length.Text) Then
        MsgBox "Sequence is too small to be analyzed !"
        Exit Sub
    End If
    
    foreclosure = False
    
    If Check1.Value = 1 Then
        Picture1.Cls
        Picture2.Cls
        Picture3.Cls
        values_range_I.Text = Empty
        values_range_C.Text = Empty
        results_txt.Text = Empty
    End If
    
    Status_sus.Visible = True
    
    DNA_length = Len(dna_sequence.Text)
    
    secventaADN = Replace(dna_sequence.Text, vbCrLf, "")
    Window_Length_Value = Val(Window_Length.Text)
    depth_level_start = Val(depth_start.Text)
    
    For i = 1 To DNA_length
        nucleotide = LCase(Mid(secventaADN, i, 1))
        If nucleotide = "a" Then a = a + 1
        If nucleotide = "t" Then T = T + 1
        If nucleotide = "g" Then g = g + 1
        If nucleotide = "c" Then c = c + 1
    Next i
    
    Toltal_CG_Procent = (100 / (c + g + T + a)) * (c + g)
    
    info.Caption = "CG = " & Toltal_CG_Procent & " %" & vbCrLf & vbCrLf & _
    "A = " & Int((100 / (c + g + T + a)) * a) & " %" & vbCrLf & _
    "T = " & Int((100 / (c + g + T + a)) * T) & " %" & vbCrLf & _
    "C = " & Int((100 / (c + g + T + a)) * c) & " %" & vbCrLf & _
    "G = " & Int((100 / (c + g + T + a)) * g) & " %" & vbCrLf & vbCrLf & _
    "Sequence length: " & Len(dna_sequence.Text) & "b"
    
    
    old_I = "N"
    
    
    For i = 1 To DNA_length - Window_Length_Value
    
        Status_sus.Caption = "Processing: " & Int((100 / (DNA_length - Window_Length_Value)) * i) & " %"
    
        Window = LCase(Mid(secventaADN, i, Window_Length_Value))
    
        CG_nr = Split(Window, LCase(DubleN.Text))
        CG_nr_buff = UBound(CG_nr)
    
        op = CG_nr_buff * 2
        Total_CG = (100 / Len(Window)) * op
    
        par = Picture1.ScaleWidth / DNA_length
        Y = Picture1.ScaleHeight / 100
        X = par * i
    
        gasita = Maximum(Total_CG, depth_level_start)
        percentage_array = percentage_array & Int(Total_CG) & ","
    
        If old_I = "N" And gasita = "I" Then
        ins = ins + 1
    
        results_txt.Text = results_txt.Text & vbCrLf & _
        "CG island - number [" & ins & "] starts at position " & i & "b"
    
        End If
        old_I = gasita
    
    Next i
    
    Call Deseneaza_grafic(DNA_length, percentage_array)
    Call Deseneaza_zone(DNA_length, percentage_array, depth_level_start)
    
    islands_no.Caption = "No. islands found: " & ins
    islands_X = ins
    
    Status_sus.Visible = False
    
End Sub


Function Maximum(ByVal X As Variant, ByVal lim As Variant) As String

    If X > lim Then
        Maximum = "I"
    Else
        Maximum = "N"
    End If

End Function


Function Deseneaza_grafic(ByVal lungime As Variant, ByVal sir As Variant)

    Dim a() As String

    a() = Split(sir, ",")
    
    X = Picture1.ScaleWidth / UBound(a())
    
    For i = 1 To UBound(a()) - 1
        Picture1.Line (i * X, Picture1.ScaleHeight - a(i - 1))-((i + 1) * X, Picture1.ScaleHeight - a(i)), RGB(255, 0, 0)
    Next i
    
End Function


Function Deseneaza_zone(ByVal lungime As Variant, ByVal sir As Variant, ByVal lim As Variant)

    Dim a() As String
        
    a() = Split(sir, ",")
    old_I = vbWhite

    X = Picture1.ScaleWidth / UBound(a())
        
    For i = 1 To UBound(a()) - 1
    
        If Val(a(i)) > lim Then
            Picture1.Line (i * X, lim)-((i + 1) * X, lim), RGB(0, 0, 255)
        End If
    
    Next i

    X = Picture2.ScaleWidth / UBound(a())
        
    For i = 1 To UBound(a()) - 1
    
        If Val(a(i)) > lim Then
            Picture2.Line (i * X, 30)-((i + 1) * X, 0), RGB(0, 0, 255), BF
        End If
    
    Next i
    
    
    For u = 1 To Picture2.ScaleWidth
        If old_I = vbWhite And Picture2.Point(u, 5) = RGB(0, 0, 255) Then
            ins = ins + 1
        End If
        old_I = Picture2.Point(u, 5)
    Next u
        
    macro_islands_no.Caption = "No. Clusters found:" & ins
    cluster_X = ins
    
End Function


Private Sub Sterge_sec_Click()
    dna_sequence.Text = Empty
End Sub


Private Sub Stop_procesare_Click()
    foreclosure = True
End Sub


Private Sub Studiu_pe_Gama_de_valori_Click()

    Dim depth_array_I() As String
    Dim depth_array_C() As String
    Check1.Value = 0
    depth_I = Empty
    depth_C = Empty
    
    tmp_depth_start = depth_start.Text
    
    Picture1.Cls
    Picture2.Cls
    Picture3.Cls
    values_range_I.Text = Empty
    values_range_C.Text = Empty
    results_txt.Text = Empty
    
    
    a = Val(depth_start.Text)
    b = Val(depth_start.Text) + (Val(depth_stop.Text) - Val(depth_start.Text))
    
    For i = a To b
        DoEvents
    
        depth_start.Text = i
    
        If CG_op1.Value = True Then
            Processing_1
            dds.Caption = CG_op1.Caption
        Else
            Processing_2
            dds.Caption = CG_op2.Caption
        End If
    
        If islands_X = "" Then islands_X = 0
        If cluster_X = "" Then cluster_X = 0
    
        values_range_I.Text = values_range_I.Text & islands_X & vbCrLf
        values_range_C.Text = values_range_C.Text & cluster_X & vbCrLf
    
        depth_I = islands_X & "," & depth_I
        depth_C = cluster_X & "," & depth_C
    
    
        results_txt.Text = results_txt.Text & vbCrLf & "[^CG Islands=" & islands_X & " - CG Clusters=" & cluster_X & "]" & vbCrLf
    
        Status.Caption = "General Processing: " & Int((100 / (a - b)) * (a - i)) & "%"
        Picture2.Cls
        
        DoEvents
        If foreclosure = True Then Exit Sub
        
    Next i
    
    depth_array_I() = Split(depth_I, ",")
    depth_array_C() = Split(depth_C, ",")
    CpGI_NO = Picture3.ScaleWidth / UBound(depth_array_I())
    
    max_val = 1
    
    For d = 1 To UBound(depth_array_I()) - 1
        If Val(depth_array_I(d)) > Val(max_val) Then max_val = depth_array_I(d)
    Next d
    
    GHeight = Picture3.ScaleHeight
    max_val = GHeight / Val(max_val)
    
    For d = 1 To UBound(depth_array_I()) - 1
    
        Picture3.Line ((d - 1) * CpGI_NO, GHeight - (depth_array_I(d - 1) * max_val))-(d * CpGI_NO, GHeight - (depth_array_I(d) * max_val)), vbRed
        Picture3.Line ((d - 1) * CpGI_NO, GHeight - (depth_array_C(d - 1) * max_val))-(d * CpGI_NO, GHeight - (depth_array_C(d) * max_val)), vbBlue
    
        Picture3.Circle (d * CpGI_NO, GHeight - (depth_array_I(d) * max_val)), 2, vbRed
        Picture3.Circle (d * CpGI_NO, GHeight - (depth_array_C(d) * max_val)), 2, vbBlue
        
    Next d
    
    
    For d = 1 To UBound(depth_array_I()) - 1
        tmp_tot_I = tmp_tot_I & depth_array_I(d)
        tmp_tot_C = tmp_tot_C & depth_array_C(d)
    Next d
    
    mean_I = tmp_tot_I / UBound(depth_array_I())
    mean_C = tmp_tot_C / UBound(depth_array_C())
    
    results_txt.Text = results_txt.Text & vbCrLf & "[CG Islands mean value=" & mean_I & " - CG Clusters mean value=" & mean_C & "]"
    
    depth_start.Text = tmp_depth_start
    
End Sub
