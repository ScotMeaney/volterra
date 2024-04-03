<Cabbage>
form caption("VOLTERRA") guiMode("queue") size(825, 600), pluginId("Volt") colour ("Grey"), bundle(".Assets")

;BACKGROUND IMAGE
image bounds(-1,-1,827,602) channel("image1"), file("background.png")

;ARP PARAMETRES
;rslider bounds(10, 10, 60, 60) channel("HOST_BPM") range(1, 300, 120, 1,1) filmstrip("Red_Pot.png", 128)
button bounds(65, 458, 58, 58) channel("ArpButton") text ("")imgFile("off", "Switch_Off.png"), imgFile("on", "Switch_On.png")
rslider bounds(105, 459, 60, 60) channel("ArpSpeed") range(1, 4, 1, 1, 1) filmstrip("Grey_Pot.png", 128)
image bounds(168, 90, 40, 20) channel("Arp_Label"), file("ARP_STICKER.png"), alpha (0)

rslider bounds(668, 384, 80, 80) channel("ReverbMasterVol") range(0, 1, 0, 1, 0.1) filmstrip("Yellow_Pot.png", 128)

infobutton bounds(680, 464, 56,19) file("Volterra Info Sheet.png") alpha(0)

infobutton bounds(680, 490, 56,19) file("https://forms.office.com/Pages/ResponsePage.aspx?id=e5V92hEVQkqy9Xj4R_jIer1ulwkuKCRJrVNTox-b2XJUQkhPVVZaS0ZTMVYyRTM1WTczM0JNMzJWUi4u") alpha(0)

vslider bounds(95, 150, 50, 170) channel("DryInputVol") range(0, 2, 1, 1, 0.001) filmstrip("Fader.png", 201)
rslider bounds(86, 302, 60, 60) channel("DryInputPan") range(0, 1, 0.5, 1, 0.001) filmstrip("Red_Pot.png", 128)
rslider bounds(86, 348, 60, 60) channel("DryInputFormant") range(-10, 10, 0, 1, 1) filmstrip("Blue_Pot.png", 128)
rslider bounds(86, 394, 60, 60) channel("DryInputRev") range(0, 1, 0, 1, 0.1) filmstrip("Yellow_Pot.png", 128)

vslider bounds(227, 150, 50, 170) channel("Harm1Vol") range(0, 1, 0.5, 1, 0.001) filmstrip("Fader.png", 201)
rslider bounds(218, 348, 60, 60) channel("Harm1Pan") range(0, 1, 0.25, 1, 0.001) filmstrip("Red_Pot.png", 128)
rslider bounds(218, 394, 60, 60) channel("Harm1Formant") range(-10, 10, 0, 1, 1) filmstrip("Blue_Pot.png", 128)
rslider bounds(218, 440, 60, 60) channel("Harm1Rev") range(0, 1, 0, 1, 0.1) filmstrip("Yellow_Pot.png", 128)
button bounds(219, 302, 59, 59) channel("ModeSwitch1") text ("")imgFile("off", "Switch_Off.png"), imgFile("on", "Switch_On.png")

vslider bounds(337, 150, 50, 170) channel("Harm2Vol") range(0, 1, 0.5, 1, 0.001) filmstrip("Fader.png", 201)
rslider bounds(328, 348, 60, 60) channel("Harm2Pan") range(0, 1, 0.75, 1, 0.001) filmstrip("Red_Pot.png", 128)
rslider bounds(328, 394, 60, 60) channel("Harm2Formant") range(-10, 10, 0, 1, 1) filmstrip("Blue_Pot.png", 128)
rslider bounds(328, 440, 60, 60) channel("Harm2Rev") range(0, 1, 0, 1, 0.1) filmstrip("Yellow_Pot.png", 128)
button bounds(329, 302, 59, 59) channel("ModeSwitch2") text ("")imgFile("off", "Switch_Off.png"), imgFile("on", "Switch_On.png")

vslider bounds(446, 150, 50, 170) channel("Harm3Vol") range(0, 1, 0.5, 1, 0.001) filmstrip("Fader.png", 201)
rslider bounds(436, 348, 60, 60) channel("Harm3Pan") range(0, 1, 0, 1, 0.001) filmstrip("Red_Pot.png", 128)
rslider bounds(436, 394, 60, 60) channel("Harm3Formant") range(-10, 10, 0, 1, 1) filmstrip("Blue_Pot.png", 128)
rslider bounds(436, 440, 60, 60) channel("Harm3Rev") range(0, 1, 0, 1, 0.1) filmstrip("Yellow_Pot.png", 128)
button bounds(437, 302, 59, 59) channel("ModeSwitch3") text ("")imgFile("off", "Switch_Off.png"), imgFile("on", "Switch_On.png")

