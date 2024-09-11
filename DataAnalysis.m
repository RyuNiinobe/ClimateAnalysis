%RyuNiinobe_project1.m
%Analysis of average temperature, monthly maximum average 
%temperature, monthly total precipitation, and maximum
%temperature for each year in Athens, GA (1945-2023)

%Data Analysis
clear;close all;clc;
format short;
Athens=readmatrix("ClimateData.csv");
ExTemp=Athens(1:948,4);
PrcpAvg=Athens(1:948,5);
TAvg=Athens(1:948,6);
TMax=Athens(1:948,7);

%AvgEXTemps

%%AverageEXTempsJan
Jan1945to80=mean(ExTemp(1:12:422));
JanAfter1980=mean(ExTemp(422:12:end));
JanDiff=JanAfter1980-Jan1945to80;
ExTempChangeJan=JanDiff+Jan1945to80;
%%AverageEXTempsFeb
Feb1945to80=mean(ExTemp(2:12:423));
FebAfter1980=mean(ExTemp(423:12:end));
FebDiff=FebAfter1980-Feb1945to80;
ExTempChangeFeb=FebDiff+Feb1945to80;
%%AverageEXTempsMar
Mar1945to80=mean(ExTemp(3:12:424));
MarAfter1980=mean(ExTemp(424:12:end));
MarDiff=MarAfter1980-Mar1945to80;
ExTempChangeMar=MarDiff+Mar1945to80;
%%AverageEXTempsApr
Apr1945to80=mean(ExTemp(4:12:425));
AprAfter1980=mean(ExTemp(425:12:end));
AprDiff=AprAfter1980-Apr1945to80;
ExTempChangeApr=AprDiff+Apr1945to80;
%%AverageEXTempsMay
May1945to80=mean(ExTemp(5:12:426));
MayAfter1980=mean(ExTemp(426:12:end));
MayDiff=AprAfter1980-Apr1945to80;
ExTempChangeMay=MayDiff+May1945to80;
%%AverageEXTempsJun
Jun1945to80=mean(ExTemp(6:12:427));
JunAfter1980=mean(ExTemp(427:12:end));
JunDiff=JunAfter1980-Jun1945to80;
ExTempChangeJun=JunDiff+Jun1945to80;
%%AverageEXTempsJLY
JLY1945to80=mean(ExTemp(7:12:428));
JLYAfter1980=mean(ExTemp(428:12:end));
JLYDiff=JLYAfter1980-JLY1945to80;
ExTempChangeJLY=JLYDiff+JLY1945to80;
%AverageEXTempsAug
Aug1945to80=mean(ExTemp(8:12:429));
AugAfter1980=mean(ExTemp(429:12:end));
AugDiff=AugAfter1980-Aug1945to80;
ExTempChangeAug=AugDiff+Aug1945to80;
%%AverageEXTempsSep
Sep1945to80=mean(ExTemp(9:12:430));
SepAfter1980=mean(ExTemp(430:12:end));
SepDiff=SepAfter1980-Sep1945to80;
ExTempChangeSep=SepDiff+Sep1945to80;
%%AverageEXTempsOct
Oct1945to80=mean(ExTemp(10:12:431));
OctAfter1980=mean(ExTemp(431:12:end));
OctDiff=OctAfter1980-Oct1945to80;
ExTempChangeOct=OctDiff+Oct1945to80;
%%AverageEXTempsNov
Nov1945to80=mean(ExTemp(11:12:432));
NovAfter1980=mean(ExTemp(432:12:end));
NovDiff=NovAfter1980-Nov1945to80;
ExTempChangeNov=NovDiff+Nov1945to80;
%%AverageEXTempsDec
Dec1945to80=mean(ExTemp(12:12:433));
DecAfter1980=mean(ExTemp(24:12:end));
DecDiff=DecAfter1980-Dec1945to80;
ExTempChangeDec=DecDiff+Dec1945to80;

%Bar Chart
DataExTemp=[Jan1945to80 ExTempChangeJan; Feb1945to80 ExTempChangeFeb; Mar1945to80 ExTempChangeMar; Apr1945to80 ExTempChangeApr;
May1945to80 ExTempChangeMay; Jun1945to80 ExTempChangeJun; JLY1945to80 ExTempChangeJLY; Aug1945to80 ExTempChangeAug; Sep1945to80 ExTempChangeSep;
Oct1945to80 ExTempChangeOct; Nov1945to80 ExTempChangeNov; Dec1945to80 ExTempChangeDec];

