*** Settings ***
Library           AppiumLibrary
Library           Collections
Library           OperatingSystem
Library           String
Library           RequestsLibrary
Library           ExcelLibrary

*** Variables ***
${DOC_ID}         C:\\Users\\DSS\\Desktop
${REMOTE_URL}     127.0.0.1:4735/wd/hub
${Dashboard_Page_Visible}    ${EMPTY}
${Dashboard_Page_Status}    ${EMPTY}
${Medical_Page_Visible}    ${EMPTY}
${Medical_Page_Status}    ${EMPTY}
${Random_Medication_List}    ${EMPTY}
${Random_Diet_List}    ${EMPTY}
${Random_Activity}    ${EMPTY}

*** Keywords ***
Create_Excel_Report
    [Arguments]    ${Row_id1}    ${Row_Data_List1}    ${Row_id2}    ${Row_Data_List2}
    Create Excel Document    ${DOC_ID}
    Write Excel Row    ${Row_id1}    ${Row_Data_List1}    0    Sheet
    Write Excel Row    ${Row_id2}    ${Row_Data_List2}    0    Sheet
    Save Excel Document    C:\\Users\\DSS\\Desktop\\Report.xlsx
    Close All Excel Documents
    Log    Created successfully!!!!
    Sleep    3s

Append_Excel_Report
    [Arguments]    ${Row_id1}    ${Row_Data_List1}
    Open Excel Document    C:\\Users\\DSS\\Desktop\\Report.xlsx    doc_id=${DOC_ID}
    Write Excel Row    ${Row_id1}    ${Row_Data_List1}    0    Sheet
    Save Excel Document    C:\\Users\\DSS\\Desktop\\Report.xlsx
    Close All Excel Documents
    Log    Append Successfully!!!!!!!
    Sleep    3s

User_Login
    Open Application    ${REMOTE_URL}    deviceName=192.168.252.101:5555    platformName=Android    noReset=true    automationName=appium    appActivity=com.deemsysinc.telemedicinecustomer.authentication.LoginActivity    appPackage=com.deemsysinc.telemedicinecustomer
    Sleep    8s
    Input Text    com.deemsysinc.telemedicinecustomer:id/login_emailText    Sethu7895@gmail.com
    Input Text    com.deemsysinc.telemedicinecustomer:id/login_passwordText    Sethu@123
    Click Element    com.deemsysinc.telemedicinecustomer:id/login
    Sleep    5s
    Log    Successfully login!!!!
    Sleep    2s
    ${Dashboard_Visible}    Run Keyword And Return Status    Element Should Be Visible    //android.widget.ImageButton[@content-desc='Open navigation drawer']
    Run Keyword If    '${Dashboard_Visible}' == 'True'    Set Global Variable    ${Dashboard_Page_Visible}    "It redirected to the Medical page."
    ...    ELSE IF    '${Dashboard_Visible}' == 'False'    Set Global Variable    ${Dashboard_Page_Visible}    "It did not redirected to the "Medical" page."
    Run Keyword If    '${Dashboard_Visible}' == 'True'    Set Global Variable    ${Dashboard_Page_Status}    Pass
    ...    ELSE IF    '${Dashboard_Visible}' == 'False'    Set Global Variable    ${Dashboard_Page_Status}    Failed
    Sleep    3s