vslider bounds(556, 150, 50, 170) channel("Harm4Vol") range(0, 1, 0.5, 1, 0.001) filmstrip("Fader.png", 201)
rslider bounds(546, 348, 60, 60) channel("Harm4Pan") range(0, 1, 1, 1, 0.001) filmstrip("Red_Pot.png", 128)
rslider bounds(546, 394, 60, 60) channel("Harm4Formant") range(-10, 10, 0, 1, 1) filmstrip("Blue_Pot.png", 128)
rslider bounds(546, 440, 60, 60) channel("Harm4Rev")  range(0, 1, 0, 1, 0.1) filmstrip("Yellow_Pot.png", 128)
button bounds(547, 302, 59, 59) channel("ModeSwitch4") text ("")imgFile("off", "Switch_Off.png"), imgFile("on", "Switch_On.png")

vslider bounds(688, 150, 50, 150) channel("SubVol") range(0, 1, 0, 1, 0.001) filmstrip("Fader.png", 201)
rslider bounds(662, 302, 60, 60) channel("SubPort") range(0.01, 5, 0.01, 1, 0.001) filmstrip("Grey_Pot.png", 128)
vslider bounds(704, 302, 58, 58) channel("SubOctave") range(1, 2, 1, 1, 1) filmstrip("Vert_Switch1.png", 2)
</Cabbage>

<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0
</CsOptions>
<CsInstruments>
  
0dbfs = 1
nchnls = 2

massign 0,1

giMIDI_Table ftgen 0,0,4,-2,0

gkArp_Array[] init 4

gkCounter2 init 0

gaInput init 0

gaDryL init 0
gaDryR init 0
gaHarmoniesL init 0
gaHarmoniesR init 0

gaSub init 0

gaReverbSendL init 0
gaReverbSendR init 0
gaReverbL init 0
gaReverbR init 0

giImpulseL ftgen 0, 0, 0, 1, "Chamber 05 Small & Dark L.wav", 0, 0, 0
giImpulseR ftgen 0, 0, 0, 1, "Chamber 05 Small & Dark R.wav", 0, 0, 0

instr ReadWidgets

;*********ARP TRIGGER*********
gkArpButton chnget "ArpButton"

S_Opacity sprintfk "alpha(%f)", gkArpButton
cabbageSet metro(10), "Arp_Label",  S_Opacity

;***********VOLUME***********
gkDryInputVol chnget "DryInputVol"

gkHarm1Vol chnget "Harm1Vol"
gkHarm2Vol chnget "Harm2Vol"
gkHarm3Vol chnget "Harm3Vol"
gkHarm4Vol chnget "Harm4Vol"

gkSubVol chnget "SubVol"

;*********MODE SWITCH*********
gkModeSwitch1 chnget "ModeSwitch1"
gkModeSwitch2 chnget "ModeSwitch2"
gkModeSwitch3 chnget "ModeSwitch3"
gkModeSwitch4 chnget "ModeSwitch4"

;***********PANNING***********
gkDryInputPan chnget "DryInputPan"

gkHarm1Pan chnget "Harm1Pan"
gkHarm2Pan chnget "Harm2Pan"
gkHarm3Pan chnget "Harm3Pan"
gkHarm4Pan chnget "Harm4Pan"

;***********FORMANT***********
gkDryFormant chnget "DryInputFormant"

gkHarm1Formant chnget "Harm1Formant"
gkHarm2Formant chnget "Harm2Formant"
gkHarm3Formant chnget "Harm3Formant"
gkHarm4Formant chnget "Harm4Formant"

;************PORT************
gkSubPortTime chnget "SubPort"

;*********SUB OCTAVE*********
iSubOctave[] fillarray 1, 12
gkSubOctaveGUI chnget "SubOctave"
gkSubOctave = iSubOctave[gkSubOctaveGUI-1]

;***********REVERB***********
gkDryInputRev chnget "DryInputRev"

gkHarm1Rev chnget "Harm1Rev"
gkHarm2Rev chnget "Harm2Rev"
gkHarm3Rev chnget "Harm3Rev"
gkHarm4Rev chnget "Harm4Rev"

gkReverbMasterVol chnget "ReverbMasterVol"

endin

instr 1; MIDI

gkReleaseNote release

iNum  cpsmidi