MonthsExTemp=1:12;
barWidth=0.35;
figure(1);
bar(MonthsExTemp - barWidth/2, DataExTemp(:, 1), barWidth, 'FaceColor', '#0072BD'); hold on;
bar(MonthsExTemp + barWidth/2, DataExTemp(:, 2), barWidth, 'FaceColor', '#EDB120');
xlabel('Months');
ylabel('Temperature (Farenheit)');
title('Extreme Monthly Temperatures in Athens, GA 1945-2023');
legend('Average Extreme Temps (1945-1980)', 'Average Extreme Temps (1980-2023)','Position', [0.405, 0.855, 0.5, 0.06]);
xticks(1:12); 
xticklabels({'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
ylim([35,110]);



%PrcpAvg

%%PrcpAvgJan
PrcpJan1945to80=mean(PrcpAvg(1:12:422));
PrcpJanAfter1980=mean(PrcpAvg(422:12:end));
PrcpJanDiff=PrcpJanAfter1980-PrcpJan1945to80;
PrcpChangeJan=PrcpJanDiff+PrcpJan1945to80;
%%PrcpFeb
PrcpFeb1945to80=mean(PrcpAvg(2:12:423));
PrcpFebAfter1980=mean(PrcpAvg(423:12:end));
PrcpFebDiff=PrcpFebAfter1980-PrcpFeb1945to80;
PrcpChangeFeb=PrcpFebDiff+PrcpFeb1945to80;
%%PrcpMar
PrcpMar1945to80=mean(PrcpAvg(3:12:424));
PrcpMarAfter1980=mean(PrcpAvg(424:12:end));
PrcpMarDiff=PrcpMarAfter1980-PrcpMar1945to80;
PrcpChangeMar=PrcpMarDiff+PrcpMar1945to80;
%%PrcpApr
PrcpApr1945to80=mean(PrcpAvg(4:12:425));
PrcpAprAfter1980=mean(PrcpAvg(425:12:end));
PrcpAprDiff=PrcpAprAfter1980-PrcpApr1945to80;
PrcpChangeApr=PrcpAprDiff+PrcpApr1945to80;
%%PrcpMay
PrcpMay1945to80=mean(PrcpAvg(5:12:426));
PrcpMayAfter1980=mean(PrcpAvg(426:12:end));
PrcpMayDiff=PrcpMayAfter1980-PrcpMay1945to80;
PrcpChangeMay=PrcpMayDiff+PrcpMay1945to80;
%%PrcpJun
PrcpJun1945to80=mean(PrcpAvg(6:12:427));
PrcpJunAfter1980=mean(PrcpAvg(427:12:end));
PrcpJunDiff=PrcpJunAfter1980-PrcpJun1945to80;
PrcpChangeJun=PrcpJunDiff+PrcpJun1945to80;
%%PrcpJLY
PrcpJLY1945to80=mean(PrcpAvg(7:12:428));
PrcpJLYAfter1980=mean(PrcpAvg(428:12:end));
PrcpJLYDiff=PrcpJLYAfter1980-PrcpJLY1945to80;
PrcpChangeJLY=PrcpJLYDiff+PrcpJLY1945to80;
%PrcpAug
PrcpAug1945to80=mean(PrcpAvg(8:12:429));
PrcpAugAfter1980=mean(PrcpAvg(429:12:end));
PrcpAugDiff=PrcpAugAfter1980-PrcpAug1945to80;
PrcpChangeAug=PrcpAugDiff+PrcpAug1945to80;
%%PrcpSep
PrcpSep1945to80=mean(PrcpAvg(9:12:430));
PrcpSepAfter1980=mean(PrcpAvg(430:12:end));
PrcpSepDiff=PrcpSepAfter1980-PrcpSep1945to80;
PrcpChangeSep=PrcpSepDiff+PrcpSep1945to80;
%%PrcpOct
PrcpOct1945to80=mean(PrcpAvg(10:12:431));
PrcpOctAfter1980=mean(PrcpAvg(431:12:end));
PrcpOctDiff=PrcpOctAfter1980-PrcpOct1945to80;
PrcpChangeOct=PrcpOctDiff+PrcpOct1945to80;
%%PrcpNov
PrcpNov1945to80=mean(PrcpAvg(11:12:432));
PrcpNovAfter1980=mean(PrcpAvg(432:12:end));
PrcpNovDiff=PrcpNovAfter1980-PrcpNov1945to80;
PrcpChangeNov=PrcpNovDiff+PrcpNov1945to80;
%%PrcpDec
PrcpDec1945to80=mean(PrcpAvg(12:12:433));
PrcpDecAfter1980=mean(PrcpAvg(24:12:end));
PrcpDecDiff=PrcpDecAfter1980-PrcpDec1945to80;
PrcpChangeDec=PrcpDecDiff+PrcpDec1945to80;

%Bar Chart
DataPrcpAvg=[PrcpJan1945to80 PrcpChangeJan; PrcpFeb1945to80 PrcpChangeFeb; PrcpMar1945to80 PrcpChangeMar; PrcpApr1945to80 PrcpChangeApr;
PrcpMay1945to80 PrcpChangeMay; PrcpJun1945to80 PrcpChangeJun; PrcpJLY1945to80 PrcpChangeJLY; PrcpAug1945to80 PrcpChangeAug; PrcpSep1945to80 PrcpChangeSep;
PrcpOct1945to80 PrcpChangeOct; PrcpNov1945to80 PrcpChangeNov; PrcpDec1945to80 PrcpChangeDec];

MonthsPrcp=1:12;
barWidth2=0.35;
figure(2);
bar(MonthsPrcp - barWidth2/2, DataPrcpAvg(:, 1), barWidth2, 'FaceColor', '#4DBEEE'); hold on;
bar(MonthsPrcp + barWidth2/2, DataPrcpAvg(:, 2), barWidth2, 'FaceColor', 'b');
xlabel('Months');
ylabel('Average Precipitation (Inches)');
title('Monthly Average Precipitation in Athens, GA 1945-2023');
legend('Average Precipitation (1945-1980)', 'Average Precipitation (1980-2023)','Position', [0.405, 0.855, 0.5, 0.06]);
xticks(1:12); 
xticklabels({'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
ylim([0,6.5]);


%TAvg

%%TAvgJan
TAvgJan1945to80=mean(TAvg(1:12:422));
TAvgJanAfter1980=mean(TAvg(422:12:end));
TAvgJanDiff=TAvgJanAfter1980-TAvgJan1945to80;
TAvgChangeJan=TAvgJanDiff+TAvgJan1945to80;
%%TAvgFeb
TAvgFeb1945to80=mean(TAvg(2:12:423));
TAvgFebAfter1980=mean(TAvg(423:12:end));
TAvgFebDiff=TAvgFebAfter1980-TAvgFeb1945to80;
TAvgChangeFeb=TAvgFebDiff+TAvgFeb1945to80;
%%TAvgMar
TAvgMar1945to80=mean(TAvg(3:12:424));
TAvgMarAfter1980=mean(TAvg(424:12:end));
TAvgMarDiff=TAvgMarAfter1980-TAvgMar1945to80;
TAvgChangeMar=TAvgMarDiff+TAvgMar1945to80;
%%TAvgApr
TAvgApr1945to80=mean(TAvg(4:12:425));
TAvgAprAfter1980=mean(TAvg(425:12:end));
TAvgAprDiff=TAvgAprAfter1980-TAvgApr1945to80;
TAvgChangeApr=TAvgAprDiff+TAvgApr1945to80;
%%TAvgMay
TAvgMay1945to80=mean(TAvg(5:12:426));
TAvgMayAfter1980=mean(TAvg(426:12:end));
TAvgMayDiff=TAvgMayAfter1980-TAvgMay1945to80;
TAvgChangeMay=TAvgMayDiff+TAvgMay1945to80;
%%TAvgJun
TAvgJun1945to80=mean(TAvg(6:12:427));
TAvgJunAfter1980=mean(TAvg(427:12:end));
TAvgJunDiff=TAvgJunAfter1980-TAvgJun1945to80;
TAvgChangeJun=TAvgJunDiff+TAvgJun1945to80;
%%TAvgJLY
TAvgJLY1945to80=mean(TAvg(7:12:428));
TAvgJLYAfter1980=mean(TAvg(428:12:end));
TAvgJLYDiff=TAvgJLYAfter1980-TAvgJLY1945to80;
TAvgChangeJLY=TAvgJLYDiff+TAvgJLY1945to80;
%TAvgAug
TAvgAug1945to80=mean(TAvg(8:12:429));
TAvgAugAfter1980=mean(TAvg(429:12:end));
TMaxAugDiff=TAvgAugAfter1980-TAvgAug1945to80;
TAvgChangeAug=TMaxAugDiff+TAvgAug1945to80;
%%TAvgSep
TAvgSep1945to80=mean(TAvg(9:12:430));
TAvgSepAfter1980=mean(TAvg(430:12:end));
TAvgSepDiff=TAvgSepAfter1980-TAvgSep1945to80;
TAvgChangeSep=TAvgSepDiff+TAvgSep1945to80;
%%TAvgOct
TAvgOct1945to80=mean(TAvg(10:12:431));
TAvgOctAfter1980=mean(TAvg(431:12:end));
TAvgOctDiff=TAvgOctAfter1980-TAvgOct1945to80;
TAvgChangeOct=TAvgOctDiff+TAvgOct1945to80;
%%TAvgNov
TAvgNov1945to80=mean(TAvg(11:12:432));
TAvgNovAfter1980=mean(TAvg(432:12:end));
TAvgNovDiff=TAvgNovAfter1980-TAvgNov1945to80;
TAvgChangeNov=TAvgNovDiff+TAvgNov1945to80;
%%TAvgDec
TAvgDec1945to80=mean(TAvg(12:12:433));
TAvgDecAfter1980=mean(TAvg(24:12:end));
TAvgDecDiff=TAvgDecAfter1980-TAvgDec1945to80;
TAvgChangeDec=TAvgDecDiff+TAvgDec1945to80;

%Bar Chart
DataTAvg=[TAvgJan1945to80 TAvgChangeJan; TAvgFeb1945to80 TAvgChangeFeb; TAvgMar1945to80 TAvgChangeMar; TAvgApr1945to80 TAvgChangeApr;
TAvgMay1945to80 TAvgChangeMay; TAvgJun1945to80 TAvgChangeJun; TAvgJLY1945to80 TAvgChangeJLY; TAvgAug1945to80 TAvgChangeAug; TAvgSep1945to80 TAvgChangeSep;
TAvgOct1945to80 TAvgChangeOct; TAvgNov1945to80 TAvgChangeNov; TAvgDec1945to80 TAvgChangeDec];

MonthsTAvg=1:12;
barWidth2=0.35;
figure(3);
bar(MonthsTAvg - barWidth2/2, DataTAvg(:, 1), barWidth2, 'FaceColor', '#EDB120'); hold on;
bar(MonthsTAvg + barWidth2/2, DataTAvg(:, 2), barWidth2, 'FaceColor', 'r');
xlabel('Months');
ylabel('Temperature Average (Farenheit)');
title('Monthly Average Temperature in Athens, GA 1945-2023');
legend('Average Temperature (1945-1980)', 'Average Temperature (1980-2023)','Position', [0.405, 0.855, 0.5, 0.06]);
xticks(1:12); 
xticklabels({'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
ylim([35,95]);

%TMax

%%TMAxJan
TMaxJan1945to80=mean(TMax(1:12:422));
TMaxJanAfter1980=mean(TMax(422:12:end));
TMaxJanDiff=TMaxJanAfter1980-TMaxJan1945to80;
TMaxChangeJan=TMaxJanDiff+TMaxJan1945to80;
%%TMaxFeb
TMaxFeb1945to80=mean(TMax(2:12:423));
TMaxFebAfter1980=mean(TMax(423:12:end));
TMaxFebDiff=TMaxFebAfter1980-TMaxFeb1945to80;
TMaxChangeFeb=TMaxFebDiff+TMaxFeb1945to80;
%%TMaxMar
TMaxMar1945to80=mean(TMax(3:12:424));
TMaxMarAfter1980=mean(TMax(424:12:end));
TMaxMarDiff=TMaxMarAfter1980-TMaxMar1945to80;
TMaxChangeMar=TMaxMarDiff+TMaxMar1945to80;
%%TMaxApr
TMaxApr1945to80=mean(TMax(4:12:425));
TMaxAprAfter1980=mean(TMax(425:12:end));
TMaxAprDiff=TMaxAprAfter1980-TMaxApr1945to80;
TMaxChangeApr=TMaxAprDiff+TMaxApr1945to80;
%%TMaxMay
TMaxMay1945to80=mean(TMax(5:12:426));
TMaxMayAfter1980=mean(TMax(426:12:end));
TMaxMayDiff=TMaxMayAfter1980-TMaxMay1945to80;
TMaxChangeMay=TMaxMayDiff+TMaxMay1945to80;
%%TMaxJun
TMaxJun1945to80=mean(TMax(6:12:427));
TMaxJunAfter1980=mean(TMax(427:12:end));
TMaxJunDiff=TMaxJunAfter1980-TMaxJun1945to80;
TMaxChangeJun=TMaxJunDiff+TMaxJun1945to80;
%%TMaxJLY
TMaxJLY1945to80=mean(TMax(7:12:428));
TMaxJLYAfter1980=mean(TMax(428:12:end));
TMaxJLYDiff=TMaxJLYAfter1980-TMaxJLY1945to80;
TMaxChangeJLY=TMaxJLYDiff+TMaxJLY1945to80;
%TMaxAug
TMaxAug1945to80=mean(TMax(8:12:429));
TMaxAugAfter1980=mean(TMax(429:12:end));
TMaxAugDiff=TMaxAugAfter1980-TMaxAug1945to80;
TMaxChangeAug=TMaxAugDiff+TMaxAug1945to80;
%%TMaxSep
TMaxSep1945to80=mean(TMax(9:12:430));
TMaxSepAfter1980=mean(TMax(430:12:end));
TMaxSepDiff=TMaxSepAfter1980-TMaxSep1945to80;
TMaxChangeSep=TMaxSepDiff+TMaxSep1945to80;
%%TMaxOct
TMaxgOct1945to80=mean(TMax(10:12:431));
TMaxOctAfter1980=mean(TMax(431:12:end));
TMaxOctDiff=TMaxOctAfter1980-TMaxgOct1945to80;
TMaxChangeOct=TMaxOctDiff+TMaxgOct1945to80;
%%TAvgNov
TMaxNov1945to80=mean(TMax(11:12:432));
TMaxNovAfter1980=mean(TMax(432:12:end));
TMaxNovDiff=TMaxNovAfter1980-TMaxNov1945to80;
TMaxChangeNov=TMaxNovDiff+TMaxNov1945to80;
%%TMaxDec
TMaxDec1945to80=mean(TMax(12:12:433));
TMaxDecAfter1980=mean(TMax(24:12:end));
TMaxDecDiff=TMaxDecAfter1980-TMaxDec1945to80;
TMaxChangeDec=TMaxDecDiff+TMaxDec1945to80;

%Bar Chart
DataTMax=[TMaxJan1945to80 TMaxChangeJan; TMaxFeb1945to80 TMaxChangeFeb; TMaxMar1945to80 TMaxChangeMar; TMaxApr1945to80 TMaxChangeApr;
TMaxMay1945to80 TMaxChangeMay; TMaxJun1945to80 TAvgChangeJun; TMaxJLY1945to80 TMaxChangeJLY; TMaxAug1945to80 TMaxChangeAug; TMaxSep1945to80 TMaxChangeSep;
TMaxgOct1945to80 TMaxChangeOct; TMaxNov1945to80 TMaxChangeNov; TMaxDec1945to80 TMaxChangeDec];

MonthsTMax=1:12;
barWidth2=0.35;
figure(4);
bar(MonthsPrcp - barWidth2/2, DataTMax(:, 1), barWidth2, 'FaceColor', '#A2142F'); hold on;
bar(MonthsPrcp + barWidth2/2, DataTMax(:, 2), barWidth2, 'FaceColor', '#D95319');
xlabel('Months');
ylabel('Maximum Temperature (Farenheit)');
title('Monthly Average Maximum Temperature in Athens, GA 1945-2023');
legend('Average Maximum Temperature (1945-1980)', 'Average Maximum Temperature (1980-2023)','Position', [0.405, 0.855, 0.5, 0.06]);
xticks(1:12);
xticklabels({'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
ylim([35,95]);