Medical_Page
    Click Element    //android.widget.ImageButton[@content-desc='Open navigation drawer']
    Sleep    4s
    Click Element    com.deemsysinc.telemedicinecustomer:id/edit_user_profile
    Sleep    4s
    Click Element    com.deemsysinc.telemedicinecustomer:id/navigation_medical    ##Click Medical
    Sleep    5s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView[1]
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It redirected to the Medical page."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not redirected to the "Medical" page."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Medication_Add
    [Arguments]    ${Medication_Id}
    Click Element    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${Medication_Id}]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView[2]
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It should show the are you taking any medicine at the moment popup."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not show any popup."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Medication_Add_Medication
    Click Element    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    com.deemsysinc.telemedicinecustomer:id/done
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It redirected to the add a medication page."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not redirected to the "Add a Medication" page."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Medication_Back
    Click Element    //android.widget.ImageButton[@content-desc="Navigate up"]
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView[2]
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It redirected to the Medical page."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not redirected to the "Medical" page."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Medication_List
    [Arguments]    ${Medical_Id}    ${Input_Text}
    Click Element    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${Medical_Id}]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView[2]
    Sleep    2s
    Click Element    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]
    Sleep    2s
    Input Text    com.deemsysinc.telemedicinecustomer:id/add_terms    ${Input_Text}
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Visible}    "It shoud show the medication list."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not show the medication list."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Medication_Done
    Sleep    2s
    ${List_Length}    Get Matching Xpath Count    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView    #Find Visible list count
    ${Random_List}=    Evaluate    random.randint(1,${List_Length})    #Generate random From list
    Click Element    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${Random_List}]/android.widget.LinearLayout/android.widget.TextView    #Click the Random list
    Sleep    2s
    Click Element    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${Random_List}]/android.widget.LinearLayout/android.widget.TextView    #Click the Random list
    Sleep    2s
    ${Random_Medication_List}    Get Text    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${Random_List}]/android.widget.LinearLayout/android.widget.TextView
    Set Global Variable    ${Random_Medication_List}
    Click Element    com.deemsysinc.telemedicinecustomer:id/done    #Done button
    Sleep    4s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView[2]
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It should successfully add the medication and redirected to the Medical page."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not redirected to the "Medical" page."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Medication_Save
    Sleep    3s
    Click Element    com.deemsysinc.telemedicinecustomer:id/medical_save
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //android.widget.TextView[@resource-id='com.deemsysinc.telemedicinecustomer:id/tvText']
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Visible}    "Updated Successfully!!!"
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "Page does not saved properly."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Lifestyle_Page
    Click Element    //android.widget.FrameLayout[@content-desc="Lifestyle"]    #Click lifestyle
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.TextView[1]
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It redirected to the Lifestyle page."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not redirected to the "Lifestyle" page."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Add_Diet
    Sleep    2s
    Click Element    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.TextView[2]
    Sleep    2s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It should show the are you taking any diet at the moment popup."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not show any popup."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Diet_Add_Diet
    Click Element    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    com.deemsysinc.telemedicinecustomer:id/done
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It redirected to the add diet details page."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not redirected to the "Add diet details" page."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Diet_Back
    Click Element    //android.widget.ImageButton[@content-desc="Navigate up"]
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.TextView[1]
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It redirected to the Medical page."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not redirected to the "Medical" page."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Diet_List
    [Arguments]    ${Input_Text}
    Click Element    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.TextView[2]
    Sleep    2s
    Click Element    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]
    Sleep    2s
    Input Text    com.deemsysinc.telemedicinecustomer:id/add_terms    ${Input_Text}
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.TextView
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Visible}    "It shoud show the Diet list."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not show the diet list."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Diet_Done
    Sleep    2s
    ${List_Length}    Get Matching Xpath Count    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView    #Find Visible list count
    ${Random_List}=    Evaluate    random.randint(1,${List_Length})    #Generate random From list
    Click Element    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${Random_List}]/android.widget.LinearLayout/android.widget.TextView    #Click the Random list
    Sleep    2s
    Click Element    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${Random_List}]/android.widget.LinearLayout/android.widget.TextView    #Click the Random list
    Sleep    2s
    ${Random_Diet_List}    Get Text    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[${Random_List}]/android.widget.LinearLayout/android.widget.TextView
    Set Global Variable    ${Random_Diet_List}
    Click Element    com.deemsysinc.telemedicinecustomer:id/done    #Done button
    Sleep    4s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.TextView[1]
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It should successfully add the diet and redirected to the Lifestyle page."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not save and redirected to the "Lifedtyle" page."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Diet_Save
    sleep    3s
    Click Element    com.deemsysinc.telemedicinecustomer:id/lifestyle_save
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //android.widget.TextView[@resource-id='com.deemsysinc.telemedicinecustomer:id/tvText']
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Visible}    "Updated Successfully!!!"
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "Page does not saved properly."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Activity_Popup
    Sleep    2s
    Click Element    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[4]/android.widget.Spinner/android.widget.TextView
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It should show the Activity Level popup."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not show any popup."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s

Select_Random_Activity
    Sleep    3s
    ${Activity_Count}    Get Matching Xpath Count    //hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView
    ${Random_Activity_Count}    Evaluate    random.randint(1,${Activity_Count})
    ${Random_Activity}    Get Text    //hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[${Random_Activity_Count}]
    Set Global Variable    ${Random_Activity}
    Click Element    //hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[${Random_Activity_Count}]
    Sleep    3s
    ${Medical_Visible}    Run Keyword And Return Status    Element Should Be Visible    //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.TextView[1]
    Run Keyword If    '${Medical_Visible}' == 'True'    Set Global Variable    ${Medical_Page_Visible}    "It should successfully add the Activity and redirected to the Lifestyle page."
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Visible}    "It did not redirected to the "Lifestyle" page."
    Run Keyword If    '${Medical_Visible}'=='True'    Set Global Variable    ${Medical_Page_Status}    Pass
    ...    ELSE IF    '${Medical_Visible}' == 'False'    Set Global Variable    ${Medical_Page_Status}    Failed
    Sleep    3s