iCnt  =       0                                    ; counter
while iCnt<=ftlen(giMIDI_Table) do                 ; loop for the length of the array
iVal  table   iCnt,giMIDI_Table                    ; read value at counter location
if iVal==0 then                                    ; if it is zero, write note number to this location and exit loop
      tableiw iNum,iCnt,giMIDI_Table               ; write note number to table
 iNdx =       iCnt                                 ; store index location so that we know where to remove the note number from upon note release
 iCnt =       ftlen(giMIDI_Table)                  ; set counter to end of table in order to exit loop
endif
iCnt  +=      1                                    ; increment counter
od
 
; print array at end of note
if trigger:k(release:k(),0.5,0)==1 then
      tablew  0,k(iNdx),giMIDI_Table ; k() ensure writes at k-rate
endif

gkArp_Array[] tab2array giMIDI_Table

endin

instr 2

if (gkArpButton == 1) then

if ((table:k(0,giMIDI_Table)) !=0 && (table:k(1,giMIDI_Table)) !=0 && (table:k(2,giMIDI_Table)) =0 && (table:k(3,giMIDI_Table)) = 0) then

    kTrig metro ((chnget:k("HOST_BPM")*(chnget:k("ArpSpeed")))/60)*0.5


    if kTrig ==1 then
    
    ; Increment the counter
    gkCounter2 += 1
    
        ; Reset the counter if it exceeds the array size
        if gkCounter2 >= 3 then
        gkCounter2 = 1
        endif
    endif

elseif ((table:k(0,giMIDI_Table)) !=0 && (table:k(1,giMIDI_Table)) !=0 && (table:k(2,giMIDI_Table)) !=0 && (table:k(3,giMIDI_Table)) = 0) then

    kTrig metro ((((chnget:k("HOST_BPM")*(chnget:k("ArpSpeed")))/60)*2)/3)


    if kTrig ==1 then
    
    ; Increment the counter
    gkCounter2 += 1
    
        ; Reset the counter if it exceeds the array size
        if gkCounter2 >= 4 then
        gkCounter2 = 1
        endif
    endif
    
elseif ((table:k(0,giMIDI_Table)) !=0 && (table:k(1,giMIDI_Table)) !=0 && (table:k(2,giMIDI_Table)) !=0 && (table:k(3,giMIDI_Table)) != 0) then

    kTrig metro ((chnget:k("HOST_BPM")*(chnget:k("ArpSpeed")))/60)


    if kTrig ==1 then
    
    ; Increment the counter
    gkCounter2 += 1
    
        ; Reset the counter if it exceeds the array size
        if gkCounter2 >= 5 then
        gkCounter2 = 1
        endif
    
    endif
endif
    
    ;*********UPDATE ARRAY POSITIONS*********
if (gkCounter2 ==1) then
    gkArp_Array[] fillarray (table:k(0,giMIDI_Table)), 0, 0, 0
    endif
    
    if (gkCounter2 ==2) then
    gkArp_Array[] fillarray 0, (table:k(1,giMIDI_Table)), 0, 0
    endif
    
    if (gkCounter2 ==3) then
    gkArp_Array[] fillarray 0, 0, (table:k(2,giMIDI_Table)), 0
    endif
    
    if (gkCounter2 ==4) then
    gkArp_Array[] fillarray 0, 0, 0, (table:k(3,giMIDI_Table))
    endif

    if (gkReleaseNote ==1) then
    gkArp_Array[] = 0
    endif
endif
endin


instr 3; Audio Input

ifftsize = 512
iwtype = 1

gaInput inch 2 ;live audio input via channel 2

aInput = (gaInput*gkDryInputVol)

adp   delayr    0.1                     ; delay original signal
adel  deltapn   512                     ; by 512 samples
      delayw    aInput
      
;formant shift
fsig1 pvsanal adel, ifftsize, ifftsize / 4, ifftsize, iwtype
fDryFormant pvswarp fsig1, 1, (gkDryFormant*100)
aDryFormant pvsynth fDryFormant

;pan control      
gaDryL, gaDryR pan2 aDryFormant, gkDryInputPan

;Reverb
gaReverbSendL += (gaDryL*gkDryInputRev)
gaReverbSendR += (gaDryR*gkDryInputRev)

endin

instr 4; Harmonies

iPortTime = 0.001

kcross init 0
kcross port kcross, 0.1
    
;********************PITCH ANALYSIS********************

ifftsize = 512    ;for analysis
iwtype = 1

; analyse
fsig pvsanal gaInput, ifftsize, ifftsize / 4, ifftsize, iwtype
kfr, kamp ptrack gaInput, 512

