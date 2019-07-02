classdef PendulumControl < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        TabGroup                       matlab.ui.container.TabGroup
        Tab                            matlab.ui.container.Tab
        UIAxes                         matlab.ui.control.UIAxes
        UIAxes_2                       matlab.ui.control.UIAxes
        UIAxes_3                       matlab.ui.control.UIAxes
        UIAxes_4                       matlab.ui.control.UIAxes
        KnobLabel                      matlab.ui.control.Label
        Knob                           matlab.ui.control.Knob
        mEditFieldLabel                matlab.ui.control.Label
        mEditField                     matlab.ui.control.NumericEditField
        MEditFieldLabel                matlab.ui.control.Label
        MEditField                     matlab.ui.control.NumericEditField
        lEditFieldLabel                matlab.ui.control.Label
        lEditField                     matlab.ui.control.NumericEditField
        kgLabel                        matlab.ui.control.Label
        fi_degEditFieldLabel           matlab.ui.control.Label
        fi_degEditField                matlab.ui.control.NumericEditField
        kgLabel_2                      matlab.ui.control.Label
        mLabel                         matlab.ui.control.Label
        p_dom_ReEditFieldLabel         matlab.ui.control.Label
        p_dom_ReEditField              matlab.ui.control.NumericEditField
        p_dom_ImEditFieldLabel         matlab.ui.control.Label
        p_dom_ImEditField              matlab.ui.control.NumericEditField
        p_rem_ReSlider                 matlab.ui.control.Slider
        p_rem_ReEditFieldLabel         matlab.ui.control.Label
        p_rem_ReEditField              matlab.ui.control.NumericEditField
        wLabel                         matlab.ui.control.Label
        wEditField                     matlab.ui.control.NumericEditField
        UIAxes_5                       matlab.ui.control.UIAxes
        p_dom2_ReEditFieldLabel        matlab.ui.control.Label
        p_dom2_ReEditField             matlab.ui.control.NumericEditField
        p_dom2_ImEditFieldLabel        matlab.ui.control.Label
        p_dom2_ImEditField             matlab.ui.control.NumericEditField
        Label                          matlab.ui.control.Label
        DEFAULTButton                  matlab.ui.control.Button
        ModesButtonGroup               matlab.ui.container.ButtonGroup
        Mode_1Button                   matlab.ui.control.RadioButton
        Mode_2Button                   matlab.ui.control.RadioButton
        TimeEditFieldLabel             matlab.ui.control.Label
        TimeEditField                  matlab.ui.control.NumericEditField
        x01Label                       matlab.ui.control.Label
        x01EditField                   matlab.ui.control.NumericEditField
        x02Label                       matlab.ui.control.Label
        x02EditField                   matlab.ui.control.NumericEditField
        x03Label                       matlab.ui.control.Label
        x03EditField                   matlab.ui.control.NumericEditField
        x04Label                       matlab.ui.control.Label
        x04EditField                   matlab.ui.control.NumericEditField
        AxesscaleButtonGroup           matlab.ui.container.ButtonGroup
        DefaultButt                    matlab.ui.control.RadioButton
        AutomaticButton                matlab.ui.control.RadioButton
        FiguresButton                  matlab.ui.control.Button
        ExcelButton                    matlab.ui.control.Button
        realK1EditFieldLabel           matlab.ui.control.Label
        realK1EditField                matlab.ui.control.NumericEditField
        realK2EditFieldLabel           matlab.ui.control.Label
        realK2EditField                matlab.ui.control.NumericEditField
        realK3EditFieldLabel           matlab.ui.control.Label
        realK3EditField                matlab.ui.control.NumericEditField
        realK4EditFieldLabel           matlab.ui.control.Label
        realK4EditField                matlab.ui.control.NumericEditField
        StabilityEditFieldLabel        matlab.ui.control.Label
        StabilityEditField             matlab.ui.control.NumericEditField
        ControllabilityEditFieldLabel  matlab.ui.control.Label
        ControllabilityEditField       matlab.ui.control.NumericEditField
        WarningsEditFieldLabel         matlab.ui.control.Label
        WarningsTextField              matlab.ui.control.EditField
        beforeusingfeedbackloopLabel   matlab.ui.control.Label
        p_dom_ImSlider                 matlab.ui.control.Slider
        p_dom2_ReSlider                matlab.ui.control.Slider
        Real_values_equalCheckBox      matlab.ui.control.CheckBox
        wSlider                        matlab.ui.control.Slider
        w2EditFieldLabel               matlab.ui.control.Label
        w2EditField                    matlab.ui.control.NumericEditField
        w_values_equalCheckBox         matlab.ui.control.CheckBox
        w2Slider                       matlab.ui.control.Slider
        p_rem_ImSlider                 matlab.ui.control.Slider
        p_dom_ReSlider                 matlab.ui.control.Slider
        p_rem2_ReSlider                matlab.ui.control.Slider
        p_dom2_ImSlider                matlab.ui.control.Slider
        Imag_values_opposCheckBox      matlab.ui.control.CheckBox
        p_rem2_ImSlider                matlab.ui.control.Slider
        p_rem_ImEditFieldLabel         matlab.ui.control.Label
        p_rem_ImEditField              matlab.ui.control.NumericEditField
        p_rem2_ReEditFieldLabel        matlab.ui.control.Label
        p_rem2_ReEditField             matlab.ui.control.NumericEditField
        p_rem2_ImEditFieldLabel        matlab.ui.control.Label
        p_rem2_ImEditField             matlab.ui.control.NumericEditField
        fi_values_90CheckBox           matlab.ui.control.CheckBox
        fi2_degEditFieldLabel          matlab.ui.control.Label
        fi2_degEditField               matlab.ui.control.NumericEditField
        Real_values_equalCheckBox2     matlab.ui.control.CheckBox
        Imag_values_opposCheckBox2     matlab.ui.control.CheckBox
        Knob_2Label                    matlab.ui.control.Label
        Knob2                          matlab.ui.control.Knob
        text_modeCheckBox              matlab.ui.control.CheckBox
        imagK1EditFieldLabel           matlab.ui.control.Label
        imagK1EditField                matlab.ui.control.NumericEditField
        imagK2EditFieldLabel           matlab.ui.control.Label
        imagK2EditField                matlab.ui.control.NumericEditField
        imagK3EditFieldLabel           matlab.ui.control.Label
        imagK3EditField                matlab.ui.control.NumericEditField
        imagK4EditFieldLabel           matlab.ui.control.Label
        imagK4EditField                matlab.ui.control.NumericEditField
        DebugEditFieldLabel            matlab.ui.control.Label
        DebugEditField                 matlab.ui.control.NumericEditField
        wfip_remLabel                  matlab.ui.control.Label
        p_domp_remLabel                matlab.ui.control.Label
        InputLabel                     matlab.ui.control.Label
        Peak_value1EditField_2Label    matlab.ui.control.Label
        Peak_value1EditField           matlab.ui.control.NumericEditField
        Peak_value4EditField_2Label    matlab.ui.control.Label
        Peak_value4EditField           matlab.ui.control.NumericEditField
        Peak_value3EditField           matlab.ui.control.NumericEditField
        Peak_value3EditField_2Label    matlab.ui.control.Label
        Peak_value2EditField           matlab.ui.control.NumericEditField
        Peak_value2EditField_2Label    matlab.ui.control.Label
        settling_time1EditFieldLabel   matlab.ui.control.Label
        settling_time1EditField        matlab.ui.control.NumericEditField
        settling_time2EditFieldLabel   matlab.ui.control.Label
        settling_time2EditField        matlab.ui.control.NumericEditField
        settling_time3EditFieldLabel   matlab.ui.control.Label
        settling_time3EditField        matlab.ui.control.NumericEditField
        settling_time4EditFieldLabel   matlab.ui.control.Label
        settling_time4EditField        matlab.ui.control.NumericEditField
        xtparametersButtonGroup        matlab.ui.container.ButtonGroup
        HiddenButton                   matlab.ui.control.RadioButton
        Settling_timeButton            matlab.ui.control.RadioButton
        Peak_valueButton               matlab.ui.control.RadioButton
        settling_value1EditFieldLabel  matlab.ui.control.Label
        settling_value1EditField       matlab.ui.control.NumericEditField
        settling_value2EditFieldLabel  matlab.ui.control.Label
        settling_value2EditField       matlab.ui.control.NumericEditField
        settling_value3EditFieldLabel  matlab.ui.control.Label
        settling_value3EditField       matlab.ui.control.NumericEditField
        settling_value4EditFieldLabel  matlab.ui.control.Label
        settling_value4EditField       matlab.ui.control.NumericEditField
        Peak_value1Label               matlab.ui.control.Label
        Peak_value2Label               matlab.ui.control.Label
        Peak_value3Label               matlab.ui.control.Label
        Peak_value4Label               matlab.ui.control.Label
        Warnings2TextField             matlab.ui.control.EditField
        Tab2                           matlab.ui.container.Tab
        p_obs_ReEditFieldLabel         matlab.ui.control.Label
        p_obs_ReEditField              matlab.ui.control.NumericEditField
        p_obs_ImEditFieldLabel         matlab.ui.control.Label
        p_obs_ImEditField              matlab.ui.control.NumericEditField
        p_obs2_ReEditFieldLabel        matlab.ui.control.Label
        p_obs2_ReEditField             matlab.ui.control.NumericEditField
        p_obs2_ImEditFieldLabel        matlab.ui.control.Label
        p_obs2_ImEditField             matlab.ui.control.NumericEditField
        p_obs3_ReEditFieldLabel        matlab.ui.control.Label
        p_obs3_ReEditField             matlab.ui.control.NumericEditField
        p_obs3_ImEditFieldLabel        matlab.ui.control.Label
        p_obs3_ImEditField             matlab.ui.control.NumericEditField
        p_obs4_ReEditFieldLabel        matlab.ui.control.Label
        p_obs4_ReEditField             matlab.ui.control.NumericEditField
        p_obs4_ImEditFieldLabel        matlab.ui.control.Label
        p_obs4_ImEditField             matlab.ui.control.NumericEditField
        SliderLabel                    matlab.ui.control.Label
        p_obs4_ReSlider                matlab.ui.control.Slider
        Slider_2Label                  matlab.ui.control.Label
        p_obs3_ReSlider                matlab.ui.control.Slider
        Slider_3Label                  matlab.ui.control.Label
        p_obs2_ReSlider                matlab.ui.control.Slider
        Slider_4Label                  matlab.ui.control.Label
        p_obs_ReSlider                 matlab.ui.control.Slider
        p_obs4_ImSlider                matlab.ui.control.Slider
        p_obs3_ImSlider                matlab.ui.control.Slider
        p_obs2_ImSlider                matlab.ui.control.Slider
        p_obs_ImSlider                 matlab.ui.control.Slider
        Real_values_equalCheckBox_2    matlab.ui.control.CheckBox
        Imag_values_opposCheckBox_2    matlab.ui.control.CheckBox
        Real_values_equalCheckBox_3    matlab.ui.control.CheckBox
        Imag_values_opposCheckBox_3    matlab.ui.control.CheckBox
        realKe1Label                   matlab.ui.control.Label
        realKe1EditField               matlab.ui.control.NumericEditField
        realKe2EditFieldLabel          matlab.ui.control.Label
        realKe2EditField               matlab.ui.control.NumericEditField
        realKe3EditFieldLabel          matlab.ui.control.Label
        realKe3EditField               matlab.ui.control.NumericEditField
        realKe4EditFieldLabel          matlab.ui.control.Label
        realKe4EditField               matlab.ui.control.NumericEditField
        text_modeCheckBox_2            matlab.ui.control.CheckBox
        imagKe1EditFieldLabel          matlab.ui.control.Label
        imagKe1EditField               matlab.ui.control.NumericEditField
        imagKe2EditFieldLabel          matlab.ui.control.Label
        imagKe2EditField               matlab.ui.control.NumericEditField
        imagKe3EditFieldLabel          matlab.ui.control.Label
        imagKe3EditField               matlab.ui.control.NumericEditField
        imagKe4EditFieldLabel          matlab.ui.control.Label
        imagKe4EditField               matlab.ui.control.NumericEditField
        UIAxes_6                       matlab.ui.control.UIAxes
    end

    
    properties (Access = private)
             propx1;
             propx2;
             propx3;
             propx4;
             propt;
             propm;
             propMa;
             propl;
             propx01;
             propx02;
             propx03;
             propx04;
             propfideg;
             propfi2deg;
             propw;
             propw2;
             prop_p_dom_Re;
             prop_p_dom_Im;
             prop_p_dom2_Re;
             prop_p_dom2_Im;
             prop_p_rem_Re;
             prop_p_rem_Im;
             prop_p_rem2_Re;
             prop_p_rem2_Im;
             prop_realK1;
             prop_realK2;
             prop_realK3;
             prop_realK4;
             prop_imagK1;
             prop_imagK2;
             prop_imagK3;
             prop_imagK4;
             prop_stab;
             prop_sterowalnosc;
             prop_observ;
             prop_settling_time1;
             prop_settling_time2;
             prop_settling_time3;
             prop_settling_time4;
             prop_settling_value1;
             prop_settling_value2;
             prop_settling_value3;
             prop_settling_value4;
             prop_peak_value1;
             prop_peak_value2;
             prop_peak_value3;
             prop_peak_value4;
             prop_p_obs_Re;
             prop_p_obs2_Re;
             prop_p_obs3_Re;
             prop_p_obs4_Re;
             prop_p_obs_Im;
             prop_p_obs2_Im;
             prop_p_obs3_Im;
             prop_p_obs4_Im;
             prop_realKe1;
             prop_realKe2;
             prop_realKe3;
             prop_realKe4;
             prop_imagKe1;
             prop_imagKe2;
             prop_imagKe3;
             prop_imagKe4;
             prop_rankM;
             prop_rankN;
             prop_detW;
             prop_detM;
             
             ExcelCounter=0;
    end
    

    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.Mode_1Button.Value=true;
            if (app.ExcelCounter==0)
                delete('Results1.xlsx');      %delete old records upon the start of the app
            end
        end

        % Callback function: AxesscaleButtonGroup, 
        % ControllabilityEditField, DebugEditField, 
        % Imag_values_opposCheckBox, Imag_values_opposCheckBox2, 
        % Imag_values_opposCheckBox_2, Imag_values_opposCheckBox_3, 
        % Knob, Knob, Knob2, Knob2, MEditField, ModesButtonGroup, 
        % Real_values_equalCheckBox, Real_values_equalCheckBox2, 
        % Real_values_equalCheckBox_2, Real_values_equalCheckBox_3, 
        % StabilityEditField, Tab, TimeEditField, Warnings2TextField, 
        % Warnings2TextField, WarningsTextField, WarningsTextField, 
        % fi2_degEditField, fi_degEditField, fi_values_90CheckBox, 
        % imagK1EditField, imagK2EditField, imagK3EditField, 
        % imagK4EditField, imagKe1EditField, imagKe2EditField, 
        % imagKe3EditField, imagKe4EditField, lEditField, mEditField, 
        % p_dom2_ImEditField, p_dom2_ImSlider, p_dom2_ImSlider, 
        % p_dom2_ReEditField, p_dom2_ReSlider, p_dom2_ReSlider, 
        % p_dom_ImEditField, p_dom_ImSlider, p_dom_ImSlider, 
        % p_dom_ReEditField, p_dom_ReSlider, p_dom_ReSlider, 
        % p_obs2_ImEditField, p_obs2_ImSlider, p_obs2_ImSlider, 
        % p_obs2_ReEditField, p_obs2_ReSlider, p_obs2_ReSlider, 
        % p_obs3_ImEditField, p_obs3_ImSlider, p_obs3_ImSlider, 
        % p_obs3_ReEditField, p_obs3_ReSlider, p_obs3_ReSlider, 
        % p_obs4_ImEditField, p_obs4_ImSlider, p_obs4_ImSlider, 
        % p_obs4_ReEditField, p_obs4_ReSlider, p_obs4_ReSlider, 
        % p_obs_ImEditField, p_obs_ImSlider, p_obs_ImSlider, 
        % p_obs_ReEditField, p_obs_ReSlider, p_obs_ReSlider, 
        % p_rem2_ImEditField, p_rem2_ImSlider, p_rem2_ImSlider, 
        % p_rem2_ReEditField, p_rem2_ReSlider, p_rem2_ReSlider, 
        % p_rem_ImEditField, p_rem_ImSlider, p_rem_ImSlider, 
        % p_rem_ReEditField, p_rem_ReSlider, p_rem_ReSlider, 
        % realK1EditField, realK2EditField, realK3EditField, 
        % realK4EditField, realKe1EditField, realKe2EditField, 
        % realKe3EditField, realKe4EditField, text_modeCheckBox, 
        % text_modeCheckBox_2, w2EditField, w2Slider, w2Slider, 
        % wEditField, wSlider, wSlider, w_values_equalCheckBox, 
        % x01EditField, x02EditField, x03EditField, x04EditField
        function ButtonGroupSelectionChanged(app, event)
            %selectedButton = app.ModesButtonGroup.SelectedObject;
            timee=app.TimeEditField.Value;
            x01=app.x01EditField.Value;
            x02=app.x02EditField.Value;
            x03=app.x03EditField.Value;
            x04=app.x04EditField.Value;
            if (app.DefaultButt.Value==true)
                app.UIAxes.YLimMode='manual';
                app.UIAxes_2.YLimMode='manual';
                app.UIAxes_3.YLimMode='manual';
                app.UIAxes_4.YLimMode='manual';
                app.UIAxes.YLim=[-0.5,1];
                app.UIAxes_2.YLim=[-10,2];
                app.UIAxes_3.YLim=[-2,2];
                app.UIAxes_4.YLim=[-2,5];
            else
                app.UIAxes.YLimMode='auto';
                app.UIAxes_2.YLimMode='auto';
                app.UIAxes_3.YLimMode='auto';
                app.UIAxes_4.YLimMode='auto';
                app.UIAxes.YLim=[-inf, inf];
                app.UIAxes_2.YLim=[-inf,inf];
                app.UIAxes_3.YLim=[-inf,inf];
                app.UIAxes_4.YLim=[-inf,inf];
            end
            app.UIAxes.XLimMode='manual';
            app.UIAxes_2.XLimMode='manual';
            app.UIAxes_3.XLimMode='manual';
            app.UIAxes_4.XLimMode='manual';
            app.UIAxes.XLim=[0,timee];
            app.UIAxes_2.XLim=[0,timee];
            app.UIAxes_3.XLim=[0,timee];
            app.UIAxes_4.XLim=[0,timee];
            
            m=app.mEditField.Value;
            Ma=app.MEditField.Value;
            l=app.lEditField.Value;
            n=4;
            g=9.81;
            A=zeros(4,4);
            A(1,2)=1;
            A(2,1)=((Ma+m)*g)/(Ma*l);
            A(3,4)=1;
            A(4,1)=-(m*g)/Ma;
            B=zeros(4,1);
            B(2,1)=-1/(Ma*l);
            B(4,1)=1/Ma;
            C=[1,0,0,0;
                0,0,1,0];
             
        %if (app.Mode_1Button==app.ModesButtonGroup.SelectedObject)
            M=zeros(4,4);
            for j=1:n
                M(:,j)=(A^(j-1))*B;
            end
            if (rank(M)==n)
                sterowalnosc=1;              %controllability depnds on A,B matrices
                steri="";
            else
                sterowalnosc=-1;
                steri="Uncontrollable, ";
            end
            ch=charpoly(A);  %characteristic vector  //only coefficients ch(1)*s^4 itd.
            pierw=roots(ch);
            W=[ch(4), ch(3), ch(2), 1;
                ch(3), ch(2), 1, 0;
                ch(2), 1, 0 ,0;
                ch(1), 0 ,0, 0];
            stab=1;
            for j=1:n
                if real(pierw(j))>0                        %stability-before-closed-feedback-loop depends only on A matrix
                    stab=-1;
                    break;
                elseif real(pierw(j))==0
                    stab=0;
                end
            end
            if (stab==1)
                stabi="Stable, ";
            elseif (stab==0)
                stabi="Marginal stability, ";
            else
                stabi="";
            end
                    
        %if (app.Mode_1Button==app.ModesButtonGroup.SelectedObject)
        if (app.Mode_1Button.Value==true)  %w,fi mode
            EditOff(app.p_dom_ReEditField);
            EditOff(app.p_dom_ImEditField);
            EditOff(app.p_dom2_ReEditField);
            EditOff(app.p_dom2_ImEditField);
            app.p_dom_ReSlider.Enable='off';
            app.p_dom_ImSlider.Enable='off';
            app.p_dom2_ReSlider.Enable='off';
            app.p_dom2_ImSlider.Enable='off';
            app.Real_values_equalCheckBox.Enable='off';
            app.Imag_values_opposCheckBox.Enable='off';
            app.w_values_equalCheckBox.Enable='on';
            app.fi_values_90CheckBox.Enable='on';
            
            if (app.text_modeCheckBox.Value==1)
                EditOn(app.p_rem_ReEditField);
                EditOn(app.p_rem_ImEditField);
                EditOn(app.p_rem2_ReEditField);
                EditOn(app.p_rem2_ImEditField);
                app.p_rem_ReSlider.Enable='off';
                app.p_rem_ImSlider.Enable='off';
                app.p_rem2_ReSlider.Enable='off';
                app.p_rem2_ImSlider.Enable='off';
                app.Knob.Enable='off';
                app.Knob2.Enable='off';
                EditOn(app.fi_degEditField);
                EditOn(app.fi2_degEditField);
                app.wSlider.Enable='off';
                app.w2Slider.Enable='off';
                EditOn(app.wEditField);
                EditOn(app.w2EditField);
                
                
                p_rem_Re=app.p_rem_ReEditField.Value;
                p_rem_Im=app.p_rem_ImEditField.Value;
                p_rem2_Re=app.p_rem2_ReEditField.Value;
                p_rem2_Im=app.p_rem2_ImEditField.Value;
                fi_deg=app.fi_degEditField.Value;                      %without checkboxes
                fi2_deg=app.fi2_degEditField.Value; 
                w=app.wEditField.Value;
                w2=app.w2EditField.Value;
                      
                if(app.Real_values_equalCheckBox2.Value==1)
                    p_rem2_Re=p_rem_Re;
                    EditOff(app.p_rem2_ReEditField);
                    app.p_rem2_ReEditField.Value=p_rem_Re;
                end
                
                 if(app.Imag_values_opposCheckBox2.Value==1)
                    p_rem2_Im=-p_rem_Im;
                    EditOff(app.p_rem2_ImEditField);
                    app.p_rem2_ImEditField.Value=-p_rem_Im;
                 end
                 if(app.fi_values_90CheckBox.Value==1)
                     fi2_deg=-fi_deg+180;
                     EditOff(app.fi2_degEditField);
                     app.fi2_degEditField.Value=-fi_deg;
                 end
                 if(app.w_values_equalCheckBox.Value==1)
                     w2=w;
                     EditOff(app.w2EditField);
                     app.w2EditField.Value=w;
                 end
                 
                 SetSlider(app.p_rem_ReSlider,p_rem_Re);
                 SetSlider(app.p_rem_ImSlider,p_rem_Im);
                 SetSlider(app.p_rem2_ReSlider,p_rem2_Re);
                 SetSlider(app.p_rem2_ImSlider,p_rem2_Im);
                 SetSlider(app.wSlider,w);
                 SetSlider(app.w2Slider,w2);
                 SetSlider(app.Knob,fi_deg);
                 SetSlider(app.Knob2,fi2_deg);
                 
                 
            else
                EditOff(app.p_rem_ReEditField);
                EditOff(app.p_rem_ImEditField);
                EditOff(app.p_rem2_ReEditField);
                EditOff(app.p_rem2_ImEditField);
                app.p_rem_ReSlider.Enable='on';
                app.p_rem_ImSlider.Enable='on';
                app.p_rem2_ReSlider.Enable='on';
                app.p_rem2_ImSlider.Enable='on';
                app.Knob.Enable='on';
                app.Knob2.Enable='on';
                EditOff(app.fi_degEditField);
                EditOff(app.fi2_degEditField);
                app.wSlider.Enable='on';
                app.w2Slider.Enable='on';
                EditOff(app.wEditField);
                EditOff(app.w2EditField);
                
                p_rem_Re=app.p_rem_ReSlider.Value;
                p_rem_Im=app.p_rem_ImSlider.Value;
                p_rem2_Re=app.p_rem2_ReSlider.Value;
                p_rem2_Im=app.p_rem2_ImSlider.Value;
                fi_deg=app.Knob.Value;
                fi2_deg=app.Knob2.Value;
                w=app.wSlider.Value;
                w2=app.w2Slider.Value;
                
                if(app.Real_values_equalCheckBox2.Value==1)
                    p_rem2_Re=p_rem_Re;
                    app.p_rem2_ReSlider.Enable='off';
                    SetSlider(app.p_rem2_ReSlider,p_rem2_Re);
                    %app.p_rem2_ReSlider.Value=p_rem_Re;
                end
                 if(app.Imag_values_opposCheckBox2.Value==1)
                    p_rem2_Im=-p_rem_Im;
                    app.p_rem2_ImSlider.Enable='off';
                    SetSlider(app.p_rem2_ImSlider,p_rem2_Im);
                    %app.p_rem2_ImSlider.Value=-p_rem_Im;
                 end
                 if(app.fi_values_90CheckBox.Value==1)
                     fi2_deg=-fi_deg+180;
                     app.Knob2.Enable='off';
                     app.fi2_degEditField.Value=-fi_deg;
                     SetSlider(app.Knob2,fi2_deg);
                 end
                 if(app.w_values_equalCheckBox.Value==1)
                     w2=w;
                     app.w2Slider.Enable='off';
                     app.w2EditField.Value=w;
                     SetSlider(app.w2Slider,w2);
                 end
                % show values in text fields    
                app.p_rem_ReEditField.Value=p_rem_Re;
                app.p_rem_ImEditField.Value=p_rem_Im;
                app.p_rem2_ReEditField.Value=p_rem2_Re;
                app.p_rem2_ImEditField.Value=p_rem2_Im;
                app.fi_degEditField.Value=fi_deg;
                app.fi2_degEditField.Value=fi2_deg;
                app.wEditField.Value=w;
                app.w2EditField.Value=w2;
                
                
            end
            

            b=zeros(1,4);
    
             fi=fi_deg*(pi/180);
             ksi=sin(fi);
             wd=w*sqrt(1-ksi^2);
             fi2=fi2_deg*(pi/180);
             ksi2=sin(fi2);
             wd2=w2*sqrt(1-ksi2^2);
             b(1)=-ksi*w+sign(cos(fi))*1i*wd;
             b(2)=-ksi2*w2+sign(cos(fi2))*1i*wd2;  %minus!!
             b(3)=p_rem_Re+1i*p_rem_Im;
             b(4)=p_rem2_Re+1i*p_rem2_Im;
             
            app.p_dom_ReEditField.Value=real(b(1));
            app.p_dom_ImEditField.Value=imag(b(1));
            app.p_dom2_ReEditField.Value=real(b(2));
            app.p_dom2_ImEditField.Value=imag(b(2));
            
            
            p_dom_Re=real(b(1));
            p_dom_Im=imag(b(1));
            p_dom2_Re=real(b(2));
            p_dom2_Im=imag(b(2));            
            %---set-inactive-sliders-within-their-limits---(and control their behavior)
           SetSlider(app.p_dom_ReSlider,p_dom_Re);
           SetSlider(app.p_dom_ImSlider,p_dom_Im);
           SetSlider(app.p_dom2_ReSlider,p_dom2_Re);
           SetSlider(app.p_dom2_ImSlider,p_dom2_Im);
            
        elseif (app.Mode_2Button.Value==true) %p_dom
            app.Knob.Enable='off';
            app.Knob2.Enable='off';
            EditOff(app.fi_degEditField);
            EditOff(app.fi2_degEditField);
            app.wSlider.Enable='off';
            app.w2Slider.Enable='off';
            EditOff(app.wEditField);
            EditOff(app.w2EditField);
            app.Real_values_equalCheckBox.Enable='on';
            app.Imag_values_opposCheckBox.Enable='on';
            app.w_values_equalCheckBox.Enable='off';
            app.fi_values_90CheckBox.Enable='off';
            
            if (app.text_modeCheckBox.Value==1)
                EditOn(app.p_dom_ReEditField);
                EditOn(app.p_dom_ImEditField);
                EditOn(app.p_dom2_ReEditField);
                EditOn(app.p_dom2_ImEditField);
                app.p_dom_ReSlider.Enable='off';
                app.p_dom_ImSlider.Enable='off';
                app.p_dom2_ReSlider.Enable='off';
                app.p_dom2_ImSlider.Enable='off';
                EditOn(app.p_rem_ReEditField);
                EditOn(app.p_rem_ImEditField);
                EditOn(app.p_rem2_ReEditField);
                EditOn(app.p_rem2_ImEditField);
                app.p_rem_ReSlider.Enable='off';
                app.p_rem_ImSlider.Enable='off';
                app.p_rem2_ReSlider.Enable='off';
                app.p_rem2_ImSlider.Enable='off';
                
                p_dom_Re=app.p_dom_ReEditField.Value;
                p_dom_Im=app.p_dom_ImEditField.Value;
                p_dom2_Re=app.p_dom2_ReEditField.Value;
                p_dom2_Im=app.p_dom2_ImEditField.Value;
                p_rem_Re=app.p_rem_ReEditField.Value;
                p_rem_Im=app.p_rem_ImEditField.Value;
                p_rem2_Re=app.p_rem2_ReEditField.Value;
                p_rem2_Im=app.p_rem2_ImEditField.Value;
                
                if(app.Real_values_equalCheckBox.Value==1)
                    p_dom2_Re=p_dom_Re;
                    EditOff(app.p_dom2_ReEditField);
                    app.p_dom2_ReEditField.Value=p_dom_Re;
                end
                
                 if(app.Imag_values_opposCheckBox.Value==1)
                    p_dom2_Im=-p_dom_Im;
                    EditOff(app.p_dom2_ImEditField);
                    app.p_dom2_ImEditField.Value=-p_dom_Im;
                 end
                if(app.Real_values_equalCheckBox2.Value==1)
                    p_rem2_Re=p_rem_Re;
                    EditOff(app.p_rem2_ReEditField);
                    app.p_rem2_ReEditField.Value=p_rem_Re;
                end
                
                 if(app.Imag_values_opposCheckBox2.Value==1)
                    p_rem2_Im=-p_rem_Im;
                    EditOff(app.p_rem2_ImEditField);
                    app.p_rem2_ImEditField.Value=-p_rem_Im;
                 end
                 
                 SetSlider(app.p_dom_ReSlider,p_dom_Re);
                 SetSlider(app.p_dom_ImSlider,p_dom_Im);
                 SetSlider(app.p_dom2_ReSlider,p_dom2_Re);
                 SetSlider(app.p_dom2_ImSlider,p_dom2_Im);
                 SetSlider(app.p_rem_ReSlider,p_rem_Re);
                 SetSlider(app.p_rem_ImSlider,p_rem_Im);
                 SetSlider(app.p_rem2_ReSlider,p_rem2_Re);
                 SetSlider(app.p_rem2_ImSlider,p_rem2_Im);
            else
                EditOff(app.p_dom_ReEditField);
                EditOff(app.p_dom_ImEditField);
                EditOff(app.p_dom2_ReEditField);
                EditOff(app.p_dom2_ImEditField);
                app.p_dom_ReSlider.Enable='on';
                app.p_dom_ImSlider.Enable='on';
                app.p_dom2_ReSlider.Enable='on';
                app.p_dom2_ImSlider.Enable='on';
                EditOff(app.p_rem_ReEditField);
                EditOff(app.p_rem_ImEditField);
                EditOff(app.p_rem2_ReEditField);
                EditOff(app.p_rem2_ImEditField);
                app.p_rem_ReSlider.Enable='on';
                app.p_rem_ImSlider.Enable='on';
                app.p_rem2_ReSlider.Enable='on';
                app.p_rem2_ImSlider.Enable='on';
                
                p_dom_Re=app.p_dom_ReSlider.Value;
                p_dom_Im=app.p_dom_ImSlider.Value;
                p_dom2_Re=app.p_dom2_ReSlider.Value;
                p_dom2_Im=app.p_dom2_ImSlider.Value;
                p_rem_Re=app.p_rem_ReSlider.Value;
                p_rem_Im=app.p_rem_ImSlider.Value;
                p_rem2_Re=app.p_rem2_ReSlider.Value;
                p_rem2_Im=app.p_rem2_ImSlider.Value;
                
                
                if(app.Real_values_equalCheckBox.Value==1)
                    p_dom2_Re=p_dom_Re;
                    app.p_dom2_ReSlider.Enable='off';
                    SetSlider(app.p_dom2_ReSlider,p_dom2_Re);
                    %app.p_dom2_ReSlider.Value=p_dom_Re;
                end
                 if(app.Imag_values_opposCheckBox.Value==1)
                    p_dom2_Im=-p_dom_Im;
                    app.p_dom2_ImSlider.Enable='off';
                    SetSlider(app.p_dom2_ImSlider,p_dom2_Im);
                    %app.p_dom2_ImSlider.Value=-p_dom_Im;
                 end
                if(app.Real_values_equalCheckBox2.Value==1)
                    p_rem2_Re=p_rem_Re;
                    app.p_rem2_ReSlider.Enable='off';
                    SetSlider(app.p_rem2_ReSlider,p_rem2_Re);
                    %app.p_rem2_ReSlider.Value=p_rem_Re;
                end
                 if(app.Imag_values_opposCheckBox2.Value==1)
                    p_rem2_Im=-p_rem_Im;
                    app.p_rem2_ImSlider.Enable='off';
                    SetSlider(app.p_rem2_ImSlider,p_rem2_Im);
                    %app.p_rem2_ImSlider.Value=-p_rem_Im;
                 end
                 
                 app.p_dom_ReEditField.Value=p_dom_Re;
                 app.p_dom_ImEditField.Value=p_dom_Im;
                 app.p_dom2_ReEditField.Value=p_dom2_Re;
                 app.p_dom2_ImEditField.Value=p_dom2_Im;
                 app.p_rem_ReEditField.Value=p_rem_Re;
                 app.p_rem_ImEditField.Value=p_rem_Im;
                 app.p_rem2_ReEditField.Value=p_rem2_Re;
                 app.p_rem2_ImEditField.Value=p_rem2_Im;
            end
            

            b=zeros(1,4);

             
             b(1)=p_dom_Re+1i*p_dom_Im;
             b(2)=p_dom2_Re+1i*p_dom2_Im;
             b(3)=p_rem_Re+1i*p_rem_Im;
             b(4)=p_rem2_Re+1i*p_rem2_Im;
             
            fi_deg=(atan2(-p_dom_Re,p_dom_Im))*(180/pi);
            w=sqrt(p_dom_Re^2+p_dom_Im^2);
            fi2_deg=(atan2(-p_dom2_Re,p_dom2_Im))*(180/pi);
            w2=sqrt(p_dom2_Re^2+p_dom2_Im^2);
            
            
            app.fi_degEditField.Value=fi_deg;
            app.wEditField.Value=w;
            app.fi2_degEditField.Value=fi2_deg;
            app.w2EditField.Value=w2;
            
            %---set-inactive-sliders/knobs-within-their-limits---(and control their behavior)
            SetSlider(app.wSlider,w);
            SetSlider(app.w2Slider,w2);
            SetSlider(app.Knob,fi_deg);
            SetSlider(app.Knob2,fi2_deg);
                     
        end
        
        if (stab==-1)  
             bch=poly(b);
             T=M*W;
             for j=1:n
                  for k=1:n
                     if (abs(T(j,k))<10e-12) 
                      T(j,k)=0; %zlikwiduj bledy
                     end
                  end
             end
             kk=[bch(5)-ch(5), bch(4)-ch(4), bch(3)-ch(3), bch(2)-ch(2)];
             K=kk*fourinv(T);
             
             t=[0:0.01:timee];
             x0=[x01;x02;x03;x04]; %wymuszenie skokiem jednostkowym
             X=zeros(n,length(t));
             for j=1:length(t)
                 AAt=(A-B*K)*t(j);
                 eAAt=expm(AAt);
                 X(:,j)=eAAt*x0;
                 if (imag(X(:,j))<10e-12)  %clear computer errors
                     X(:,j)=real(X(:,j));
                 end
             end
             
             strwarnk='';
             warnk=0;
             for m=1:n
                 if(imag(K(m))<10e-12)
                     K(m)=real(K(m));
                 else
                     warnk=1;
                 end
             end
             
             if (warnk==1)
                 strwarnk='Some or all elements of K matrix are complex! ';
             end
             
             strwarnx='';
             warnx=0;
             for j=1:n
                 for k=1:length(t)
                 if(imag(X(j,k))<10e-12)
                     X(j,k)=real(X(j,k));
                 else
                     warnx=1;
                 end
                 end
             end
             
             if (warnx==1)
                 strwarnx='Some or all elements of X matrix are complex! ';
             end
             
             settling_value=[-2;-2;-2;-2];
             settling_time=[-2;-2;-2;-2];
             peak_value=[-2;-2;-2;-2];
             if(warnx==0)
             %settling-time
             settling_time=[-1, -1, -1, -1];
             %settling_value=zeros(4);
             XT=X';  %transposition of X. XT is a 4-column matrix
             peak_max=max(XT);
             peak_min=min(XT);
             for k=1:n
                 if ((abs(peak_max(k)))>=(abs(peak_min(k))))
                     peak_value(k)=peak_max(k);
                 else
                     peak_value(k)=peak_min(k);   
                 end
             end
             
             thhold=zeros(4);
             strwarnst='';
             for k=1:n
                 thhold(k)=abs(0.02*peak_value(k));
                 if (abs(XT(length(t),k))>thhold(k))
                     strwarnst='Settling time not reached in given time period for X'+string(k)+'(t) ';
                 else
                    for j=(length(t)-1):(-1):1
                        if (abs(XT(j,k))>thhold(k))
                            settling_time(k)=t(j+1);
                            settling_value(k)=XT(j+1,k);
                            break;
                        end
                    end
                 end
             end
             app.settling_time1EditField.Value=settling_time(1);
             app.settling_time2EditField.Value=settling_time(2);
             app.settling_time3EditField.Value=settling_time(3);
             app.settling_time4EditField.Value=settling_time(4);
             app.settling_value1EditField.Value=real(settling_value(1));
             app.settling_value2EditField.Value=real(settling_value(2));
             app.settling_value3EditField.Value=real(settling_value(3));
             app.settling_value4EditField.Value=real(settling_value(4));
             app.Peak_value1EditField.Value=peak_value(1);
             app.Peak_value2EditField.Value=peak_value(2);
             app.Peak_value3EditField.Value=peak_value(3);
             app.Peak_value4EditField.Value=peak_value(4);
             end

             strwarnst='';           
             app.realK1EditField.Value=real(K(1));
             app.realK2EditField.Value=real(K(2));
             app.realK3EditField.Value=real(K(3));
             app.realK4EditField.Value=real(K(4));
             app.imagK1EditField.Value=imag(K(1));
             app.imagK2EditField.Value=imag(K(2));
             app.imagK3EditField.Value=imag(K(3));
             app.imagK4EditField.Value=imag(K(4));
             
             
               %Full-order-state-observer
               
          if (app.text_modeCheckBox_2.Value==1)
              EditOn(app.p_obs_ReEditField);
              EditOn(app.p_obs2_ReEditField); 
              EditOn(app.p_obs3_ReEditField); 
              EditOn(app.p_obs4_ReEditField); 
              EditOn(app.p_obs_ImEditField); 
              EditOn(app.p_obs2_ImEditField); 
              EditOn(app.p_obs3_ImEditField); 
              EditOn(app.p_obs4_ImEditField); 
              app.p_obs_ReSlider.Enable='off';
              app.p_obs2_ReSlider.Enable='off';
              app.p_obs3_ReSlider.Enable='off';
              app.p_obs4_ReSlider.Enable='off';
              app.p_obs_ImSlider.Enable='off';
              app.p_obs2_ImSlider.Enable='off';
              app.p_obs3_ImSlider.Enable='off';
              app.p_obs4_ImSlider.Enable='off';
              p_obs_Re=app.p_obs_ReEditField.Value;
              p_obs2_Re=app.p_obs2_ReEditField.Value;
              p_obs3_Re=app.p_obs3_ReEditField.Value;
              p_obs4_Re=app.p_obs4_ReEditField.Value;
              p_obs_Im=app.p_obs_ImEditField.Value;
              p_obs2_Im=app.p_obs2_ImEditField.Value;
              p_obs3_Im=app.p_obs3_ImEditField.Value;
              p_obs4_Im=app.p_obs4_ImEditField.Value;

              if (app.Real_values_equalCheckBox_2.Value==1)
                  p_obs2_Re=p_obs_Re;
                  EditOff(app.p_obs2_ReEditField);
                  app.p_obs2_ReEditField.Value=p_obs_Re;
              end
              if (app.Imag_values_opposCheckBox_2.Value==1)
                  p_obs2_Im=-p_obs_Im;
                  EditOff(app.p_obs2_ImEditField);
                  app.p_obs2_ImEditField.Value=-p_obs_Im;
              end
              if (app.Real_values_equalCheckBox_3.Value==1)
                  p_obs4_Re=p_obs3_Re;
                  EditOff(app.p_obs4_ReEditField);
                  app.p_obs4_ReEditField.Value=p_obs3_Re;
              end
              if (app.Imag_values_opposCheckBox_3.Value==1)
                  p_obs4_Im=-p_obs3_Im;
                  EditOff(app.p_obs4_ImEditField);
                  app.p_obs4_ImEditField.Value=-p_obs3_Im;
              end
              SetSlider(app.p_obs_ReSlider,p_obs_Re);
              SetSlider(app.p_obs2_ReSlider,p_obs2_Re);
              SetSlider(app.p_obs3_ReSlider,p_obs3_Re);
              SetSlider(app.p_obs4_ReSlider,p_obs4_Re);
              SetSlider(app.p_obs_ImSlider,p_obs_Im);
              SetSlider(app.p_obs2_ImSlider,p_obs2_Im);
              SetSlider(app.p_obs3_ImSlider,p_obs3_Im);
              SetSlider(app.p_obs4_ImSlider,p_obs4_Im);
          else
              EditOff(app.p_obs_ReEditField);
              EditOff(app.p_obs2_ReEditField); 
              EditOff(app.p_obs3_ReEditField); 
              EditOff(app.p_obs4_ReEditField); 
              EditOff(app.p_obs_ImEditField); 
              EditOff(app.p_obs2_ImEditField); 
              EditOff(app.p_obs3_ImEditField); 
              EditOff(app.p_obs4_ImEditField); 
              app.p_obs_ReSlider.Enable='on';
              app.p_obs2_ReSlider.Enable='on';
              app.p_obs3_ReSlider.Enable='on';
              app.p_obs4_ReSlider.Enable='on';
              app.p_obs_ImSlider.Enable='on';
              app.p_obs2_ImSlider.Enable='on';
              app.p_obs3_ImSlider.Enable='on';
              app.p_obs4_ImSlider.Enable='on';
              p_obs_Re=app.p_obs_ReSlider.Value;
              p_obs2_Re=app.p_obs2_ReSlider.Value;
              p_obs3_Re=app.p_obs3_ReSlider.Value;
              p_obs4_Re=app.p_obs4_ReSlider.Value;
              p_obs_Im=app.p_obs_ImSlider.Value;
              p_obs2_Im=app.p_obs2_ImSlider.Value;
              p_obs3_Im=app.p_obs3_ImSlider.Value;
              p_obs4_Im=app.p_obs4_ImSlider.Value;
              if (app.Real_values_equalCheckBox_2.Value==1)
                  p_obs2_Re=p_obs_Re;
                  app.p_obs2_ReSlider.Enable='off';
                  SetSlider(app.p_obs2_ReSlider,p_obs_Re);
              end
              if (app.Imag_values_opposCheckBox_2.Value==1)
                  p_obs2_Im=-p_obs_Im;
                  app.p_obs2_ImSlider.Enable='off';
                  SetSlider(app.p_obs2_ImSlider,-p_obs_Im);
              end
              if (app.Real_values_equalCheckBox_3.Value==1)
                  p_obs4_Re=p_obs3_Re;
                  app.p_obs4_ReSlider.Enable='off';
                  SetSlider(app.p_obs4_ReSlider,p_obs3_Re);
              end
              if (app.Imag_values_opposCheckBox_3.Value==1)
                  p_obs4_Im=-p_obs3_Im;
                  app.p_obs4_ImSlider.Enable='off';
                  SetSlider(app.p_obs4_ImSlider,-p_obs3_Im);
              end
              app.p_obs_ReEditField.Value=p_obs_Re;
              app.p_obs2_ReEditField.Value=p_obs2_Re;
              app.p_obs3_ReEditField.Value=p_obs3_Re;
              app.p_obs4_ReEditField.Value=p_obs4_Re;
              app.p_obs_ImEditField.Value=p_obs_Im;
              app.p_obs2_ImEditField.Value=p_obs2_Im;
              app.p_obs3_ImEditField.Value=p_obs3_Im;
              app.p_obs4_ImEditField.Value=p_obs4_Im;
          end
              
               

            N=[C',A'*C',((A')^2)*C',((A')^3)*C'];
            Ke=[-997,-1000,997,1000]; %display this if sth goes really wrong and 'if' written below doesnt work
 
            obsi='';
            if(rank(N)==n)
                observ=1;
               
             be(1)=(p_obs_Re)+1i*(p_obs_Im);
             be(2)=(p_obs2_Re)+1i*(p_obs2_Im);
             be(3)=(p_obs3_Re)+1i*(p_obs3_Im);
             be(4)=(p_obs4_Re)+1i*(p_obs4_Im);
             we=sqrt((p_obs_Re)^2+(p_obs_Im)^2);
             be(1)=be(1)+0.00001;
             be(2)=be(2)+0.00002;
             be(3)=be(3)+0.00003;
             be(4)=be(4)+0.00004;
             if ((abs(be(4)-be(3))>0.000008)&&(abs(be(4)-be(2))>0.000008)&&(abs(be(4)-be(1))>0.000008)...
                     &&(abs(be(3)-be(2))>0.000008)&&(abs(be(3)-be(1))>0.000008)&&(abs(be(2)-be(1))>0.000008))
                   Ke=place(A',C',be); %Ke calculated with security measures taken
             end
             app.realKe1EditField.Value=real(Ke(1));
             app.realKe2EditField.Value=real(Ke(2));
             app.realKe3EditField.Value=real(Ke(3));
             app.realKe4EditField.Value=real(Ke(4));
             app.imagKe1EditField.Value=imag(Ke(1));
             app.imagKe2EditField.Value=imag(Ke(2));
             app.imagKe3EditField.Value=imag(Ke(3));
             app.imagKe4EditField.Value=imag(Ke(4));
             strwarnke='';
             warnke=0;
             for m=1:n
                 if(imag(Ke(m))<10e-12)
                     Ke(m)=real(Ke(m));
                 else
                     warnke=1;
                 end
             end
             
             if (warnke==1)
                 strwarnke='Some or all elements of Ke matrix are complex! ';
             end
            else
                observ=-1;
                obsi='Unobservable';
            end
           
      
          
           %----end-Tab2----
           
           


             app.StabilityEditField.Value=stab;
             app.ControllabilityEditField.Value=sterowalnosc;
             app.WarningsTextField.Value=steri+stabi+strwarnx+strwarnk+strwarnst+obsi+strwarnke;
             

             
             %plots
             zeroline=zeros(1,length(t));
             x1=X(1,:);
             x2=X(2,:);
             x3=X(3,:);
             x4=X(4,:);
             plot(app.UIAxes,t,x1);
             hold(app.UIAxes)    
             plot(app.UIAxes,t,zeroline,'--k'); %dashed black line
             hold(app.UIAxes)                   %de facto hold off
             plot(app.UIAxes_2,t,x2);
             hold(app.UIAxes_2) 
             plot(app.UIAxes_2,t,zeroline,'--k');
             hold(app.UIAxes_2) 
             plot(app.UIAxes_3,t,x3);
             hold(app.UIAxes_3) 
             plot(app.UIAxes_3,t,zeroline,'--k');
             hold(app.UIAxes_3) 
             plot(app.UIAxes_4,t,x4);
             hold(app.UIAxes_4) 
             plot(app.UIAxes_4,t,zeroline,'--k');
             hold(app.UIAxes_4)
             
             %---establish-private-properties----
             app.propx1=x1;
             app.propx2=x2;
             app.propx3=x3;
             app.propx4=x4;
             app.propt=t;
             app.propm=m;
             app.propMa=Ma;
             app.propl=l;
             app.propx01=x01;
             app.propx02=x02;
             app.propx03=x03;
             app.propx04=x04;
             app.propfideg=fi_deg;
             app.propfi2deg=fi2_deg;
             app.propw=w;
             app.propw2=w2;
             app.prop_p_dom_Re=real(b(1));
             app.prop_p_dom_Im=imag(b(1));
             app.prop_p_dom2_Re=real(b(2));
             app.prop_p_dom2_Im=imag(b(2));
             app.prop_p_rem_Re=real(b(3));
             app.prop_p_rem_Im=imag(b(3));
             app.prop_p_rem2_Re=real(b(4));
             app.prop_p_rem2_Im=imag(b(4));
             app.prop_realK1=real(K(1));
             app.prop_realK2=real(K(2));
             app.prop_realK3=real(K(3));
             app.prop_realK4=real(K(4));
             app.prop_imagK1=imag(K(1));
             app.prop_imagK2=imag(K(2));
             app.prop_imagK3=imag(K(3));
             app.prop_imagK4=imag(K(4));
             app.prop_sterowalnosc=sterowalnosc;
             app.prop_stab=stab;
             app.prop_observ=observ;
             app.prop_settling_time1=settling_time(1);
             app.prop_settling_time2=settling_time(2);
             app.prop_settling_time3=settling_time(3);
             app.prop_settling_time4=settling_time(4);
             app.prop_settling_value1=settling_value(1);
             app.prop_settling_value2=settling_value(2);
             app.prop_settling_value3=settling_value(3);
             app.prop_settling_value4=settling_value(4);
             app.prop_peak_value1=peak_value(1);
             app.prop_peak_value2=peak_value(2);
             app.prop_peak_value3=peak_value(3);
             app.prop_peak_value4=peak_value(4);
             app.prop_p_obs_Re=p_obs_Re;
             app.prop_p_obs2_Re=p_obs2_Re;
             app.prop_p_obs3_Re=p_obs3_Re;
             app.prop_p_obs4_Re=p_obs4_Re;
             app.prop_p_obs_Im=p_obs_Im;
             app.prop_p_obs2_Im=p_obs2_Im;
             app.prop_p_obs3_Im=p_obs3_Im;
             app.prop_p_obs4_Im=p_obs4_Im;
             app.prop_realKe1=real(Ke(1));
             app.prop_realKe2=real(Ke(2));
             app.prop_realKe3=real(Ke(3));
             app.prop_realKe4=real(Ke(4));
             app.prop_imagKe1=imag(Ke(1));
             app.prop_imagKe2=imag(Ke(2));
             app.prop_imagKe3=imag(Ke(3));
             app.prop_imagKe4=imag(Ke(4));
             app.prop_rankM=rank(M);
             app.prop_rankN=rank(N);
             app.prop_detW=det(W);
             app.prop_detM=det(M);
             
             
             
             %--complex_plane--
             xpoolsdominant=[real(b(1)), real(b(2))];
             ypoolsdominant=[imag(b(1)), imag(b(2))];
             xpoolsremote=[real(b(3)), real(b(4))];
             ypoolsremote=[imag(b(3)), imag(b(4))];
             plotcircle(w);
             hold(app.UIAxes_5)
             scatter(app.UIAxes_5,xpoolsdominant,ypoolsdominant,50,'m','+'); %50==MarkerSize
             scatter(app.UIAxes_5,xpoolsremote,ypoolsremote,50,'o');
             hold(app.UIAxes_5)
             
             xepoolsdominant=[real(be(1)), real(be(2))];
             yepoolsdominant=[imag(be(1)), imag(be(2))];
             xepoolsremote=[real(be(3)), real(be(4))];
             yepoolsremote=[imag(be(3)), imag(be(4))];
             plotcircle2(we);
             hold(app.UIAxes_6)
             scatter(app.UIAxes_6,xepoolsdominant,yepoolsdominant,50,'m','+'); %50==MarkerSize
             scatter(app.UIAxes_6,xepoolsremote,yepoolsremote,50,'o');
             hold(app.UIAxes_6)
             
             
             
        end
        
      
            
                
            
             function [odw]=fourinv(m) %exact solution
                 if (det(m)~=0)
                        odw=zeros(4,4);
                        d=1./det(m);
            
                       odw(1,1) = m(2,3)*m(3,4)*m(4,2) - m(2,4)*m(3,3)*m(4,2) + m(2,4)*m(3,2)*m(4,3) - m(2,2)*m(3,4)*m(4,3) - m(2,3)*m(3,2)*m(4,4) + m(2,2)*m(3,3)*m(4,4);
                       odw(1,2) = m(1,4)*m(3,3)*m(4,2) - m(1,3)*m(3,4)*m(4,2) - m(1,4)*m(3,2)*m(4,3) + m(1,2)*m(3,4)*m(4,3) + m(1,3)*m(3,2)*m(4,4) - m(1,2)*m(3,3)*m(4,4);
                       odw(1,3) = m(1,3)*m(2,4)*m(4,2) - m(1,4)*m(2,3)*m(4,2) + m(1,4)*m(2,2)*m(4,3) - m(1,2)*m(2,4)*m(4,3) - m(1,3)*m(2,2)*m(4,4) + m(1,2)*m(2,3)*m(4,4);
                       odw(1,4) = m(1,4)*m(2,3)*m(3,2) - m(1,3)*m(2,4)*m(3,2) - m(1,4)*m(2,2)*m(3,3) + m(1,2)*m(2,4)*m(3,3) + m(1,3)*m(2,2)*m(3,4) - m(1,2)*m(2,3)*m(3,4);
                       odw(2,1) = m(2,4)*m(3,3)*m(4,1) - m(2,3)*m(3,4)*m(4,1) - m(2,4)*m(3,1)*m(4,3) + m(2,1)*m(3,4)*m(4,3) + m(2,3)*m(3,1)*m(4,4) - m(2,1)*m(3,3)*m(4,4);
                       odw(2,2) = m(1,3)*m(3,4)*m(4,1) - m(1,4)*m(3,3)*m(4,1) + m(1,4)*m(3,1)*m(4,3) - m(1,1)*m(3,4)*m(4,3) - m(1,3)*m(3,1)*m(4,4) + m(1,1)*m(3,3)*m(4,4);
                       odw(2,3) = m(1,4)*m(2,3)*m(4,1) - m(1,3)*m(2,4)*m(4,1) - m(1,4)*m(2,1)*m(4,3) + m(1,1)*m(2,4)*m(4,3) + m(1,3)*m(2,1)*m(4,4) - m(1,1)*m(2,3)*m(4,4);
                       odw(2,4) = m(1,3)*m(2,4)*m(3,1) - m(1,4)*m(2,3)*m(3,1) + m(1,4)*m(2,1)*m(3,3) - m(1,1)*m(2,4)*m(3,3) - m(1,3)*m(2,1)*m(3,4) + m(1,1)*m(2,3)*m(3,4);
                       odw(3,1) = m(2,2)*m(3,4)*m(4,1) - m(2,4)*m(3,2)*m(4,1) + m(2,4)*m(3,1)*m(4,2) - m(2,1)*m(3,4)*m(4,2) - m(2,2)*m(3,1)*m(4,4) + m(2,1)*m(3,2)*m(4,4);
                       odw(3,2) = m(1,4)*m(3,2)*m(4,1) - m(1,2)*m(3,4)*m(4,1) - m(1,4)*m(3,1)*m(4,2) + m(1,1)*m(3,4)*m(4,2) + m(1,2)*m(3,1)*m(4,4) - m(1,1)*m(3,2)*m(4,4);
                       odw(3,3) = m(1,2)*m(2,4)*m(4,1) - m(1,4)*m(2,2)*m(4,1) + m(1,4)*m(2,1)*m(4,2) - m(1,1)*m(2,4)*m(4,2) - m(1,2)*m(2,1)*m(4,4) + m(1,1)*m(2,2)*m(4,4);
                       odw(3,4) = m(1,4)*m(2,2)*m(3,1) - m(1,2)*m(2,4)*m(3,1) - m(1,4)*m(2,1)*m(3,2) + m(1,1)*m(2,4)*m(3,2) + m(1,2)*m(2,1)*m(3,4) - m(1,1)*m(2,2)*m(3,4);
                       odw(4,1) = m(2,3)*m(3,2)*m(4,1) - m(2,2)*m(3,3)*m(4,1) - m(2,3)*m(3,1)*m(4,2) + m(2,1)*m(3,3)*m(4,2) + m(2,2)*m(3,1)*m(4,3) - m(2,1)*m(3,2)*m(4,3);
                       odw(4,2) = m(1,2)*m(3,3)*m(4,1) - m(1,3)*m(3,2)*m(4,1) + m(1,3)*m(3,1)*m(4,2) - m(1,1)*m(3,3)*m(4,2) - m(1,2)*m(3,1)*m(4,3) + m(1,1)*m(3,2)*m(4,3);
                       odw(4,3) = m(1,3)*m(2,2)*m(4,1) - m(1,2)*m(2,3)*m(4,1) - m(1,3)*m(2,1)*m(4,2) + m(1,1)*m(2,3)*m(4,2) + m(1,2)*m(2,1)*m(4,3) - m(1,1)*m(2,2)*m(4,3);
                       odw(4,4) = m(1,2)*m(2,3)*m(3,1) - m(1,3)*m(2,2)*m(3,1) + m(1,3)*m(2,1)*m(3,2) - m(1,1)*m(2,3)*m(3,2) - m(1,2)*m(2,1)*m(3,3) + m(1,1)*m(2,2)*m(3,3);
            
                       for j=1:4
                           for k=1:4
                               odw(j,k)=d*odw(j,k);
                           end
                       end
                     
                 else
                     odw=pinv(m);
                     warnsingularity='T matrix is singular, ';
                     app.Warnings2TextField.Value=warnsingularity;
                 end
             end
         
            function plotcircle(r)
                th=[0:pi/180:2*pi];
                xc=zeros(length(th));
                yc=zeros(length(th));
                for j=1:length(th)
                    xc(j)=r*cos(th(j));
                    yc(j)=r*sin(th(j));
                end
                plot(app.UIAxes_5,xc,yc,'color',[1, 0.5, 0]);
            end
        
                    function plotcircle2(r)
                th=[0:pi/180:2*pi];
                xc=zeros(length(th));
                yc=zeros(length(th));
                for j=1:length(th)
                    xc(j)=r*cos(th(j));
                    yc(j)=r*sin(th(j));
                end
                plot(app.UIAxes_6,xc,yc,'color',[1, 0.5, 0]);
            end
        
        
            function SetSlider(Obj,v)  %must be inactive to set
                F=Obj.Limits;
                if ((v>=F(1)) && (v<=F(2)))
                   Obj.Value=v;
                elseif (v<F(1))
                   Obj.Value=F(1);
                elseif (v>F(2))
                   Obj.Value=F(2);
                end
            end
        
            function EditOff(Obj)   %use these 2 funcs only for EditFields to dim inactive fields
                Obj.Editable='off';
                Obj.Enable='off';
            end
        
            function EditOn(Obj)
                Obj.Enable='on';
                Obj.Editable='on';
            end

        end

        % Button pushed function: FiguresButton
        function FiguresButtonPushed(app, event)
            x1=app.propx1;
            x2=app.propx2;
            x3=app.propx3;
            x4=app.propx4;
            t=app.propt;
            
         
            %xlimx1=app.UIAxes.XLimMode;
            %xlimx2=app.UIAxes_2.XLimMode;
            %xlimx3=app.UIAxes_3.XLimMode;
            %xlimx4=app.UIAxes_4.XLimMode;
            %ylimx1=app.UIAxes.YLimMode;
            %ylimx2=app.UIAxes_2.YLimMode;
            %ylimx3=app.UIAxes_3.YLimMode;
            %ylimx4=app.UIAxes_4.YLimMode;
            %limx1=[xlimx1,ylimx1];
            %limx2=[xlimx2,ylimx2];
            %limx3=[xlimx3,ylimx3];
            %limx4=[xlimx4,ylimx4];
            
            
            figure(1)
             subplot(4,1,1);
             plot(t,x1);
             grid;
             title('Response to Initial Condition');
             xlabel('t (sec)');
             ylabel('y1(t)=fi(t) [rad]');
             subplot(4,1,2);
             plot(t,x2);
             grid;
             xlabel('t (sec)');
             ylabel('dfi/dt [rad/sek]' )
             subplot(4,1,3); 
             plot(t,x3); 
             grid
             xlabel('t (sec)');
             ylabel('y2(t)=x(t) [m]');
             subplot(4,1,4); 
             plot(t,x4); 
             grid;
             xlabel('t (sec)');
             ylabel('dx/dt [m/sek]');
            
        end

        % Button pushed function: DEFAULTButton
        function DEFAULTButtonPushed(app, event)
            app.TimeEditField.Value=10;
            app.x01EditField.Value=0.08;
            app.x02EditField.Value=0;
            app.x03EditField.Value=0.04;
            app.x04EditField.Value=0;
            app.mEditField.Value=0.2;
            app.MEditField.Value=2;
            app.wEditField.Value=1.41;
            app.lEditField.Value=0.5;
           
            EditOff(app.p_dom_ReEditField);
            EditOff(app.p_dom_ImEditField);
            EditOff(app.p_dom2_ReEditField);
            EditOff(app.p_dom2_ImEditField);
            app.p_dom_ReSlider.Enable='off';
            app.p_dom_ImSlider.Enable='off';
            app.p_dom2_ReSlider.Enable='off';
            app.p_dom2_ImSlider.Enable='off';
            app.Real_values_equalCheckBox.Enable='off';
            app.Imag_values_opposCheckBox.Enable='off';
            app.w_values_equalCheckBox.Enable='on';
            app.fi_values_90CheckBox.Enable='on';
            
            app.p_dom_ReSlider.Enable='off';
            app.p_dom_ImSlider.Enable='off';
            app.p_dom2_ReSlider.Enable='off';
            app.p_dom2_ImSlider.Enable='off';
            EditOff(app.p_rem_ReEditField);
            EditOff(app.p_rem_ImEditField);
            EditOff(app.p_rem2_ReEditField);
            EditOff(app.p_rem2_ImEditField);
            app.p_rem_ReSlider.Enable='on';
            app.p_rem_ImSlider.Enable='on';
            app.p_rem2_ReSlider.Enable='off';
            app.p_rem2_ImSlider.Enable='off';
            
            app.Knob.Enable='on';
            app.Knob2.Enable='off';
            app.wSlider.Enable='on';
            app.w2Slider.Enable='off';
            EditOff(app.fi_degEditField);
            EditOff(app.fi2_degEditField);
            EditOff(app.wEditField);
            EditOff(app.w2EditField);
            
            app.Mode_1Button.Value=true;
            app.AutomaticButton.Value=true;
            app.Real_values_equalCheckBox2.Value=1;
            app.Imag_values_opposCheckBox2.Value=1;
            app.text_modeCheckBox.Value=0;
            app.fi_values_90CheckBox.Value=1;
            app.w_values_equalCheckBox.Value=1;
            
            app.HiddenButton.Value=true;
            SettlingVis('off');
            PeakVis('off');
            
            app.Knob.Value=45;
            app.wSlider.Value=1.41;
            app.p_rem_ReSlider.Value=-16;
            app.p_rem_ImSlider.Value=0;
            
              EditOff(app.p_obs_ReEditField);
              EditOff(app.p_obs2_ReEditField); 
              EditOff(app.p_obs3_ReEditField); 
              EditOff(app.p_obs4_ReEditField); 
              EditOff(app.p_obs_ImEditField); 
              EditOff(app.p_obs2_ImEditField); 
              EditOff(app.p_obs3_ImEditField); 
              EditOff(app.p_obs4_ImEditField); 
              app.p_obs_ReSlider.Enable='on';
              app.p_obs2_ReSlider.Enable='on';
              app.p_obs3_ReSlider.Enable='on';
              app.p_obs4_ReSlider.Enable='on';
              app.p_obs_ImSlider.Enable='on';
              app.p_obs2_ImSlider.Enable='on';
              app.p_obs3_ImSlider.Enable='on';
              app.p_obs4_ImSlider.Enable='on';
              app.p_obs_ReSlider.Value=-5;
              app.p_obs2_ReSlider.Value=-5;
              app.p_obs3_ReSlider.Value=-5;
              app.p_obs4_ReSlider.Value=-5;
              app.p_obs_ImSlider.Value=0;
              app.p_obs2_ImSlider.Value=0;
              app.p_obs3_ImSlider.Value=0;
              app.p_obs4_ImSlider.Value=0;
              app.p_obs_ReEditField.Value=-5;
              app.p_obs2_ReEditField.Value=-5;
              app.p_obs3_ReEditField.Value=-5;
              app.p_obs4_ReEditField.Value=-5;
              app.p_obs_ImEditField.Value=0;
              app.p_obs2_ImEditField.Value=0;
              app.p_obs3_ImEditField.Value=0;
              app.p_obs4_ImEditField.Value=0;
              app.text_modeCheckBox_2.Value=0;
              app.Real_values_equalCheckBox_2.Value=1;
              app.Imag_values_opposCheckBox_2.Value=1;
              app.Real_values_equalCheckBox_3.Value=1;
              app.Imag_values_opposCheckBox_3.Value=1;
            
            
            function EditOff(Obj)   %use these 2 funcs only for EditFields to dim inactive fields
                Obj.Editable='off';
                Obj.Enable='off';
            end
        
            function EditOn(Obj)
                Obj.Enable='on';
                Obj.Editable='on';
            end
        
            function SettlingVis(flip)
                 app.settling_time1EditField.Visible=flip;
                 app.settling_time2EditField.Visible=flip;
                 app.settling_time3EditField.Visible=flip;
                 app.settling_time4EditField.Visible=flip;
                 app.settling_value1EditField.Visible=flip;
                 app.settling_value2EditField.Visible=flip;
                 app.settling_value3EditField.Visible=flip;
                 app.settling_value4EditField.Visible=flip;
                 app.settling_time1EditFieldLabel.Visible=flip;
                 app.settling_time2EditFieldLabel.Visible=flip;
                 app.settling_time3EditFieldLabel.Visible=flip;
                 app.settling_time4EditFieldLabel.Visible=flip;
                 app.settling_value1EditFieldLabel.Visible=flip;
                 app.settling_value2EditFieldLabel.Visible=flip;
                 app.settling_value3EditFieldLabel.Visible=flip;
                 app.settling_value4EditFieldLabel.Visible=flip;
            end
            function PeakVis(flip)
                app.Peak_value1EditField.Visible=flip;
                app.Peak_value2EditField.Visible=flip;
                app.Peak_value3EditField.Visible=flip;
                app.Peak_value4EditField.Visible=flip;
                app.Peak_value1Label.Visible=flip;
                app.Peak_value2Label.Visible=flip;
                app.Peak_value3Label.Visible=flip;
                app.Peak_value4Label.Visible=flip;
            end
                       
        end

        % Button pushed function: ExcelButton
        function ExcelButtonPushed(app, event)
            x1=app.propx1;
            x2=app.propx2;
            x3=app.propx3;
            x4=app.propx4;
            t=app.propt;
            
            app.ExcelCounter=app.ExcelCounter+1;
            m=app.propm;
            Ma=app.propMa;
            l=app.propl;
            x01=app.propx01;
            x02=app.propx02;
            x03=app.propx03;
            x04=app.propx04;
            fi_deg=app.propfideg;
            fi2_deg=app.propfi2deg;
            w=app.propw;
            w2=app.propw2;
            p_dom_Re=app.prop_p_dom_Re;
            p_dom_Im=app.prop_p_dom_Im;
            p_dom2_Re=app.prop_p_dom2_Re;
            p_dom2_Im=app.prop_p_dom2_Im;
            p_rem_Re=app.prop_p_rem_Re;
            p_rem_Im=app.prop_p_rem_Im;
            p_rem2_Re=app.prop_p_rem2_Re;
            p_rem2_Im=app.prop_p_rem2_Im;
            realK1=app.prop_realK1;
            imagK1=app.prop_imagK1;
            realK2=app.prop_realK2;
            imagK2=app.prop_imagK2;
            realK3=app.prop_realK3;
            imagK3=app.prop_imagK3;
            realK4=app.prop_realK4;
            imagK4=app.prop_imagK4;
            stab=app.prop_stab;
            sterowalnosc=app.prop_sterowalnosc;
             observ=app.prop_observ;
             settling_time1=app.prop_settling_time1;
             settling_time2=app.prop_settling_time2;
             settling_time3=app.prop_settling_time3;
             settling_time4=app.prop_settling_time4;
             settling_value1=app.prop_settling_value1;
             settling_value2=app.prop_settling_value2;
             settling_value3=app.prop_settling_value3;
             settling_value4=app.prop_settling_value4;
             peak_value1=app.prop_peak_value1;
             peak_value2=app.prop_peak_value2;
             peak_value3=app.prop_peak_value3;
             peak_value4=app.prop_peak_value4;
             p_obs_Re=app.prop_p_obs_Re;
             p_obs2_Re=app.prop_p_obs2_Re;
             p_obs3_Re=app.prop_p_obs3_Re;
             p_obs4_Re=app.prop_p_obs4_Re;
             p_obs_Im=app.prop_p_obs_Im;
             p_obs2_Im=app.prop_p_obs2_Im;
             p_obs3_Im=app.prop_p_obs3_Im;
             p_obs4_Im=app.prop_p_obs4_Im;
             realKe1=app.prop_realKe1;
             realKe2=app.prop_realKe2;
             realKe3=app.prop_realKe3;
             realKe4=app.prop_realKe4;
             imagKe1=app.prop_imagKe1;
             imagKe2=app.prop_imagKe2;
             imagKe3=app.prop_imagKe3;
             imagKe4=app.prop_imagKe4;
             rankM=app.prop_rankM;
             rankN=app.prop_rankN;
             n=4;
            detW=app.prop_detW;
            detM=app.prop_detM;
            
            

            
            filename='Results1.xlsx';
          
            T0=table({'m','M','l','x01','x02','x03','x04','fi[deg]','fi2[deg]','w','w2','p_dom_Re','p_dom_Im','p_dom2_Re','p_dom2_Im',...
             'p_rem_Re','p_rem_Im','p_rem2_Re','p_rem2_Im','real(K(1))', 'imag(K(1))', 'real(K(2))', 'imag(K(2))',...
            'real(K(3))', 'imag(K(3))', 'real(K(4))', 'imag(K(4))','stability','controllability','observability',...
            'settling_time(1)','settling_time(2)','settling_time(3)','settling_time(4)',...
            'settling_value(1)','settling_value(2)','settling_value(3)','settling_value(4)',...
            'peak_value(1)','peak_value(2)','peak_value(3)','peak_value(4)',...
            'real(Ke(1))','real(Ke(2))','real(Ke(3))','real(Ke(4))','imag(Ke(1))','imag(Ke(2))','imag(Ke(3))','imag(Ke(4))',...
            'rank(M)','rank(N)','n','det(W)','det(M)'}',...
                [m,Ma,l,x01,x02,x03,x04,fi_deg,fi2_deg,w,w2,p_dom_Re,p_dom_Im,p_dom2_Re,p_dom2_Im,p_rem_Re,p_rem_Im,p_rem2_Re,p_rem2_Im,...
                realK1, imagK1, realK2, imagK2, realK3, imagK3, realK4, imagK4, stab, sterowalnosc, observ,...
                settling_time1,settling_time2,settling_time3,settling_time4,...
                settling_value1,settling_value2,settling_value3,settling_value4,...
                peak_value1,peak_value2,peak_value3,peak_value4,...
                p_obs_Re,p_obs2_Re,p_obs3_Re,p_obs4_Re,p_obs_Im,p_obs2_Im,p_obs3_Im,p_obs4_Im,...
                rankM,rankN,n,detW,detM]'); 
            T0.Properties.VariableNames={'Name','Value'};
            T=table(t',x1',x2',x3',x4'); 
            % ' to position vertically
            T.Properties.VariableNames={'time','x1','x2','x3','x4'};
            
            writetable(T0,filename,'Sheet', app.ExcelCounter,'Range','A1');    
            writetable(T,filename,'Sheet', app.ExcelCounter,'Range','D1');
            
        end

        % Callback function: Peak_value1EditField, 
        % Peak_value2EditField, Peak_value3EditField, 
        % Peak_value4EditField, settling_time1EditField, 
        % settling_time2EditField, settling_time3EditField, 
        % settling_time4EditField, settling_value1EditField, 
        % settling_value2EditField, settling_value3EditField, 
        % settling_value4EditField, xtparametersButtonGroup
        function xtparametersButtonGroupSelectionChanged(app, event)
            %selectedButton = app.xtparametersButtonGroup.SelectedObject;

            
              if (app.Settling_timeButton.Value==true)
                 SettlingVis('on'); 
                 PeakVis('off');
             elseif (app.Peak_valueButton.Value==true)
                 SettlingVis('off');
                 PeakVis('on');
             elseif(app.HiddenButton.Value==true)
                 SettlingVis('off');
                 PeakVis('off');
              end
              

              
             function SettlingVis(flip)
                 app.settling_time1EditField.Visible=flip;
                 app.settling_time2EditField.Visible=flip;
                 app.settling_time3EditField.Visible=flip;
                 app.settling_time4EditField.Visible=flip;
                 app.settling_value1EditField.Visible=flip;
                 app.settling_value2EditField.Visible=flip;
                 app.settling_value3EditField.Visible=flip;
                 app.settling_value4EditField.Visible=flip;
                 app.settling_time1EditFieldLabel.Visible=flip;
                 app.settling_time2EditFieldLabel.Visible=flip;
                 app.settling_time3EditFieldLabel.Visible=flip;
                 app.settling_time4EditFieldLabel.Visible=flip;
                 app.settling_value1EditFieldLabel.Visible=flip;
                 app.settling_value2EditFieldLabel.Visible=flip;
                 app.settling_value3EditFieldLabel.Visible=flip;
                 app.settling_value4EditFieldLabel.Visible=flip;
            end
            function PeakVis(flip)
                app.Peak_value1EditField.Visible=flip;
                app.Peak_value2EditField.Visible=flip;
                app.Peak_value3EditField.Visible=flip;
                app.Peak_value4EditField.Visible=flip;
                app.Peak_value1Label.Visible=flip;
                app.Peak_value2Label.Visible=flip;
                app.Peak_value3Label.Visible=flip;
                app.Peak_value4Label.Visible=flip;
            end
            
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure
            app.UIFigure = uifigure;
            app.UIFigure.Position = [100 100 1596 957];
            app.UIFigure.Name = 'UI Figure';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 8 1576 950];

            % Create Tab
            app.Tab = uitab(app.TabGroup);
            app.Tab.SizeChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Tab.Title = 'Tab';

            % Create UIAxes
            app.UIAxes = uiaxes(app.Tab);
            title(app.UIAxes, 'Response to Initial Condition')
            xlabel(app.UIAxes, 't [sek]')
            ylabel(app.UIAxes, 'fi [rad]')
            app.UIAxes.PlotBoxAspectRatio = [1 0.197138314785374 0.197138314785374];
            app.UIAxes.XLim = [0 4];
            app.UIAxes.YLim = [-0.5 1];
            app.UIAxes.XMinorGrid = 'on';
            app.UIAxes.YMinorGrid = 'on';
            app.UIAxes.Position = [1 708 680 179];

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.Tab);
            title(app.UIAxes_2, '')
            xlabel(app.UIAxes_2, {'t [sek]'; ' '})
            ylabel(app.UIAxes_2, 'dfi/dt [rad/sek]')
            app.UIAxes_2.PlotBoxAspectRatio = [1 0.22626582278481 0.22626582278481];
            app.UIAxes_2.XLim = [0 4];
            app.UIAxes_2.YLim = [-10 2];
            app.UIAxes_2.XMinorGrid = 'on';
            app.UIAxes_2.YMinorGrid = 'on';
            app.UIAxes_2.Position = [1 509 680 185];

            % Create UIAxes_3
            app.UIAxes_3 = uiaxes(app.Tab);
            title(app.UIAxes_3, '')
            xlabel(app.UIAxes_3, {'t [sek]'; ' '})
            ylabel(app.UIAxes_3, 'x [m]')
            app.UIAxes_3.PlotBoxAspectRatio = [1 0.197183098591549 0.197183098591549];
            app.UIAxes_3.XLim = [0 4];
            app.UIAxes_3.YLim = [-2 2];
            app.UIAxes_3.XMinorGrid = 'on';
            app.UIAxes_3.YMinorGrid = 'on';
            app.UIAxes_3.Position = [7 298 687 199];

            % Create UIAxes_4
            app.UIAxes_4 = uiaxes(app.Tab);
            title(app.UIAxes_4, '')
            xlabel(app.UIAxes_4, {'t [sek]'; ' '})
            ylabel(app.UIAxes_4, 'dx/dt [m/sek]')
            app.UIAxes_4.PlotBoxAspectRatio = [1 0.214397496087637 0.214397496087637];
            app.UIAxes_4.XLim = [0 4];
            app.UIAxes_4.YLim = [-2 5];
            app.UIAxes_4.XMinorGrid = 'on';
            app.UIAxes_4.YMinorGrid = 'on';
            app.UIAxes_4.Position = [7 93 680 177];

            % Create KnobLabel
            app.KnobLabel = uilabel(app.Tab);
            app.KnobLabel.HorizontalAlignment = 'center';
            app.KnobLabel.Position = [832 427 34 22];
            app.KnobLabel.Text = 'Knob';

            % Create Knob
            app.Knob = uiknob(app.Tab, 'continuous');
            app.Knob.Limits = [-180 180];
            app.Knob.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Knob.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Knob.Position = [750 456 206 206];
            app.Knob.Value = 45;

            % Create mEditFieldLabel
            app.mEditFieldLabel = uilabel(app.Tab);
            app.mEditFieldLabel.HorizontalAlignment = 'right';
            app.mEditFieldLabel.Position = [131 898 15 20];
            app.mEditFieldLabel.Text = 'm';

            % Create mEditField
            app.mEditField = uieditfield(app.Tab, 'numeric');
            app.mEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.mEditField.HorizontalAlignment = 'center';
            app.mEditField.Position = [149 896 49 22];
            app.mEditField.Value = 0.2;

            % Create MEditFieldLabel
            app.MEditFieldLabel = uilabel(app.Tab);
            app.MEditFieldLabel.HorizontalAlignment = 'right';
            app.MEditFieldLabel.Position = [247 899 10 20];
            app.MEditFieldLabel.Text = 'M';

            % Create MEditField
            app.MEditField = uieditfield(app.Tab, 'numeric');
            app.MEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.MEditField.HorizontalAlignment = 'center';
            app.MEditField.Position = [262 896 53 22];
            app.MEditField.Value = 2;

            % Create lEditFieldLabel
            app.lEditFieldLabel = uilabel(app.Tab);
            app.lEditFieldLabel.HorizontalAlignment = 'right';
            app.lEditFieldLabel.Position = [349 898 15 20];
            app.lEditFieldLabel.Text = 'l';

            % Create lEditField
            app.lEditField = uieditfield(app.Tab, 'numeric');
            app.lEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.lEditField.HorizontalAlignment = 'center';
            app.lEditField.Position = [374 897 49 22];
            app.lEditField.Value = 0.5;

            % Create kgLabel
            app.kgLabel = uilabel(app.Tab);
            app.kgLabel.Position = [211 896 25 22];
            app.kgLabel.Text = 'kg';

            % Create fi_degEditFieldLabel
            app.fi_degEditFieldLabel = uilabel(app.Tab);
            app.fi_degEditFieldLabel.HorizontalAlignment = 'right';
            app.fi_degEditFieldLabel.Position = [777 406 42 22];
            app.fi_degEditFieldLabel.Text = 'fi_deg ';

            % Create fi_degEditField
            app.fi_degEditField = uieditfield(app.Tab, 'numeric');
            app.fi_degEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.fi_degEditField.Editable = 'off';
            app.fi_degEditField.Position = [818 406 100 22];

            % Create kgLabel_2
            app.kgLabel_2 = uilabel(app.Tab);
            app.kgLabel_2.Position = [325 896 25 22];
            app.kgLabel_2.Text = 'kg';

            % Create mLabel
            app.mLabel = uilabel(app.Tab);
            app.mLabel.Position = [430 896 25 22];
            app.mLabel.Text = 'm';

            % Create p_dom_ReEditFieldLabel
            app.p_dom_ReEditFieldLabel = uilabel(app.Tab);
            app.p_dom_ReEditFieldLabel.HorizontalAlignment = 'right';
            app.p_dom_ReEditFieldLabel.Position = [686 865 64 22];
            app.p_dom_ReEditFieldLabel.Text = 'p_dom_Re';

            % Create p_dom_ReEditField
            app.p_dom_ReEditField = uieditfield(app.Tab, 'numeric');
            app.p_dom_ReEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom_ReEditField.Editable = 'off';
            app.p_dom_ReEditField.Position = [754 865 79 22];

            % Create p_dom_ImEditFieldLabel
            app.p_dom_ImEditFieldLabel = uilabel(app.Tab);
            app.p_dom_ImEditFieldLabel.HorizontalAlignment = 'right';
            app.p_dom_ImEditFieldLabel.Position = [847 865 62 22];
            app.p_dom_ImEditFieldLabel.Text = 'p_dom_Im';

            % Create p_dom_ImEditField
            app.p_dom_ImEditField = uieditfield(app.Tab, 'numeric');
            app.p_dom_ImEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom_ImEditField.Editable = 'off';
            app.p_dom_ImEditField.Position = [921 865 91 22];

            % Create p_rem_ReSlider
            app.p_rem_ReSlider = uislider(app.Tab);
            app.p_rem_ReSlider.Limits = [-100 10];
            app.p_rem_ReSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem_ReSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem_ReSlider.Position = [1143 808 287 3];
            app.p_rem_ReSlider.Value = -16;

            % Create p_rem_ReEditFieldLabel
            app.p_rem_ReEditFieldLabel = uilabel(app.Tab);
            app.p_rem_ReEditFieldLabel.HorizontalAlignment = 'right';
            app.p_rem_ReEditFieldLabel.Position = [1120 865 62 22];
            app.p_rem_ReEditFieldLabel.Text = 'p_rem_Re';

            % Create p_rem_ReEditField
            app.p_rem_ReEditField = uieditfield(app.Tab, 'numeric');
            app.p_rem_ReEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem_ReEditField.Editable = 'off';
            app.p_rem_ReEditField.Position = [1197 865 76 22];

            % Create wLabel
            app.wLabel = uilabel(app.Tab);
            app.wLabel.HorizontalAlignment = 'right';
            app.wLabel.Position = [777 370 25 22];
            app.wLabel.Text = 'w';

            % Create wEditField
            app.wEditField = uieditfield(app.Tab, 'numeric');
            app.wEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.wEditField.Position = [817 370 100 22];
            app.wEditField.Value = 1.41;

            % Create UIAxes_5
            app.UIAxes_5 = uiaxes(app.Tab);
            title(app.UIAxes_5, 'Pools on complex plane')
            xlabel(app.UIAxes_5, 'Re')
            ylabel(app.UIAxes_5, 'Im')
            app.UIAxes_5.PlotBoxAspectRatio = [1 0.5625 0.5625];
            app.UIAxes_5.XLim = [-20 20];
            app.UIAxes_5.YLim = [-10 10];
            app.UIAxes_5.XAxisLocation = 'origin';
            app.UIAxes_5.YAxisLocation = 'origin';
            app.UIAxes_5.YGrid = 'on';
            app.UIAxes_5.Position = [710 1 410 250];

            % Create p_dom2_ReEditFieldLabel
            app.p_dom2_ReEditFieldLabel = uilabel(app.Tab);
            app.p_dom2_ReEditFieldLabel.HorizontalAlignment = 'right';
            app.p_dom2_ReEditFieldLabel.Position = [679 831 71 22];
            app.p_dom2_ReEditFieldLabel.Text = 'p_dom2_Re';

            % Create p_dom2_ReEditField
            app.p_dom2_ReEditField = uieditfield(app.Tab, 'numeric');
            app.p_dom2_ReEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom2_ReEditField.Editable = 'off';
            app.p_dom2_ReEditField.Position = [755 831 78 22];

            % Create p_dom2_ImEditFieldLabel
            app.p_dom2_ImEditFieldLabel = uilabel(app.Tab);
            app.p_dom2_ImEditFieldLabel.HorizontalAlignment = 'right';
            app.p_dom2_ImEditFieldLabel.Position = [840 831 69 22];
            app.p_dom2_ImEditFieldLabel.Text = 'p_dom2_Im';

            % Create p_dom2_ImEditField
            app.p_dom2_ImEditField = uieditfield(app.Tab, 'numeric');
            app.p_dom2_ImEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom2_ImEditField.Editable = 'off';
            app.p_dom2_ImEditField.Position = [921 831 91 22];

            % Create Label
            app.Label = uilabel(app.Tab);
            app.Label.Position = [1232 897 25 22];
            app.Label.Text = '';

            % Create DEFAULTButton
            app.DEFAULTButton = uibutton(app.Tab, 'push');
            app.DEFAULTButton.ButtonPushedFcn = createCallbackFcn(app, @DEFAULTButtonPushed, true);
            app.DEFAULTButton.Position = [587 37 100 22];
            app.DEFAULTButton.Text = 'DEFAULT';

            % Create ModesButtonGroup
            app.ModesButtonGroup = uibuttongroup(app.Tab);
            app.ModesButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.ModesButtonGroup.Title = 'Modes';
            app.ModesButtonGroup.FontWeight = 'bold';
            app.ModesButtonGroup.Position = [15 9 100 66];

            % Create Mode_1Button
            app.Mode_1Button = uiradiobutton(app.ModesButtonGroup);
            app.Mode_1Button.Text = 'Mode_1';
            app.Mode_1Button.Position = [11 20 65 22];
            app.Mode_1Button.Value = true;

            % Create Mode_2Button
            app.Mode_2Button = uiradiobutton(app.ModesButtonGroup);
            app.Mode_2Button.Text = 'Mode_2';
            app.Mode_2Button.Position = [11 0 65 22];

            % Create TimeEditFieldLabel
            app.TimeEditFieldLabel = uilabel(app.Tab);
            app.TimeEditFieldLabel.HorizontalAlignment = 'right';
            app.TimeEditFieldLabel.Position = [1 896 32 22];
            app.TimeEditFieldLabel.Text = 'Time';

            % Create TimeEditField
            app.TimeEditField = uieditfield(app.Tab, 'numeric');
            app.TimeEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.TimeEditField.Position = [48 896 55 22];
            app.TimeEditField.Value = 10;

            % Create x01Label
            app.x01Label = uilabel(app.Tab);
            app.x01Label.HorizontalAlignment = 'right';
            app.x01Label.Position = [481 896 25 22];
            app.x01Label.Text = 'x01';

            % Create x01EditField
            app.x01EditField = uieditfield(app.Tab, 'numeric');
            app.x01EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.x01EditField.Position = [521 896 100 22];
            app.x01EditField.Value = 0.08;

            % Create x02Label
            app.x02Label = uilabel(app.Tab);
            app.x02Label.HorizontalAlignment = 'right';
            app.x02Label.Position = [481 700 25 22];
            app.x02Label.Text = 'x02';

            % Create x02EditField
            app.x02EditField = uieditfield(app.Tab, 'numeric');
            app.x02EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.x02EditField.Position = [521 700 100 22];

            % Create x03Label
            app.x03Label = uilabel(app.Tab);
            app.x03Label.HorizontalAlignment = 'right';
            app.x03Label.Position = [481 504 25 22];
            app.x03Label.Text = 'x03';

            % Create x03EditField
            app.x03EditField = uieditfield(app.Tab, 'numeric');
            app.x03EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.x03EditField.Position = [521 504 100 22];
            app.x03EditField.Value = 0.04;

            % Create x04Label
            app.x04Label = uilabel(app.Tab);
            app.x04Label.HorizontalAlignment = 'right';
            app.x04Label.Position = [481 285 25 22];
            app.x04Label.Text = 'x04';

            % Create x04EditField
            app.x04EditField = uieditfield(app.Tab, 'numeric');
            app.x04EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.x04EditField.Position = [521 285 100 22];

            % Create AxesscaleButtonGroup
            app.AxesscaleButtonGroup = uibuttongroup(app.Tab);
            app.AxesscaleButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.AxesscaleButtonGroup.Title = 'Axes scale';
            app.AxesscaleButtonGroup.FontWeight = 'bold';
            app.AxesscaleButtonGroup.Position = [285 6 123 69];

            % Create DefaultButt
            app.DefaultButt = uiradiobutton(app.AxesscaleButtonGroup);
            app.DefaultButt.Text = 'Default';
            app.DefaultButt.Position = [11 23 60 22];

            % Create AutomaticButton
            app.AutomaticButton = uiradiobutton(app.AxesscaleButtonGroup);
            app.AutomaticButton.Text = 'Automatic';
            app.AutomaticButton.Position = [11 1 75 22];
            app.AutomaticButton.Value = true;

            % Create FiguresButton
            app.FiguresButton = uibutton(app.Tab, 'push');
            app.FiguresButton.ButtonPushedFcn = createCallbackFcn(app, @FiguresButtonPushed, true);
            app.FiguresButton.Position = [454 16 100 22];
            app.FiguresButton.Text = 'Figures';

            % Create ExcelButton
            app.ExcelButton = uibutton(app.Tab, 'push');
            app.ExcelButton.ButtonPushedFcn = createCallbackFcn(app, @ExcelButtonPushed, true);
            app.ExcelButton.Position = [454 53 100 22];
            app.ExcelButton.Text = 'Excel';

            % Create realK1EditFieldLabel
            app.realK1EditFieldLabel = uilabel(app.Tab);
            app.realK1EditFieldLabel.HorizontalAlignment = 'right';
            app.realK1EditFieldLabel.Position = [1256 229 56 22];
            app.realK1EditFieldLabel.Text = 'real(K(1))';

            % Create realK1EditField
            app.realK1EditField = uieditfield(app.Tab, 'numeric');
            app.realK1EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.realK1EditField.Editable = 'off';
            app.realK1EditField.Position = [1314 229 92 22];

            % Create realK2EditFieldLabel
            app.realK2EditFieldLabel = uilabel(app.Tab);
            app.realK2EditFieldLabel.HorizontalAlignment = 'right';
            app.realK2EditFieldLabel.Position = [1256 204 56 22];
            app.realK2EditFieldLabel.Text = 'real(K(2))';

            % Create realK2EditField
            app.realK2EditField = uieditfield(app.Tab, 'numeric');
            app.realK2EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.realK2EditField.Editable = 'off';
            app.realK2EditField.Position = [1314 204 92 22];

            % Create realK3EditFieldLabel
            app.realK3EditFieldLabel = uilabel(app.Tab);
            app.realK3EditFieldLabel.HorizontalAlignment = 'right';
            app.realK3EditFieldLabel.Position = [1256 179 56 22];
            app.realK3EditFieldLabel.Text = 'real(K(3))';

            % Create realK3EditField
            app.realK3EditField = uieditfield(app.Tab, 'numeric');
            app.realK3EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.realK3EditField.Editable = 'off';
            app.realK3EditField.Position = [1314 179 92 22];

            % Create realK4EditFieldLabel
            app.realK4EditFieldLabel = uilabel(app.Tab);
            app.realK4EditFieldLabel.HorizontalAlignment = 'right';
            app.realK4EditFieldLabel.Position = [1256 155 56 22];
            app.realK4EditFieldLabel.Text = 'real(K(4))';

            % Create realK4EditField
            app.realK4EditField = uieditfield(app.Tab, 'numeric');
            app.realK4EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.realK4EditField.Editable = 'off';
            app.realK4EditField.Position = [1314 155 92 22];

            % Create StabilityEditFieldLabel
            app.StabilityEditFieldLabel = uilabel(app.Tab);
            app.StabilityEditFieldLabel.HorizontalAlignment = 'right';
            app.StabilityEditFieldLabel.Position = [1379 561 51 22];
            app.StabilityEditFieldLabel.Text = 'Stability';

            % Create StabilityEditField
            app.StabilityEditField = uieditfield(app.Tab, 'numeric');
            app.StabilityEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.StabilityEditField.Editable = 'off';
            app.StabilityEditField.Position = [1439 561 39 22];

            % Create ControllabilityEditFieldLabel
            app.ControllabilityEditFieldLabel = uilabel(app.Tab);
            app.ControllabilityEditFieldLabel.HorizontalAlignment = 'right';
            app.ControllabilityEditFieldLabel.Position = [1368 496 84 22];
            app.ControllabilityEditFieldLabel.Text = 'Controllability';

            % Create ControllabilityEditField
            app.ControllabilityEditField = uieditfield(app.Tab, 'numeric');
            app.ControllabilityEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.ControllabilityEditField.Editable = 'off';
            app.ControllabilityEditField.Position = [1463 496 39 22];

            % Create WarningsEditFieldLabel
            app.WarningsEditFieldLabel = uilabel(app.Tab);
            app.WarningsEditFieldLabel.HorizontalAlignment = 'right';
            app.WarningsEditFieldLabel.Position = [686 285 59 22];
            app.WarningsEditFieldLabel.Text = 'Warnings:';

            % Create WarningsTextField
            app.WarningsTextField = uieditfield(app.Tab, 'text');
            app.WarningsTextField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.WarningsTextField.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.WarningsTextField.Editable = 'off';
            app.WarningsTextField.Position = [760 285 780 22];

            % Create beforeusingfeedbackloopLabel
            app.beforeusingfeedbackloopLabel = uilabel(app.Tab);
            app.beforeusingfeedbackloopLabel.Position = [1389 525 84 28];
            app.beforeusingfeedbackloopLabel.Text = {'(before using'; 'feedback loop)'};

            % Create p_dom_ImSlider
            app.p_dom_ImSlider = uislider(app.Tab);
            app.p_dom_ImSlider.Limits = [0 10];
            app.p_dom_ImSlider.Orientation = 'vertical';
            app.p_dom_ImSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom_ImSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom_ImSlider.Position = [1028 755 3 150];

            % Create p_dom2_ReSlider
            app.p_dom2_ReSlider = uislider(app.Tab);
            app.p_dom2_ReSlider.Limits = [-10 1];
            app.p_dom2_ReSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom2_ReSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom2_ReSlider.Position = [693 765 319 3];

            % Create Real_values_equalCheckBox
            app.Real_values_equalCheckBox = uicheckbox(app.Tab);
            app.Real_values_equalCheckBox.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Real_values_equalCheckBox.Text = 'Real_values_equal';
            app.Real_values_equalCheckBox.Position = [686 708 124 22];
            app.Real_values_equalCheckBox.Value = true;

            % Create wSlider
            app.wSlider = uislider(app.Tab);
            app.wSlider.Limits = [0 10];
            app.wSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.wSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.wSlider.Position = [722 349 289 3];
            app.wSlider.Value = 1.41;

            % Create w2EditFieldLabel
            app.w2EditFieldLabel = uilabel(app.Tab);
            app.w2EditFieldLabel.HorizontalAlignment = 'right';
            app.w2EditFieldLabel.Position = [1120 370 25 22];
            app.w2EditFieldLabel.Text = 'w2';

            % Create w2EditField
            app.w2EditField = uieditfield(app.Tab, 'numeric');
            app.w2EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.w2EditField.Position = [1160 370 100 22];
            app.w2EditField.Value = 1.41;

            % Create w_values_equalCheckBox
            app.w_values_equalCheckBox = uicheckbox(app.Tab);
            app.w_values_equalCheckBox.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.w_values_equalCheckBox.Text = 'w_values_equal';
            app.w_values_equalCheckBox.Position = [993 370 108 22];
            app.w_values_equalCheckBox.Value = true;

            % Create w2Slider
            app.w2Slider = uislider(app.Tab);
            app.w2Slider.Limits = [0 10];
            app.w2Slider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.w2Slider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.w2Slider.Position = [1071 349 289 3];
            app.w2Slider.Value = 1.41;

            % Create p_rem_ImSlider
            app.p_rem_ImSlider = uislider(app.Tab);
            app.p_rem_ImSlider.Limits = [0 10];
            app.p_rem_ImSlider.Orientation = 'vertical';
            app.p_rem_ImSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem_ImSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem_ImSlider.Position = [1449 748 3 150];

            % Create p_dom_ReSlider
            app.p_dom_ReSlider = uislider(app.Tab);
            app.p_dom_ReSlider.Limits = [-10 1];
            app.p_dom_ReSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom_ReSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom_ReSlider.Position = [693 806 319 3];

            % Create p_rem2_ReSlider
            app.p_rem2_ReSlider = uislider(app.Tab);
            app.p_rem2_ReSlider.Limits = [-100 10];
            app.p_rem2_ReSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem2_ReSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem2_ReSlider.Position = [1143 765 287 3];

            % Create p_dom2_ImSlider
            app.p_dom2_ImSlider = uislider(app.Tab);
            app.p_dom2_ImSlider.Limits = [-10 0];
            app.p_dom2_ImSlider.Orientation = 'vertical';
            app.p_dom2_ImSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom2_ImSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_dom2_ImSlider.Position = [1082 755 3 150];

            % Create Imag_values_opposCheckBox
            app.Imag_values_opposCheckBox = uicheckbox(app.Tab);
            app.Imag_values_opposCheckBox.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Imag_values_opposCheckBox.Text = 'Imag_values_oppos';
            app.Imag_values_opposCheckBox.Position = [906 708 129 22];
            app.Imag_values_opposCheckBox.Value = true;

            % Create p_rem2_ImSlider
            app.p_rem2_ImSlider = uislider(app.Tab);
            app.p_rem2_ImSlider.Limits = [-10 0];
            app.p_rem2_ImSlider.Orientation = 'vertical';
            app.p_rem2_ImSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem2_ImSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem2_ImSlider.Position = [1506 748 3 150];

            % Create p_rem_ImEditFieldLabel
            app.p_rem_ImEditFieldLabel = uilabel(app.Tab);
            app.p_rem_ImEditFieldLabel.HorizontalAlignment = 'right';
            app.p_rem_ImEditFieldLabel.Position = [1291 865 60 22];
            app.p_rem_ImEditFieldLabel.Text = 'p_rem_Im';

            % Create p_rem_ImEditField
            app.p_rem_ImEditField = uieditfield(app.Tab, 'numeric');
            app.p_rem_ImEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem_ImEditField.Editable = 'off';
            app.p_rem_ImEditField.Position = [1366 865 68 22];

            % Create p_rem2_ReEditFieldLabel
            app.p_rem2_ReEditFieldLabel = uilabel(app.Tab);
            app.p_rem2_ReEditFieldLabel.HorizontalAlignment = 'right';
            app.p_rem2_ReEditFieldLabel.Position = [1120 831 68 22];
            app.p_rem2_ReEditFieldLabel.Text = 'p_rem2_Re';

            % Create p_rem2_ReEditField
            app.p_rem2_ReEditField = uieditfield(app.Tab, 'numeric');
            app.p_rem2_ReEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem2_ReEditField.Editable = 'off';
            app.p_rem2_ReEditField.Position = [1197 831 76 22];

            % Create p_rem2_ImEditFieldLabel
            app.p_rem2_ImEditFieldLabel = uilabel(app.Tab);
            app.p_rem2_ImEditFieldLabel.HorizontalAlignment = 'right';
            app.p_rem2_ImEditFieldLabel.Position = [1285 831 66 22];
            app.p_rem2_ImEditFieldLabel.Text = 'p_rem2_Im';

            % Create p_rem2_ImEditField
            app.p_rem2_ImEditField = uieditfield(app.Tab, 'numeric');
            app.p_rem2_ImEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_rem2_ImEditField.Editable = 'off';
            app.p_rem2_ImEditField.Position = [1366 831 68 22];

            % Create fi_values_90CheckBox
            app.fi_values_90CheckBox = uicheckbox(app.Tab);
            app.fi_values_90CheckBox.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.fi_values_90CheckBox.Text = 'fi_values_90';
            app.fi_values_90CheckBox.Position = [974 409 89 22];
            app.fi_values_90CheckBox.Value = true;

            % Create fi2_degEditFieldLabel
            app.fi2_degEditFieldLabel = uilabel(app.Tab);
            app.fi2_degEditFieldLabel.HorizontalAlignment = 'right';
            app.fi2_degEditFieldLabel.Position = [1100 409 45 22];
            app.fi2_degEditFieldLabel.Text = 'fi2_deg';

            % Create fi2_degEditField
            app.fi2_degEditField = uieditfield(app.Tab, 'numeric');
            app.fi2_degEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.fi2_degEditField.Editable = 'off';
            app.fi2_degEditField.Position = [1160 406 100 22];

            % Create Real_values_equalCheckBox2
            app.Real_values_equalCheckBox2 = uicheckbox(app.Tab);
            app.Real_values_equalCheckBox2.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Real_values_equalCheckBox2.Text = 'Real_values_equal';
            app.Real_values_equalCheckBox2.Position = [1141 708 124 22];
            app.Real_values_equalCheckBox2.Value = true;

            % Create Imag_values_opposCheckBox2
            app.Imag_values_opposCheckBox2 = uicheckbox(app.Tab);
            app.Imag_values_opposCheckBox2.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Imag_values_opposCheckBox2.Text = 'Imag_values_oppos';
            app.Imag_values_opposCheckBox2.Position = [1352 708 129 22];
            app.Imag_values_opposCheckBox2.Value = true;

            % Create Knob_2Label
            app.Knob_2Label = uilabel(app.Tab);
            app.Knob_2Label.HorizontalAlignment = 'center';
            app.Knob_2Label.Position = [1179 427 34 22];
            app.Knob_2Label.Text = 'Knob';

            % Create Knob2
            app.Knob2 = uiknob(app.Tab, 'continuous');
            app.Knob2.Limits = [-180 180];
            app.Knob2.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Knob2.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Knob2.Position = [1097 456 206 206];
            app.Knob2.Value = 45;

            % Create text_modeCheckBox
            app.text_modeCheckBox = uicheckbox(app.Tab);
            app.text_modeCheckBox.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.text_modeCheckBox.Text = 'text_mode';
            app.text_modeCheckBox.Position = [1409 448 78 22];

            % Create imagK1EditFieldLabel
            app.imagK1EditFieldLabel = uilabel(app.Tab);
            app.imagK1EditFieldLabel.HorizontalAlignment = 'right';
            app.imagK1EditFieldLabel.Position = [1417 229 62 22];
            app.imagK1EditFieldLabel.Text = 'imag(K(1))';

            % Create imagK1EditField
            app.imagK1EditField = uieditfield(app.Tab, 'numeric');
            app.imagK1EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.imagK1EditField.Editable = 'off';
            app.imagK1EditField.Position = [1481 229 92 22];

            % Create imagK2EditFieldLabel
            app.imagK2EditFieldLabel = uilabel(app.Tab);
            app.imagK2EditFieldLabel.HorizontalAlignment = 'right';
            app.imagK2EditFieldLabel.Position = [1417 204 62 22];
            app.imagK2EditFieldLabel.Text = 'imag(K(2))';

            % Create imagK2EditField
            app.imagK2EditField = uieditfield(app.Tab, 'numeric');
            app.imagK2EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.imagK2EditField.Editable = 'off';
            app.imagK2EditField.Position = [1481 204 92 22];

            % Create imagK3EditFieldLabel
            app.imagK3EditFieldLabel = uilabel(app.Tab);
            app.imagK3EditFieldLabel.HorizontalAlignment = 'right';
            app.imagK3EditFieldLabel.Position = [1417 179 62 22];
            app.imagK3EditFieldLabel.Text = 'imag(K(3))';

            % Create imagK3EditField
            app.imagK3EditField = uieditfield(app.Tab, 'numeric');
            app.imagK3EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.imagK3EditField.Editable = 'off';
            app.imagK3EditField.Position = [1481 179 92 22];

            % Create imagK4EditFieldLabel
            app.imagK4EditFieldLabel = uilabel(app.Tab);
            app.imagK4EditFieldLabel.HorizontalAlignment = 'right';
            app.imagK4EditFieldLabel.Position = [1417 155 62 22];
            app.imagK4EditFieldLabel.Text = 'imag(K(4))';

            % Create imagK4EditField
            app.imagK4EditField = uieditfield(app.Tab, 'numeric');
            app.imagK4EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.imagK4EditField.Editable = 'off';
            app.imagK4EditField.Position = [1481 155 92 22];

            % Create DebugEditFieldLabel
            app.DebugEditFieldLabel = uilabel(app.Tab);
            app.DebugEditFieldLabel.HorizontalAlignment = 'right';
            app.DebugEditFieldLabel.Position = [1373 406 41 22];
            app.DebugEditFieldLabel.Text = 'Debug';

            % Create DebugEditField
            app.DebugEditField = uieditfield(app.Tab, 'numeric');
            app.DebugEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.DebugEditField.Editable = 'off';
            app.DebugEditField.Position = [1429 406 100 22];
            app.DebugEditField.Value = -0.5;

            % Create wfip_remLabel
            app.wfip_remLabel = uilabel(app.Tab);
            app.wfip_remLabel.Position = [131 29 60 22];
            app.wfip_remLabel.Text = 'w,fi,p_rem';

            % Create p_domp_remLabel
            app.p_domp_remLabel = uilabel(app.Tab);
            app.p_domp_remLabel.Position = [131 10 80 22];
            app.p_domp_remLabel.Text = 'p_dom,p_rem';

            % Create InputLabel
            app.InputLabel = uilabel(app.Tab);
            app.InputLabel.FontWeight = 'bold';
            app.InputLabel.Position = [144 50 42 22];
            app.InputLabel.Text = 'Input :';

            % Create Peak_value1EditField_2Label
            app.Peak_value1EditField_2Label = uilabel(app.Tab);
            app.Peak_value1EditField_2Label.HorizontalAlignment = 'right';
            app.Peak_value1EditField_2Label.Visible = 'off';
            app.Peak_value1EditField_2Label.Position = [1330 115 83 22];
            app.Peak_value1EditField_2Label.Text = 'Peak_value(1)';

            % Create Peak_value1EditField
            app.Peak_value1EditField = uieditfield(app.Tab, 'numeric');
            app.Peak_value1EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.Peak_value1EditField.Visible = 'off';
            app.Peak_value1EditField.Position = [1428 115 100 22];

            % Create Peak_value4EditField_2Label
            app.Peak_value4EditField_2Label = uilabel(app.Tab);
            app.Peak_value4EditField_2Label.HorizontalAlignment = 'right';
            app.Peak_value4EditField_2Label.Visible = 'off';
            app.Peak_value4EditField_2Label.Position = [1330 24 83 22];
            app.Peak_value4EditField_2Label.Text = 'Peak_value(4)';

            % Create Peak_value4EditField
            app.Peak_value4EditField = uieditfield(app.Tab, 'numeric');
            app.Peak_value4EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.Peak_value4EditField.Visible = 'off';
            app.Peak_value4EditField.Position = [1428 24 100 22];

            % Create Peak_value3EditField
            app.Peak_value3EditField = uieditfield(app.Tab, 'numeric');
            app.Peak_value3EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.Peak_value3EditField.Visible = 'off';
            app.Peak_value3EditField.Position = [1428 54 100 22];

            % Create Peak_value3EditField_2Label
            app.Peak_value3EditField_2Label = uilabel(app.Tab);
            app.Peak_value3EditField_2Label.HorizontalAlignment = 'right';
            app.Peak_value3EditField_2Label.Visible = 'off';
            app.Peak_value3EditField_2Label.Position = [1330 54 83 22];
            app.Peak_value3EditField_2Label.Text = 'Peak_value(3)';

            % Create Peak_value2EditField
            app.Peak_value2EditField = uieditfield(app.Tab, 'numeric');
            app.Peak_value2EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.Peak_value2EditField.Visible = 'off';
            app.Peak_value2EditField.Position = [1428 84 100 22];

            % Create Peak_value2EditField_2Label
            app.Peak_value2EditField_2Label = uilabel(app.Tab);
            app.Peak_value2EditField_2Label.HorizontalAlignment = 'right';
            app.Peak_value2EditField_2Label.Visible = 'off';
            app.Peak_value2EditField_2Label.Position = [1330 84 83 22];
            app.Peak_value2EditField_2Label.Text = 'Peak_value(2)';

            % Create settling_time1EditFieldLabel
            app.settling_time1EditFieldLabel = uilabel(app.Tab);
            app.settling_time1EditFieldLabel.HorizontalAlignment = 'right';
            app.settling_time1EditFieldLabel.Visible = 'off';
            app.settling_time1EditFieldLabel.Position = [1125 105 88 22];
            app.settling_time1EditFieldLabel.Text = 'settling_time(1)';

            % Create settling_time1EditField
            app.settling_time1EditField = uieditfield(app.Tab, 'numeric');
            app.settling_time1EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.settling_time1EditField.Editable = 'off';
            app.settling_time1EditField.Visible = 'off';
            app.settling_time1EditField.Position = [1215 105 92 22];

            % Create settling_time2EditFieldLabel
            app.settling_time2EditFieldLabel = uilabel(app.Tab);
            app.settling_time2EditFieldLabel.HorizontalAlignment = 'right';
            app.settling_time2EditFieldLabel.Visible = 'off';
            app.settling_time2EditFieldLabel.Position = [1125 80 88 22];
            app.settling_time2EditFieldLabel.Text = 'settling_time(2)';

            % Create settling_time2EditField
            app.settling_time2EditField = uieditfield(app.Tab, 'numeric');
            app.settling_time2EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.settling_time2EditField.Editable = 'off';
            app.settling_time2EditField.Visible = 'off';
            app.settling_time2EditField.Position = [1215 80 92 22];

            % Create settling_time3EditFieldLabel
            app.settling_time3EditFieldLabel = uilabel(app.Tab);
            app.settling_time3EditFieldLabel.HorizontalAlignment = 'right';
            app.settling_time3EditFieldLabel.Visible = 'off';
            app.settling_time3EditFieldLabel.Position = [1125 55 88 22];
            app.settling_time3EditFieldLabel.Text = 'settling_time(3)';

            % Create settling_time3EditField
            app.settling_time3EditField = uieditfield(app.Tab, 'numeric');
            app.settling_time3EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.settling_time3EditField.Editable = 'off';
            app.settling_time3EditField.Visible = 'off';
            app.settling_time3EditField.Position = [1215 55 92 22];

            % Create settling_time4EditFieldLabel
            app.settling_time4EditFieldLabel = uilabel(app.Tab);
            app.settling_time4EditFieldLabel.HorizontalAlignment = 'right';
            app.settling_time4EditFieldLabel.Visible = 'off';
            app.settling_time4EditFieldLabel.Position = [1125 31 88 22];
            app.settling_time4EditFieldLabel.Text = 'settling_time(4)';

            % Create settling_time4EditField
            app.settling_time4EditField = uieditfield(app.Tab, 'numeric');
            app.settling_time4EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.settling_time4EditField.Editable = 'off';
            app.settling_time4EditField.Visible = 'off';
            app.settling_time4EditField.Position = [1215 31 92 22];

            % Create xtparametersButtonGroup
            app.xtparametersButtonGroup = uibuttongroup(app.Tab);
            app.xtparametersButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.xtparametersButtonGroup.Title = 'x(t) parameters';
            app.xtparametersButtonGroup.FontWeight = 'bold';
            app.xtparametersButtonGroup.Position = [1130 145 100 91];

            % Create HiddenButton
            app.HiddenButton = uiradiobutton(app.xtparametersButtonGroup);
            app.HiddenButton.Text = 'Hidden';
            app.HiddenButton.Position = [11 45 60 22];
            app.HiddenButton.Value = true;

            % Create Settling_timeButton
            app.Settling_timeButton = uiradiobutton(app.xtparametersButtonGroup);
            app.Settling_timeButton.Text = 'Settling_time';
            app.Settling_timeButton.Position = [11 23 91 22];

            % Create Peak_valueButton
            app.Peak_valueButton = uiradiobutton(app.xtparametersButtonGroup);
            app.Peak_valueButton.Text = 'Peak_value';
            app.Peak_valueButton.Position = [11 1 85 22];

            % Create settling_value1EditFieldLabel
            app.settling_value1EditFieldLabel = uilabel(app.Tab);
            app.settling_value1EditFieldLabel.HorizontalAlignment = 'right';
            app.settling_value1EditFieldLabel.Visible = 'off';
            app.settling_value1EditFieldLabel.Position = [1336 105 94 22];
            app.settling_value1EditFieldLabel.Text = 'settling_value(1)';

            % Create settling_value1EditField
            app.settling_value1EditField = uieditfield(app.Tab, 'numeric');
            app.settling_value1EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.settling_value1EditField.Editable = 'off';
            app.settling_value1EditField.Visible = 'off';
            app.settling_value1EditField.Position = [1432 105 92 22];

            % Create settling_value2EditFieldLabel
            app.settling_value2EditFieldLabel = uilabel(app.Tab);
            app.settling_value2EditFieldLabel.HorizontalAlignment = 'right';
            app.settling_value2EditFieldLabel.Visible = 'off';
            app.settling_value2EditFieldLabel.Position = [1336 80 94 22];
            app.settling_value2EditFieldLabel.Text = 'settling_value(2)';

            % Create settling_value2EditField
            app.settling_value2EditField = uieditfield(app.Tab, 'numeric');
            app.settling_value2EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.settling_value2EditField.Editable = 'off';
            app.settling_value2EditField.Visible = 'off';
            app.settling_value2EditField.Position = [1432 80 92 22];

            % Create settling_value3EditFieldLabel
            app.settling_value3EditFieldLabel = uilabel(app.Tab);
            app.settling_value3EditFieldLabel.HorizontalAlignment = 'right';
            app.settling_value3EditFieldLabel.Visible = 'off';
            app.settling_value3EditFieldLabel.Position = [1336 55 94 22];
            app.settling_value3EditFieldLabel.Text = 'settling_value(3)';

            % Create settling_value3EditField
            app.settling_value3EditField = uieditfield(app.Tab, 'numeric');
            app.settling_value3EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.settling_value3EditField.Editable = 'off';
            app.settling_value3EditField.Visible = 'off';
            app.settling_value3EditField.Position = [1432 55 92 22];

            % Create settling_value4EditFieldLabel
            app.settling_value4EditFieldLabel = uilabel(app.Tab);
            app.settling_value4EditFieldLabel.HorizontalAlignment = 'right';
            app.settling_value4EditFieldLabel.Visible = 'off';
            app.settling_value4EditFieldLabel.Position = [1336 31 94 22];
            app.settling_value4EditFieldLabel.Text = 'settling_value(4)';

            % Create settling_value4EditField
            app.settling_value4EditField = uieditfield(app.Tab, 'numeric');
            app.settling_value4EditField.ValueChangedFcn = createCallbackFcn(app, @xtparametersButtonGroupSelectionChanged, true);
            app.settling_value4EditField.Editable = 'off';
            app.settling_value4EditField.Visible = 'off';
            app.settling_value4EditField.Position = [1432 31 92 22];

            % Create Peak_value1Label
            app.Peak_value1Label = uilabel(app.Tab);
            app.Peak_value1Label.Visible = 'off';
            app.Peak_value1Label.Position = [1341 115 83 22];
            app.Peak_value1Label.Text = 'Peak_value(1)';

            % Create Peak_value2Label
            app.Peak_value2Label = uilabel(app.Tab);
            app.Peak_value2Label.Visible = 'off';
            app.Peak_value2Label.Position = [1341 84 83 22];
            app.Peak_value2Label.Text = 'Peak_value(2)';

            % Create Peak_value3Label
            app.Peak_value3Label = uilabel(app.Tab);
            app.Peak_value3Label.Visible = 'off';
            app.Peak_value3Label.Position = [1341 53 83 22];
            app.Peak_value3Label.Text = 'Peak_value(3)';

            % Create Peak_value4Label
            app.Peak_value4Label = uilabel(app.Tab);
            app.Peak_value4Label.Visible = 'off';
            app.Peak_value4Label.Position = [1341 24 83 22];
            app.Peak_value4Label.Text = 'Peak_value(4)';

            % Create Warnings2TextField
            app.Warnings2TextField = uieditfield(app.Tab, 'text');
            app.Warnings2TextField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Warnings2TextField.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Warnings2TextField.Editable = 'off';
            app.Warnings2TextField.Position = [760 264 780 22];

            % Create Tab2
            app.Tab2 = uitab(app.TabGroup);
            app.Tab2.Title = 'Tab2';

            % Create p_obs_ReEditFieldLabel
            app.p_obs_ReEditFieldLabel = uilabel(app.Tab2);
            app.p_obs_ReEditFieldLabel.HorizontalAlignment = 'right';
            app.p_obs_ReEditFieldLabel.Position = [613 881 60 22];
            app.p_obs_ReEditFieldLabel.Text = 'p_obs_Re';

            % Create p_obs_ReEditField
            app.p_obs_ReEditField = uieditfield(app.Tab2, 'numeric');
            app.p_obs_ReEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs_ReEditField.Editable = 'off';
            app.p_obs_ReEditField.Enable = 'off';
            app.p_obs_ReEditField.Position = [688 881 100 22];
            app.p_obs_ReEditField.Value = -5;

            % Create p_obs_ImEditFieldLabel
            app.p_obs_ImEditFieldLabel = uilabel(app.Tab2);
            app.p_obs_ImEditFieldLabel.HorizontalAlignment = 'right';
            app.p_obs_ImEditFieldLabel.Position = [829 881 58 22];
            app.p_obs_ImEditFieldLabel.Text = 'p_obs_Im';

            % Create p_obs_ImEditField
            app.p_obs_ImEditField = uieditfield(app.Tab2, 'numeric');
            app.p_obs_ImEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs_ImEditField.Editable = 'off';
            app.p_obs_ImEditField.Enable = 'off';
            app.p_obs_ImEditField.Position = [902 881 100 22];

            % Create p_obs2_ReEditFieldLabel
            app.p_obs2_ReEditFieldLabel = uilabel(app.Tab2);
            app.p_obs2_ReEditFieldLabel.HorizontalAlignment = 'right';
            app.p_obs2_ReEditFieldLabel.Enable = 'off';
            app.p_obs2_ReEditFieldLabel.Position = [610 770 67 22];
            app.p_obs2_ReEditFieldLabel.Text = 'p_obs2_Re';

            % Create p_obs2_ReEditField
            app.p_obs2_ReEditField = uieditfield(app.Tab2, 'numeric');
            app.p_obs2_ReEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs2_ReEditField.Editable = 'off';
            app.p_obs2_ReEditField.Enable = 'off';
            app.p_obs2_ReEditField.Position = [692 770 100 22];
            app.p_obs2_ReEditField.Value = -5;

            % Create p_obs2_ImEditFieldLabel
            app.p_obs2_ImEditFieldLabel = uilabel(app.Tab2);
            app.p_obs2_ImEditFieldLabel.HorizontalAlignment = 'right';
            app.p_obs2_ImEditFieldLabel.Enable = 'off';
            app.p_obs2_ImEditFieldLabel.Position = [822 770 65 22];
            app.p_obs2_ImEditFieldLabel.Text = 'p_obs2_Im';

            % Create p_obs2_ImEditField
            app.p_obs2_ImEditField = uieditfield(app.Tab2, 'numeric');
            app.p_obs2_ImEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs2_ImEditField.Editable = 'off';
            app.p_obs2_ImEditField.Enable = 'off';
            app.p_obs2_ImEditField.Position = [902 770 100 22];

            % Create p_obs3_ReEditFieldLabel
            app.p_obs3_ReEditFieldLabel = uilabel(app.Tab2);
            app.p_obs3_ReEditFieldLabel.HorizontalAlignment = 'right';
            app.p_obs3_ReEditFieldLabel.Position = [1086 881 67 22];
            app.p_obs3_ReEditFieldLabel.Text = 'p_obs3_Re';

            % Create p_obs3_ReEditField
            app.p_obs3_ReEditField = uieditfield(app.Tab2, 'numeric');
            app.p_obs3_ReEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs3_ReEditField.Editable = 'off';
            app.p_obs3_ReEditField.Enable = 'off';
            app.p_obs3_ReEditField.Position = [1168 881 100 22];
            app.p_obs3_ReEditField.Value = -5;

            % Create p_obs3_ImEditFieldLabel
            app.p_obs3_ImEditFieldLabel = uilabel(app.Tab2);
            app.p_obs3_ImEditFieldLabel.HorizontalAlignment = 'right';
            app.p_obs3_ImEditFieldLabel.Position = [1302 881 65 22];
            app.p_obs3_ImEditFieldLabel.Text = 'p_obs3_Im';

            % Create p_obs3_ImEditField
            app.p_obs3_ImEditField = uieditfield(app.Tab2, 'numeric');
            app.p_obs3_ImEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs3_ImEditField.Editable = 'off';
            app.p_obs3_ImEditField.Enable = 'off';
            app.p_obs3_ImEditField.Position = [1382 881 100 22];

            % Create p_obs4_ReEditFieldLabel
            app.p_obs4_ReEditFieldLabel = uilabel(app.Tab2);
            app.p_obs4_ReEditFieldLabel.HorizontalAlignment = 'right';
            app.p_obs4_ReEditFieldLabel.Enable = 'off';
            app.p_obs4_ReEditFieldLabel.Position = [1086 770 67 22];
            app.p_obs4_ReEditFieldLabel.Text = 'p_obs4_Re';

            % Create p_obs4_ReEditField
            app.p_obs4_ReEditField = uieditfield(app.Tab2, 'numeric');
            app.p_obs4_ReEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs4_ReEditField.Editable = 'off';
            app.p_obs4_ReEditField.Enable = 'off';
            app.p_obs4_ReEditField.Position = [1168 770 100 22];
            app.p_obs4_ReEditField.Value = -5;

            % Create p_obs4_ImEditFieldLabel
            app.p_obs4_ImEditFieldLabel = uilabel(app.Tab2);
            app.p_obs4_ImEditFieldLabel.HorizontalAlignment = 'right';
            app.p_obs4_ImEditFieldLabel.Enable = 'off';
            app.p_obs4_ImEditFieldLabel.Position = [1302 770 65 22];
            app.p_obs4_ImEditFieldLabel.Text = 'p_obs4_Im';

            % Create p_obs4_ImEditField
            app.p_obs4_ImEditField = uieditfield(app.Tab2, 'numeric');
            app.p_obs4_ImEditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs4_ImEditField.Editable = 'off';
            app.p_obs4_ImEditField.Enable = 'off';
            app.p_obs4_ImEditField.Position = [1382 770 100 22];

            % Create SliderLabel
            app.SliderLabel = uilabel(app.Tab2);
            app.SliderLabel.HorizontalAlignment = 'right';
            app.SliderLabel.Enable = 'off';
            app.SliderLabel.Position = [1086 730 36 22];
            app.SliderLabel.Text = 'Slider';

            % Create p_obs4_ReSlider
            app.p_obs4_ReSlider = uislider(app.Tab2);
            app.p_obs4_ReSlider.Limits = [-100 10];
            app.p_obs4_ReSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs4_ReSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs4_ReSlider.Enable = 'off';
            app.p_obs4_ReSlider.Position = [1143 739 327 3];
            app.p_obs4_ReSlider.Value = -5;

            % Create Slider_2Label
            app.Slider_2Label = uilabel(app.Tab2);
            app.Slider_2Label.HorizontalAlignment = 'right';
            app.Slider_2Label.Position = [1094 838 36 22];
            app.Slider_2Label.Text = 'Slider';

            % Create p_obs3_ReSlider
            app.p_obs3_ReSlider = uislider(app.Tab2);
            app.p_obs3_ReSlider.Limits = [-100 10];
            app.p_obs3_ReSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs3_ReSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs3_ReSlider.Position = [1151 847 327 3];
            app.p_obs3_ReSlider.Value = -5;

            % Create Slider_3Label
            app.Slider_3Label = uilabel(app.Tab2);
            app.Slider_3Label.HorizontalAlignment = 'right';
            app.Slider_3Label.Enable = 'off';
            app.Slider_3Label.Position = [613 730 36 22];
            app.Slider_3Label.Text = 'Slider';

            % Create p_obs2_ReSlider
            app.p_obs2_ReSlider = uislider(app.Tab2);
            app.p_obs2_ReSlider.Limits = [-100 10];
            app.p_obs2_ReSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs2_ReSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs2_ReSlider.Enable = 'off';
            app.p_obs2_ReSlider.Position = [670 739 327 3];
            app.p_obs2_ReSlider.Value = -5;

            % Create Slider_4Label
            app.Slider_4Label = uilabel(app.Tab2);
            app.Slider_4Label.HorizontalAlignment = 'right';
            app.Slider_4Label.Position = [613 838 36 22];
            app.Slider_4Label.Text = 'Slider';

            % Create p_obs_ReSlider
            app.p_obs_ReSlider = uislider(app.Tab2);
            app.p_obs_ReSlider.Limits = [-100 10];
            app.p_obs_ReSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs_ReSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs_ReSlider.Position = [670 847 327 3];
            app.p_obs_ReSlider.Value = -5;

            % Create p_obs4_ImSlider
            app.p_obs4_ImSlider = uislider(app.Tab2);
            app.p_obs4_ImSlider.Limits = [0 10];
            app.p_obs4_ImSlider.Orientation = 'vertical';
            app.p_obs4_ImSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs4_ImSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs4_ImSlider.Enable = 'off';
            app.p_obs4_ImSlider.Position = [1512 709 3 82];

            % Create p_obs3_ImSlider
            app.p_obs3_ImSlider = uislider(app.Tab2);
            app.p_obs3_ImSlider.Limits = [0 10];
            app.p_obs3_ImSlider.Orientation = 'vertical';
            app.p_obs3_ImSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs3_ImSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs3_ImSlider.Position = [1512 817 3 82];

            % Create p_obs2_ImSlider
            app.p_obs2_ImSlider = uislider(app.Tab2);
            app.p_obs2_ImSlider.Limits = [0 10];
            app.p_obs2_ImSlider.Orientation = 'vertical';
            app.p_obs2_ImSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs2_ImSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs2_ImSlider.Enable = 'off';
            app.p_obs2_ImSlider.Position = [1032 709 3 82];

            % Create p_obs_ImSlider
            app.p_obs_ImSlider = uislider(app.Tab2);
            app.p_obs_ImSlider.Limits = [0 10];
            app.p_obs_ImSlider.Orientation = 'vertical';
            app.p_obs_ImSlider.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs_ImSlider.ValueChangingFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.p_obs_ImSlider.Position = [1032 817 3 82];

            % Create Real_values_equalCheckBox_2
            app.Real_values_equalCheckBox_2 = uicheckbox(app.Tab2);
            app.Real_values_equalCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Real_values_equalCheckBox_2.Text = 'Real_values_equal';
            app.Real_values_equalCheckBox_2.Position = [613 676 124 22];
            app.Real_values_equalCheckBox_2.Value = true;

            % Create Imag_values_opposCheckBox_2
            app.Imag_values_opposCheckBox_2 = uicheckbox(app.Tab2);
            app.Imag_values_opposCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Imag_values_opposCheckBox_2.Text = 'Imag_values_oppos';
            app.Imag_values_opposCheckBox_2.Position = [976 676 129 22];
            app.Imag_values_opposCheckBox_2.Value = true;

            % Create Real_values_equalCheckBox_3
            app.Real_values_equalCheckBox_3 = uicheckbox(app.Tab2);
            app.Real_values_equalCheckBox_3.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Real_values_equalCheckBox_3.Text = 'Real_values_equal';
            app.Real_values_equalCheckBox_3.Position = [1143 676 124 22];
            app.Real_values_equalCheckBox_3.Value = true;

            % Create Imag_values_opposCheckBox_3
            app.Imag_values_opposCheckBox_3 = uicheckbox(app.Tab2);
            app.Imag_values_opposCheckBox_3.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.Imag_values_opposCheckBox_3.Text = 'Imag_values_oppos';
            app.Imag_values_opposCheckBox_3.Position = [1437 667 129 22];
            app.Imag_values_opposCheckBox_3.Value = true;

            % Create realKe1Label
            app.realKe1Label = uilabel(app.Tab2);
            app.realKe1Label.HorizontalAlignment = 'right';
            app.realKe1Label.Position = [602 627 63 22];
            app.realKe1Label.Text = 'real(Ke(1))';

            % Create realKe1EditField
            app.realKe1EditField = uieditfield(app.Tab2, 'numeric');
            app.realKe1EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.realKe1EditField.Editable = 'off';
            app.realKe1EditField.Position = [680 627 100 22];

            % Create realKe2EditFieldLabel
            app.realKe2EditFieldLabel = uilabel(app.Tab2);
            app.realKe2EditFieldLabel.HorizontalAlignment = 'right';
            app.realKe2EditFieldLabel.Position = [602 596 63 22];
            app.realKe2EditFieldLabel.Text = 'real(Ke(2))';

            % Create realKe2EditField
            app.realKe2EditField = uieditfield(app.Tab2, 'numeric');
            app.realKe2EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.realKe2EditField.Editable = 'off';
            app.realKe2EditField.Position = [680 596 100 22];

            % Create realKe3EditFieldLabel
            app.realKe3EditFieldLabel = uilabel(app.Tab2);
            app.realKe3EditFieldLabel.HorizontalAlignment = 'right';
            app.realKe3EditFieldLabel.Position = [602 565 63 22];
            app.realKe3EditFieldLabel.Text = 'real(Ke(3))';

            % Create realKe3EditField
            app.realKe3EditField = uieditfield(app.Tab2, 'numeric');
            app.realKe3EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.realKe3EditField.Editable = 'off';
            app.realKe3EditField.Position = [680 565 100 22];

            % Create realKe4EditFieldLabel
            app.realKe4EditFieldLabel = uilabel(app.Tab2);
            app.realKe4EditFieldLabel.HorizontalAlignment = 'right';
            app.realKe4EditFieldLabel.Position = [602 535 63 22];
            app.realKe4EditFieldLabel.Text = 'real(Ke(4))';

            % Create realKe4EditField
            app.realKe4EditField = uieditfield(app.Tab2, 'numeric');
            app.realKe4EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.realKe4EditField.Editable = 'off';
            app.realKe4EditField.Position = [680 535 100 22];

            % Create text_modeCheckBox_2
            app.text_modeCheckBox_2 = uicheckbox(app.Tab2);
            app.text_modeCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.text_modeCheckBox_2.Text = 'text_mode';
            app.text_modeCheckBox_2.Position = [1060 637 78 22];

            % Create imagKe1EditFieldLabel
            app.imagKe1EditFieldLabel = uilabel(app.Tab2);
            app.imagKe1EditFieldLabel.HorizontalAlignment = 'right';
            app.imagKe1EditFieldLabel.Position = [813 627 69 22];
            app.imagKe1EditFieldLabel.Text = 'imag(Ke(1))';

            % Create imagKe1EditField
            app.imagKe1EditField = uieditfield(app.Tab2, 'numeric');
            app.imagKe1EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.imagKe1EditField.Editable = 'off';
            app.imagKe1EditField.Position = [897 627 100 22];

            % Create imagKe2EditFieldLabel
            app.imagKe2EditFieldLabel = uilabel(app.Tab2);
            app.imagKe2EditFieldLabel.HorizontalAlignment = 'right';
            app.imagKe2EditFieldLabel.Position = [813 596 69 22];
            app.imagKe2EditFieldLabel.Text = 'imag(Ke(2))';

            % Create imagKe2EditField
            app.imagKe2EditField = uieditfield(app.Tab2, 'numeric');
            app.imagKe2EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.imagKe2EditField.Editable = 'off';
            app.imagKe2EditField.Position = [897 596 100 22];

            % Create imagKe3EditFieldLabel
            app.imagKe3EditFieldLabel = uilabel(app.Tab2);
            app.imagKe3EditFieldLabel.HorizontalAlignment = 'right';
            app.imagKe3EditFieldLabel.Position = [813 565 69 22];
            app.imagKe3EditFieldLabel.Text = 'imag(Ke(3))';

            % Create imagKe3EditField
            app.imagKe3EditField = uieditfield(app.Tab2, 'numeric');
            app.imagKe3EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.imagKe3EditField.Editable = 'off';
            app.imagKe3EditField.Position = [897 565 100 22];

            % Create imagKe4EditFieldLabel
            app.imagKe4EditFieldLabel = uilabel(app.Tab2);
            app.imagKe4EditFieldLabel.HorizontalAlignment = 'right';
            app.imagKe4EditFieldLabel.Position = [813 535 69 22];
            app.imagKe4EditFieldLabel.Text = 'imag(Ke(4))';

            % Create imagKe4EditField
            app.imagKe4EditField = uieditfield(app.Tab2, 'numeric');
            app.imagKe4EditField.ValueChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.imagKe4EditField.Editable = 'off';
            app.imagKe4EditField.Position = [897 535 100 22];

            % Create UIAxes_6
            app.UIAxes_6 = uiaxes(app.Tab2);
            title(app.UIAxes_6, 'Observer pools on complex plane')
            xlabel(app.UIAxes_6, 'Re')
            ylabel(app.UIAxes_6, 'Im')
            app.UIAxes_6.PlotBoxAspectRatio = [1 0.5625 0.5625];
            app.UIAxes_6.XLim = [-20 20];
            app.UIAxes_6.YLim = [-10 10];
            app.UIAxes_6.XAxisLocation = 'origin';
            app.UIAxes_6.YAxisLocation = 'origin';
            app.UIAxes_6.YGrid = 'on';
            app.UIAxes_6.Position = [121 653 410 250];
        end
    end

    methods (Access = public)

        % Construct app
        function app = PendulumControl

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end