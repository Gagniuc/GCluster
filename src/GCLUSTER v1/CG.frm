VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "GCLUSTER V1"
   ClientHeight    =   11220
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   14520
   LinkTopic       =   "Form1"
   ScaleHeight     =   11220
   ScaleWidth      =   14520
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Studiu_pe_Gama_de_valori 
      Caption         =   "&Start detection in between X and Y"
      Height          =   495
      Left            =   3360
      TabIndex        =   21
      ToolTipText     =   "Detect whatever islands intersect the Max CG% Accepted threshold!"
      Top             =   10560
      Width           =   3135
   End
   Begin VB.CommandButton Sterge_sec 
      Caption         =   "S"
      Height          =   375
      Left            =   12480
      TabIndex        =   20
      ToolTipText     =   "delete sequence"
      Top             =   9960
      Width           =   375
   End
   Begin VB.CommandButton Filtru3 
      Caption         =   "L"
      Height          =   375
      Left            =   12960
      TabIndex        =   19
      ToolTipText     =   "lowercase"
      Top             =   9960
      Width           =   375
   End
   Begin VB.CommandButton Filtru2 
      Caption         =   "U"
      Height          =   375
      Left            =   13440
      TabIndex        =   18
      ToolTipText     =   "uppercase"
      Top             =   9960
      Width           =   375
   End
   Begin VB.CommandButton Filtru1 
      Caption         =   "C"
      Height          =   375
      Left            =   13920
      TabIndex        =   17
      ToolTipText     =   "eliminate line feed and change return from the main sequence"
      Top             =   9960
      Width           =   375
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Delete previous results"
      Height          =   255
      Left            =   12360
      TabIndex        =   16
      Top             =   10680
      Value           =   1  'Checked
      Width           =   1935
   End
   Begin VB.CommandButton Stop_procesare 
      Caption         =   "Stop"
      Height          =   1095
      Left            =   6600
      TabIndex        =   14
      Top             =   9960
      Width           =   3135
   End
   Begin VB.Frame Frame2 
      Caption         =   "Results"
      Height          =   6255
      Left            =   240
      TabIndex        =   6
      Top             =   4920
      Width           =   2895
      Begin VB.TextBox Gama_valori_I 
         Height          =   2535
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   23
         Top             =   1560
         Width           =   1335
      End
      Begin VB.TextBox Gama_valori_C 
         Height          =   2535
         Left            =   1560
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   22
         Top             =   1560
         Width           =   1215
      End
      Begin VB.Label Status 
         Caption         =   "Global status: 100%"
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
         TabIndex        =   26
         Top             =   5880
         Width           =   2655
      End
      Begin VB.Label Label4 
         Caption         =   "CLUSTERS"
         Height          =   255
         Left            =   1560
         TabIndex        =   25
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "Islands"
         Height          =   255
         Left            =   120
         TabIndex        =   24
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00808080&
         X1              =   240
         X2              =   2760
         Y1              =   1080
         Y2              =   1080
      End
      Begin VB.Label macro_insule_nr 
         Caption         =   "No. Island clusters found: 0"
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
      Begin VB.Label insule_nr 
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
         Caption         =   "Overall results..."
         Height          =   1935
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
      Begin VB.TextBox pana_la 
         Height          =   285
         Left            =   2160
         TabIndex        =   27
         Text            =   "40"
         Top             =   1440
         Width           =   495
      End
      Begin VB.TextBox nivel_pro 
         Height          =   285
         Left            =   2160
         TabIndex        =   10
         Text            =   "20"
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox Lungime_fereastra 
         Height          =   285
         Left            =   2160
         TabIndex        =   7
         Text            =   "100"
         Top             =   480
         Width           =   495
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00C0C0C0&
         X1              =   2640
         X2              =   240
         Y1              =   840
         Y2              =   840
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         Caption         =   "up to (Y):"
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   1440
         Width           =   1815
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Max CG% Accepted (X):"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   1080
         Width           =   1815
      End
      Begin VB.Label Label1 
         Caption         =   "Sliding Window Length:"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   480
         Width           =   1695
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
      Begin VB.Label Status_sus 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Status: 100%"
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
         Left            =   5760
         TabIndex        =   15
         Top             =   600
         Visible         =   0   'False
         Width           =   2835
      End
   End
   Begin VB.TextBox Insule_txt 
      Height          =   3135
      Left            =   3240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Top             =   6600
      Width           =   11055
   End
   Begin VB.TextBox secventata 
      Height          =   3615
      Left            =   3240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "CG.frx":0000
      Top             =   2760
      Width           =   11175
   End
   Begin VB.CommandButton Procesare 
      Caption         =   "&Start detection at X"
      Height          =   495
      Left            =   3360
      TabIndex        =   0
      ToolTipText     =   "Detect whatever islands intersect the Max CG% Accepted threshold!"
      Top             =   9960
      Width           =   3135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'  ________________________________                          ___________
' /  GCLUSTER                      \________________________/   v1.00   |
' |                                                                     |
' |                                                                     |
' |     Description:  Dinucleotide island detector                      |
' |                                                                     |
' |          Author:  Dr. Paul A. Gagniuc                               |
' |                                                                     |
' |    Date Created:  May 2010                                          |
' |          Update:  December 2022                                     |
' |       Tested On:  Win Vista, Win XP, Win 7, Win 10, Win 11          |
' |           Email:  paul_gagniuc@acad.ro                              |
' |                                                                     |
' |           Notes:  GCLUSTER V1.0                                     |
' |                                                                     |
' |                  _____________________________                      |
' |_________________/                             \_____________________|