; don't let freq go below 20 Hz 
if (kfr > 20) kgoto ok
kfr = 440
ok:

;**********************HARMONY 1**********************

if (gkHarm1Vol > 0) then

    if (gkModeSwitch1 == 0) then

    ; ratio to scale by, difference between desired drone hz and actual note
    kratio1 = gkArp_Array[0] / kfr
    kratioport1 portk kratio1, 0.0001

    ; transpose it 
    fHarm1 pvscale fsig, kratioport1, 1

    ; resynthesis
    a1 pvsynth fHarm1
    
    elseif (gkModeSwitch1 == 1 && gkArp_Array[0]!= 0) then
    
    abuzz1 buzz 30000, gkArp_Array[0], 50, 1		;buzz source
    fbuzz1 pvsanal  abuzz1, ifftsize, ifftsize / 4, ifftsize, iwtype
    fauto1 pvscross fbuzz1, fsig, kcross, 1. - kcross

    a1 pvsynth fauto1
    
    else a1 = 0
    
    endif

;volume control
aHarm1 = (a1*gkHarm1Vol)

    if (gkHarm1Formant != 0) then
    ;formant shift
    fsig1 pvsanal aHarm1, ifftsize, ifftsize / 4, ifftsize, iwtype
    fHarm1Formant pvswarp fsig1, 1, (gkHarm1Formant*100)
    aHarm1Formant pvsynth fHarm1Formant
    
    else aHarm1Formant = aHarm1
    endif

;pan control
a1L, a1R pan2 aHarm1Formant, gkHarm1Pan

    if (table:k(0,giMIDI_Table) != 0) then
    ;send to global audio
    gaHarmoniesL = gaHarmoniesL + a1L
    gaHarmoniesR = gaHarmoniesR + a1R

    ;Reverb
    gaReverbSendL += (a1L*gkHarm1Rev)
    gaReverbSendR += (a1R*gkHarm1Rev)
    endif
endif

;**********************HARMONY 2**********************

if (gkHarm2Vol > 0) then

    if (gkModeSwitch2 == 0) then

    ; ratio to scale by, difference between desired drone hz and actual note
    kratio2 = gkArp_Array[1] / kfr
    kratioport2 portk kratio2, 0.0001

    ; transpose it 
    fHarm2 pvscale fsig, kratioport2, 1

    ; resynthesis
    a2 pvsynth fHarm2
    
    elseif (gkModeSwitch2 == 1 && gkArp_Array[1]!= 0) then
    
    abuzz2 buzz 30000, gkArp_Array[1], 50, 1		;buzz source
    fbuzz2 pvsanal  abuzz2, ifftsize, ifftsize / 4, ifftsize, iwtype
    fauto2 pvscross fbuzz2, fsig, kcross, 1. - kcross

    a2 pvsynth fauto2
    
    else a2 = 0
    
    endif

;volume control
aHarm2 = (a2*gkHarm2Vol)

if (gkHarm2Formant != 0) then
    ;formant shift
    fsig2 pvsanal aHarm2, ifftsize, ifftsize / 4, ifftsize, iwtype
    fHarm2Formant pvswarp fsig2, 1, (gkHarm2Formant*100)
    aHarm2Formant pvsynth fHarm2Formant
    
    else aHarm2Formant = aHarm2
    endif

;pan control
a2L, a2R pan2 aHarm2Formant, gkHarm2Pan

    if (table:k(1,giMIDI_Table) != 0) then
    ;send to global audio
    gaHarmoniesL = gaHarmoniesL + a2L
    gaHarmoniesR = gaHarmoniesR + a2R

    ;Reverb
    gaReverbSendL += (a2L*gkHarm2Rev)
    gaReverbSendR += (a2R*gkHarm2Rev)
    endif
endif

;**********************HARMONY 3**********************

if (gkHarm3Vol > 0) then

    if (gkModeSwitch3 == 0) then

    ; ratio to scale by, difference between desired drone hz and actual note
    kratio3 = gkArp_Array[2] / kfr
    kratioport3 portk kratio3, 0.0001

    ; transpose it 
    fHarm3 pvscale fsig, kratioport3, 1

    ; resynthesis
    a3 pvsynth fHarm3
    
    elseif (gkModeSwitch3 == 1 && gkArp_Array[2]!= 0) then
    
    abuzz3 buzz 30000, gkArp_Array[2], 50, 1		;buzz source
    fbuzz3 pvsanal  abuzz3, ifftsize, ifftsize / 4, ifftsize, iwtype
    fauto3 pvscross fbuzz3, fsig, kcross, 1. - kcross

    a3 pvsynth fauto3
    
    else a3 = 0
    
    endif
    
;volume control
aHarm3 = (a3*gkHarm3Vol)

    if (gkHarm3Formant != 0) then
    ;formant shift
    fsig3 pvsanal aHarm3, ifftsize, ifftsize / 4, ifftsize, iwtype
    fHarm3Formant pvswarp fsig3, 1, (gkHarm3Formant*100)
    aHarm3Formant pvsynth fHarm3Formant
    
    else aHarm3Formant = aHarm3
    endif

;pan control
a3L, a3R pan2 aHarm3Formant, gkHarm3Pan

    if (table:k(2,giMIDI_Table) != 0) then
    ;send to global audio
    gaHarmoniesL = gaHarmoniesL + a3L
    gaHarmoniesR = gaHarmoniesR + a3R

    ;Reverb
    gaReverbSendL += (a3L*gkHarm3Rev)
    gaReverbSendR += (a3R*gkHarm3Rev)
    endif
endif

;**********************HARMONY 4**********************

if (gkHarm4Vol > 0) then

    if (gkModeSwitch4 == 0) then

    ; ratio to scale by, difference between desired drone hz and actual note
    kratio4 = gkArp_Array[3] / kfr
    kratioport4 portk kratio4, 0.0001

    ; transpose it 
    fHarm4 pvscale fsig, kratioport4, 1

    ; resynthesis
    a4 pvsynth fHarm4
    
    elseif (gkModeSwitch4 == 1 && gkArp_Array[3]!= 0) then
    
    abuzz4 buzz 30000, gkArp_Array[3], 50, 1		;buzz source
    fbuzz4 pvsanal  abuzz4, ifftsize, ifftsize / 4, ifftsize, iwtype
    fauto4 pvscross fbuzz4, fsig, kcross, 1. - kcross

    a4 pvsynth fauto4
    
    else a4 = 0
    
    endif

;volume control
aHarm4 = (a4*gkHarm4Vol)

    if (gkHarm4Formant != 0) then
    ;formant shift
    fsig4 pvsanal aHarm4, ifftsize, ifftsize / 4, ifftsize, iwtype
    fHarm4Formant pvswarp fsig4, 1, (gkHarm4Formant*100)
    aHarm4Formant pvsynth fHarm4Formant
    
    else aHarm4Formant = aHarm4
    endif

;pan control
a4L, a4R pan2 aHarm4, gkHarm4Pan

    if (table:k(3,giMIDI_Table) != 0) then
    ;send to global audio
    gaHarmoniesL = gaHarmoniesL + a4L
    gaHarmoniesR = gaHarmoniesR + a4R

    ;Reverb
    gaReverbSendL += (a4L*gkHarm4Rev)
    gaReverbSendR += (a4R*gkHarm4Rev)
    endif
endif

endin

instr 5; Sub

if (gkSubVol >0) then

kNum      ftom  table:k(0,giMIDI_Table)

kStep     =       kNum % 12         ; wrap around at 12
kBase     =       (24+gkSubOctave)  ; (C1/C2 Chooser)
kSubNoteName =       kBase + kStep  ; sub note (number)
kSubNoteHz mtof kSubNoteName        ; sub note (cps)

kInputAmp rms gaInput, 20
kPortSub lineto kInputAmp, gkSubPortTime
asig oscil kPortSub, kSubNoteHz

    if (table:k(0,giMIDI_Table) != 0) then
    gaSub = (asig*gkSubVol)
    endif

endif
endin

instr 6; reverb

if (gkReverbMasterVol > 0) then
aL ftconv gaReverbSendL, giImpulseL, 512
gaReverbL = (aL*(gkReverbMasterVol/2))

aR ftconv gaReverbSendR, giImpulseR, 512
gaReverbR = (aR*(gkReverbMasterVol/2))
endif

endin

instr 100; Master

outs (gaDryL + gaHarmoniesL + gaSub + gaReverbL), (gaDryR + gaHarmoniesR + gaSub + gaReverbR)
endin


instr 101; clear global audios at the end

clear gaDryL, gaDryR,gaHarmoniesL, gaHarmoniesR, gaSub, gaReverbSendL, gaReverbSendR, gaReverbL, gaReverbR

endin

</CsInstruments>
<CsScore>

f1 0 1024 10 1

i2 0 z
i3 0 z
i4 0 z
i5 0 z
i6 0 z
i100 0 z
i101 0 z
i"ReadWidgets" 0 z

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