Dim oprire As Boolean
Dim insule_X As String
Dim clustere_X As String


Private Sub Filtru1_Click()
    secventata.Text = Replace(secventata.Text, Chr(10), "")
    secventata.Text = Replace(secventata.Text, Chr(13), "")
End Sub


Private Sub Filtru2_Click()
    secventata.Text = UCase(secventata.Text)
End Sub


Private Sub Filtru3_Click()
    secventata.Text = LCase(secventata.Text)
End Sub


Private Sub Form_Load()
    Filtru1_Click
    Procesare_Click
End Sub


Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

    q = (Len(secventata.Text) / Picture1.ScaleWidth) * X
    secventata.SetFocus
    secventata.SelStart = q
    secventata.SelLength = Lungime_fereastra.Text
    
    info.Caption = "Sliding window" & vbCrLf & " start from: ~" & Int(q) & "b la ~" & _
    Int(q + Val(Lungime_fereastra.Text)) & "b" & vbCrLf
    
End Sub


Private Sub Picture2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

    q = (Len(secventata.Text) / Picture1.ScaleWidth) * X
    secventata.SetFocus
    secventata.SelStart = q
    secventata.SelLength = Lungime_fereastra.Text
    
End Sub


Private Sub Procesare_Click()

    If Len(secventata.Text) < 150 Then
        MsgBox "The sequence is too small to be analyzed !"
        Exit Sub
    End If
    
    oprire = False
    
    If Check1.Value = 1 Then
        Picture1.Cls
        Picture2.Cls
        Insule_txt.Text = Empty
    End If
    
    Status_sus.Visible = True
    
    lungimeADN = Len(secventata.Text)
    
    secventaADN = Replace(secventata.Text, vbCrLf, "")
    Fereastra = Val(Lungime_fereastra.Text)
    nivel = Val(nivel_pro.Text)
    
    For i = 1 To lungimeADN
        nucleotida = LCase(Mid(secventaADN, i, 1))
        If nucleotida = "a" Then a = a + 1
        If nucleotida = "t" Then t = t + 1
        If nucleotida = "g" Then g = g + 1
        If nucleotida = "c" Then c = c + 1
    Next i
    
    Toltal_CG_Procent = (100 / (c + g + t + a)) * (c + g)
    
    info.Caption = "CG = " & Toltal_CG_Procent & " %" & vbCrLf & vbCrLf & _
    "A = " & Int((100 / (c + g + t + a)) * a) & " %" & vbCrLf & _
    "T = " & Int((100 / (c + g + t + a)) * t) & " %" & vbCrLf & _
    "C = " & Int((100 / (c + g + t + a)) * c) & " %" & vbCrLf & _
    "G = " & Int((100 / (c + g + t + a)) * g) & " %" & vbCrLf & vbCrLf & _
    "Length of sequence: " & Len(secventata.Text) & "b"
    
    
    old_I = "N"
     
    
    For i = 1 To lungimeADN - Fereastra
    
        a = 0
        t = 0
        c = 0
        g = 0
        
        Status_sus.Caption = "Status: " & Int((100 / (lungimeADN - Fereastra)) * i) & " %"
        
        For j = 1 To Fereastra
        
            If oprire = True Then Exit Sub
            
            nucleotida = LCase(Mid(secventaADN, i + j - 1, 1))
            
            If nucleotida = "a" Then a = a + 1
            If nucleotida = "t" Then t = t + 1
            If nucleotida = "g" Then g = g + 1
            If nucleotida = "c" Then c = c + 1
            
            fereastra_continut = fereastra_continut & nucleotida
        
        Next j
        
        DoEvents
        
        Fereastra_CG_Procent = (Toltal_CG_Procent / (c + g + t + a)) * (c + g)
        gasita = Maximum(Fereastra_CG_Procent, nivel)
        Sir_Proportii = Sir_Proportii & Int(Fereastra_CG_Procent) & ","
        fereastra_continut = ""
        
        If old_I = "N" And gasita = "I" Then
        
            ins = ins + 1
            Insule_txt.Text = Insule_txt.Text & _
            "Island CG number [" & ins & "] start at the position " & i & " b" & vbCrLf
        
        End If
        
        old_I = gasita
    
    Next i
    
    Call Deseneaza_grafic(lungimeADN, Sir_Proportii)
    Call Deseneaza_zone(lungimeADN, Sir_Proportii, nivel)
    
    insule_nr.Caption = "No. islands found: " & ins
    insule_X = ins
    
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
        
    macro_insule_nr.Caption = "No. clusters found:" & ins
    clustere_X = ins
    
End Function


Private Sub Sterge_sec_Click()
    secventata.Text = Empty
End Sub


Private Sub Stop_procesare_Click()
    oprire = True
End Sub


Private Sub Studiu_pe_Gama_de_valori_Click()

    Check1.Value = 0
    
    a = Val(nivel_pro.Text)
    b = Val(nivel_pro.Text) + (Val(pana_la.Text) - Val(nivel_pro.Text))
    
    For i = a To b
    
        DoEvents
        
        nivel_pro.Text = i
        Procesare_Click
        
        
        If insule_X = "" Then insule_X = 0
        If clustere_X = "" Then clustere_X = 0
        
        Gama_valori_I.Text = Gama_valori_I.Text & insule_X & vbCrLf
        Gama_valori_C.Text = Gama_valori_C.Text & clustere_X & vbCrLf
        
        Status.Caption = "Global status: " & Int((100 / (a - b)) * (a - i)) & "%"
        Picture2.Cls

        If oprire = True Then Exit Sub
        
    Next i
    
    nivel_pro.Text = a
    
End Sub
