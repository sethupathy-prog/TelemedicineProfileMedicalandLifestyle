*** Settings ***
Resource          Resource/User_Profile_Resource.robot

*** Variables ***
${Login}          It should login successful and redirected to the dashboard page.
${Medical}        It should redirect to the "Profile medical" page.
${Medical_Result}    "It should successfully add the medication and redirected to the Medical page."
${Lifestyle_Result}    "It should successfully add the diet and redirected to the Lifestyle page."
${Lifestyle1_Result}    "It should successfully add the activity and redirected to the Lifestyle page."

*** Test Cases ***
Login
    [Documentation]    *To check whether the user account is login or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    User_Login
    Set Test Message    ${Dashboard_Page_Visible}
    @{Heading}    Create List    TC ID    TC NAME    TC DESCRIPTION    TEST STEP    TEST DATA    EXPECTED RESULT    ACTUAL RESULT    STATUS
    @{Login_List}    Create List    TC_001    [Login]    To check whether it login through the user credential or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button    Click the "Login" button.    ${Login}    ${Dashboard_Page_Visible}    ${Dashboard_Page_Status}
    Create_Excel_Report    1    ${Heading}    2    ${Login_List}

Medical_Page
    [Documentation]    *To check whether it redirect to the "Medical Page" or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon/n6.Click the "Medical" button
    Medical_Page
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_090    [Medical]    To check whether it redirect to the "Medical" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button    Click the "Medical" button.    ${Medical}    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    3    ${Medical_List}

Current_Medication_Add
    [Documentation]    *To check whether it redirect to the "are you taking any medicine at the moment" popup or not*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    Medication_Add    1
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_091    [Add]    To check whether it shows the "are you taking any medicine at the moment?" popup or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication    Click the "Add" button.    It should show the "Are you taking any medicine at the moment" popup.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    4    ${Medical_List}

Current_Medication_Add_Medication
    [Documentation]    *To check whether it redirect to the "Add a Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    ...    8.Click the "Add a Medication" button
    Medication_Add_Medication
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_092    [Add a Medication]    To check whether it redirect to the "Add a Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication\n8.Click the "Add a Medication" radio button    Click the "Add a Medication" radio button.    It should redirect to the "Add a Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    5    ${Medical_List}

Current_Medication_Back
    [Documentation]    *To check whether it redirect to the "Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the current medication
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    Medication_Back
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_093    [Back]    To check whether it redirect to the "Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon    Click the "Back" icon.    It should redirect to the "Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    6    ${Medical_List}

Current_Medication_List
    [Documentation]    *To check whether it shows the medication lists or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the current medication
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the current medication
    ...    11.Click the "Add a Medication" radio button
    ...    12.Enter "para" into the "Add a Medication" text box
    Medication_List    1    para
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_094    [Medication List]    To check whether it shows the medication lists or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the current medication\n11.Click the "Add a Medication" radio button\n12.Enter "para" into the "Add a Medication" text box    Enter the Text    It should show the medication list.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    7    ${Medical_List}

Current_Medication_Done
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the current medication
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the current medication
    ...    11.Click the "Add a Medication" radio button
    ...    12.Enter "para" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    Medication_Done
    Set Test Message    Added Medication from the list is: ${Random_Medication_List} | Expected Result: ${Medical_Result} | Actual Result: ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_095    [Done]    To check whether it successfully add the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the current medication\n11.Click the "Add a Medication" radio button\n12.Enter "para" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button    Click the "Done" button.Added medication from the list is:${Random_Medication_List}    "It should successfully add the medication and redirected to the Medical page."    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    8    ${Medical_List}

Current_Medication_Save
    [Documentation]    *To check whether it successfully save the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the current medication
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the current medication
    ...    11.Click the "Add a Medication" radio button
    ...    12.Enter "para" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    ...    15.Click the "Save" button
    Medication_Save
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_096    [Back]    To check whether it successfully save the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the current medication\n11.Click the "Add a Medication" radio button\n12.Enter "para" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button\n15.Click the "Save" button    Click the "Save" button.    It should successfully save the medication.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    9    ${Medical_List}

Past_Medication_Add
    [Documentation]    *To check whether it redirect to the "are you taking any medicine at the moment" popup or not*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    Medication_Add    2
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_097    [Add]    To check whether it shows the "are you taking any medicine at the moment?" popup or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication    Click the "Add" button.    It should show the "Are you taking any medicine at the moment" popup.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    10    ${Medical_List}

Past_Medication_Add_Medication
    [Documentation]    *To check whether it redirect to the "Add a Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    ...    8.Click the "Add a Medication" button
    Medication_Add_Medication
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_098    [Add a Medication]    To check whether it redirect to the "Add a Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the past medication\n8.Click the "Add a Medication" radio button    Click the "Add a Medication" radio button.    It should redirect to the "Add a Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    11    ${Medical_List}

Past_Medication_Back
    [Documentation]    *To check whether it redirect to the "Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the past medication
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    Medication_Back
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_099    [Back]    To check whether it redirect to the "Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the past medication\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon    Click the "Back" icon.    It should redirect to the "Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    12    ${Medical_List}

Past_Medication_List
    [Documentation]    *To check whether it shows the medication lists or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the past medication
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the past medication
    ...    11.Click the "Add a Medication" radio button
    ...    12.Enter "para" into the "Add a Medication" text box
    Medication_List    2    para
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_100    [Medication List]    To check whether it shows the medication lists or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the past medication\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the past medication\n11.Click the "Add a Medication" radio button\n12.Enter "para" into the "Add a Medication" text box    Enter the Text    It should show the medication list.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    13    ${Medical_List}

Past_Medication_Done
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the past medication
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the past medication
    ...    11.Click the "Add a Medication" radio button
    ...    12.Enter "para" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    Medication_Done
    Set Test Message    Added Medication from the list is: ${Random_Medication_List} | Expected Result: ${Medical_Result} | Actual Result: ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_101    [Done]    To check whether it successfully add the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the past medication\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the past medication\n11.Click the "Add a Medication" radio button\n12.Enter "para" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button    Click the "Done" button.Added medication from the list is:${Random_Medication_List}    "It should successfully add the medication and redirected to the Medical page."    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    14    ${Medical_List}

Past_Medication_Save
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the past medication
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the past medication
    ...    11.Click the "Add a Medication" radio button
    ...    12.Enter "para" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    ...    15.Click the "Save" button
    Medication_Save
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_102    [Back]    To check whether it successfully save the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the past medication\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the past medication\n11.Click the "Add a Medication" radio button\n12.Enter "para" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button\n15.Click the "Save" button    Click the "Save" button.    It should successfully save the medication.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    15    ${Medical_List}

Surgery_Add
    [Documentation]    *To check whether it redirect to the "are you taking any medicine at the moment" popup or not*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    Medication_Add    3
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_103    [Add]    To check whether it shows the "are you taking any medicine at the moment?" popup or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication    Click the "Add" button.    It should show the "Are you taking any medicine at the moment" popup.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    16    ${Medical_List}

Surgery_Add_Medication
    [Documentation]    *To check whether it redirect to the "Add a Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    ...    8.Click the "Add a Surgery" button
    Medication_Add_Medication
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_104    [Add a Surgery]    To check whether it redirect to the "Add a Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the surgery\n8.Click the "Add a Medication" radio button    Click the "Add a Surgery" radio button.    It should redirect to the "Add a Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    17    ${Medical_List}

Surgery_Back
    [Documentation]    *To check whether it redirect to the "Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the surgery
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    Medication_Back
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_105    [Back]    To check whether it redirect to the "Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the surgery\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon    Click the "Back" icon.    It should redirect to the "Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    18    ${Medical_List}

Surgery_List
    [Documentation]    *To check whether it shows the medication lists or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the surgery
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the surgery
    ...    11.Click the "Add a Surgery" radio button
    ...    12.Enter "surgery" into the "Add a Medication" text box
    Medication_List    3    surgery
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_106    [Medication List]    To check whether it shows the medication lists or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the surgery\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the surgery\n11.Click the "Add a Surgery" radio button\n12.Enter "surgery" into the "Add a Medication" text box    Enter the Text    It should show the medication list.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    19    ${Medical_List}

Surgery_Done
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the surgery
    ...    8.Click the "Add a Surgery" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the surgery
    ...    11.Click the "Add a Surgery" radio button
    ...    12.Enter "surgery" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    Medication_Done
    Set Test Message    Added Medication from the list is: ${Random_Medication_List} | Expected Result: ${Medical_Result} | Actual Result: ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_107    [Done]    To check whether it successfully add the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the surgery\n8.Click the "Add a Surgery" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the surgery\n11.Click the "Add a Surgery" radio button\n12.Enter "surgery" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button    Click the "Done" button.Added medication from the list is:${Random_Medication_List}    "It should successfully add the medication and redirected to the Medical page."    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    20    ${Medical_List}

Surgery_Save
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the surgery
    ...    8.Click the "Add a Surgery" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the surgery
    ...    11.Click the "Add a Surgery" radio button
    ...    12.Enter "surgery" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    ...    15.Click the "Save" button
    Medication_Save
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_108    [Back]    To check whether it successfully save the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the surgery\n8.Click the "Add a Surgery" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the surgery\n11.Click the "Add a Surgery" radio button\n12.Enter "surgery" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button\n15.Click the "Save" button    Click the "Save" button.    It should successfully save the medication.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    21    ${Medical_List}

Chronic_Diseases_Add
    [Documentation]    *To check whether it redirect to the "are you taking any medicine at the moment" popup or not*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    Medication_Add    4
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_109    [Add]    To check whether it shows the "are you taking any medicine at the moment?" popup or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication    Click the "Add" button.    It should show the "Are you taking any medicine at the moment" popup.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    22    ${Medical_List}

Chronic_Diseases_Add_Medication
    [Documentation]    *To check whether it redirect to the "Add a Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    ...    8.Click the "Add a Disease" button
    Medication_Add_Medication
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_110    [Add a Disease]    To check whether it redirect to the "Add a Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the Chronic Diseases\n8.Click the "Add a Medication" radio button    Click the "Add a Chronic Diseases" radio button.    It should redirect to the "Add a Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    23    ${Medical_List}

Chronic_Diseases_Back
    [Documentation]    *To check whether it redirect to the "Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the chronic diseases
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    Medication_Back
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_111    [Back]    To check whether it redirect to the "Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the chronic disease\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon    Click the "Back" icon.    It should redirect to the "Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    24    ${Medical_List}

Chronic_Diseases_List
    [Documentation]    *To check whether it shows the medication lists or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the chronic disease
    ...    8.Click the "Add an Illness" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the chronic disease
    ...    11.Click the "Add an Illness" radio button
    ...    12.Enter "disease" into the "Add a Medication" text box
    Medication_List    4    disease
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_112    [Medication List]    To check whether it shows the medication lists or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the chronic disease\n8.Click the "Add an Illness" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the chronic disease\n11.Click the "Add an Illness" radio button\n12.Enter "disease" into the "Add a Medication" text box    Enter the Text    It should show the medication list.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    25    ${Medical_List}

Chronic_Diseases_Done
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the chronic diseases
    ...    8.Click the "Add an Illness" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the cchronic diseases
    ...    11.Click the "Add a Medication" radio button
    ...    12.Enter "disease" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    Medication_Done
    Set Test Message    Added Medication from the list is: ${Random_Medication_List} | Expected Result: ${Medical_Result} | Actual Result: ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_113    [Done]    To check whether it successfully add the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the chronic diseases\n8.Click the "Add an Illness" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the cchronic diseases\n11.Click the "Add a Medication" radio button\n12.Enter "disease" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button    Click the "Done" button.Added medication from the list is:${Random_Medication_List}    "It should successfully add the medication and redirected to the Medical page."    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    26    ${Medical_List}

Chronic_Diseases_Save
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the chronic diseases
    ...    8.Click the "Add an Illness" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the cchronic diseases
    ...    11.Click the "Add a Medication" radio button
    ...    12.Enter "disease" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    ...    15.Click the "Save" button
    Medication_Save
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_114    [Back]    To check whether it successfully save the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the chronic diseases\n8.Click the "Add an Illness" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the cchronic diseases\n11.Click the "Add a Medication" radio button\n12.Enter "disease" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button\n15.Click the "Save" button    Click the "Save" button.    It should successfully save the medication.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    27    ${Medical_List}

Injuries_Add
    [Documentation]    *To check whether it redirect to the "are you taking any medicine at the moment" popup or not*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    Medication_Add    5
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_115    [Add]    To check whether it shows the "are you taking any medicine at the moment?" popup or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication    Click the "Add" button.    It should show the "Are you taking any medicine at the moment" popup.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    28    ${Medical_List}

Injuries_Add_Medication
    [Documentation]    *To check whether it redirect to the "Add a Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    ...    8.Click the "Add an Injury" button
    Medication_Add_Medication
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_116    [Add an Injury]    To check whether it redirect to the "Add a Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the injuries\n8.Click the "Add an Injury" radio button    Click the "Add a Medication" radio button.    It should redirect to the "Add a Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    29    ${Medical_List}

Injuries_Back
    [Documentation]    *To check whether it redirect to the "Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the injuries
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    Medication_Back
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_117    [Back]    To check whether it redirect to the "Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the injuries\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon    Click the "Back" icon.    It should redirect to the "Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    30    ${Medical_List}

Injuries_List
    [Documentation]    *To check whether it shows the medication lists or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the injuries
    ...    8.Click the "Add an injury" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the injury
    ...    11.Click the "Add an Injury" radio button
    ...    12.Enter "injury" into the "Add an Injury" text box
    Medication_List    5    injury
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_118    [Medication List]    To check whether it shows the medication lists or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the injuries\n8.Click the "Add an injury" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the injury\n11.Click the "Add an Injury" radio button\n12.Enter "injury" into the "Add an Injury" text box    Enter the Text    It should show the medication list.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    31    ${Medical_List}

Injuries_Done
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the injury
    ...    8.Click the "Add an Injury" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the injury
    ...    11.Click the "Add an Injury" radio button
    ...    12.Enter "injury" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    Medication_Done
    Set Test Message    Added Medication from the list is: ${Random_Medication_List} | Expected Result: ${Medical_Result} | Actual Result: ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_119    [Done]    To check whether it successfully add the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the injury\n8.Click the "Add an Injury" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the injury\n11.Click the "Add an Injury" radio button\n12.Enter "injury" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button    Click the "Done" button.Added medication from the list is:${Random_Medication_List}    "It should successfully add the medication and redirected to the Medical page."    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    32    ${Medical_List}

Injuries_Save
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the injury
    ...    8.Click the "Add an Injury" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the injury
    ...    11.Click the "Add an Injury" radio button
    ...    12.Enter "injury" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    ...    15.Click the "Save" button
    Medication_Save
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_120    [Back]    To check whether it successfully save the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the injury\n8.Click the "Add an Injury" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the injury\n11.Click the "Add an Injury" radio button\n12.Enter "injury" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button\n15.Click the "Save" button    Click the "Save" button.    It should successfully save the medication.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    33    ${Medical_List}

Allergies_Add
    [Documentation]    *To check whether it redirect to the "are you taking any medicine at the moment" popup or not*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    Medication_Add    6
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_121    [Add]    To check whether it shows the "are you taking any medicine at the moment?" popup or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the current medication    Click the "Add" button.    It should show the "Are you taking any medicine at the moment" popup.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    34    ${Medical_List}

Allergies_Add_Medication
    [Documentation]    *To check whether it redirect to the "Add a Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button
    ...    8.Click the "Add an Allergy" button
    Medication_Add_Medication
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_122    [Add an Allergy]    To check whether it redirect to the "Add a Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the allergies\n8.Click the "Add a Allergy" radio button    Click the "Add a Medication" radio button.    It should redirect to the "Add a Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    35    ${Medical_List}

Allergy_Back
    [Documentation]    *To check whether it redirect to the "Medication" page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the allergies
    ...    8.Click the "Add a Medication" radio button
    ...    9.Click the "Back" Icon
    Medication_Back
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_123    [Back]    To check whether it redirect to the "Medication" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the allergy\n8.Click the "Add a Medication" radio button\n9.Click the "Back" Icon    Click the "Back" icon.    It should redirect to the "Medication" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    36    ${Medical_List}

Allergy_List
    [Documentation]    *To check whether it shows the medication lists or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the allergy
    ...    8.Click the "Add an Allergy" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the allergy
    ...    11.Click the "Add an allergy" radio button
    ...    12.Enter "allergy" into the "Add a Medication" text box
    Medication_List    6    allergy
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_124    [Medication List]    To check whether it shows the medication lists or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the allergy\n8.Click the "Add an Allergy" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the allergy\n11.Click the "Add an allergy" radio button\n12.Enter "allergy" into the "Add a Medication" text box    Enter the Text    It should show the medication list.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    37    ${Medical_List}

Allergy_Done
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the in allergy
    ...    8.Click the "Add an Allergy" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the allergy
    ...    11.Click the "Add an allergy" radio button
    ...    12.Enter "allergy" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    Medication_Done
    Set Test Message    Added Medication from the list is: ${Random_Medication_List} | Expected Result: ${Medical_Result} | Actual Result: ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_125    [Done]    To check whether it successfully add the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the in allergy\n8.Click the "Add an Allergy" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the allergy\n11.Click the "Add an allergy" radio button\n12.Enter "allergy" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button    Click the "Done" button.Added medication from the list is:${Random_Medication_List}    "It should successfully add the medication and redirected to the Medical page."    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    38    ${Medical_List}

Allergy_Save
    [Documentation]    *To check whether it successfully add the medication or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Medical" button
    ...    7.Click the "Add" button in the in allergy
    ...    8.Click the "Add an Allergy" radio button
    ...    9.Click the "Back" Icon
    ...    10.Click the "Add" button in the allergy
    ...    11.Click the "Add an allergy" radio button
    ...    12.Enter "allergy" into the "Add a Medication" text box
    ...    13.Select the medicine from the list
    ...    14.Click the "Done" button
    ...    15.Click the "Save" button
    Medication_Save
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_126    [Back]    To check whether it successfully save the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Medical" button\n7.Click the "Add" button in the in allergy\n8.Click the "Add an Allergy" radio button\n9.Click the "Back" Icon\n10.Click the "Add" button in the allergy\n11.Click the "Add an allergy" radio button\n12.Enter "allergy" into the "Add a Medication" text box\n13.Select the medicine from the list\n14.Click the "Done" button\n15.Click the "Save" button    Click the "Save" button.    It should successfully save the medication.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    39    ${Medical_List}

Lifestyle_Page
    [Documentation]    *To check whether it redirect to the "Lifestyle Page" or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    Lifestyle_Page
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_127    [Lifestyle]    To check whether it redirect to the "Lifestyle" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button    Click the "Lifestyle" button.    It should redirect to the "Lifestyle" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    40    ${Medical_List}

Diet_Add
    [Documentation]    *To check whether it opens the Are you taking any diet at the moment popup or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    ...    7.Click the "Diet" textbox
    Add_Diet
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_128    [Diet]    To check whether it shows the "are you taking any diet at the moment?" popup or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button\n7.Click the "Diet" textbox    Click the "Diet" textbox.    It should show the "Are you taking any diet at the moment" popup.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    41    ${Medical_List}

Diet_Add_Diet
    [Documentation]    *To check whether it redirect to the add diet details page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    ...    7.Click the "Diet" textbox
    ...    8.Click the "Add diet details" check box
    Diet_Add_Diet
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_129    [Add a diet]    To check whether it redirect to the "Add diet details" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button\n7.Click the "Diet" textbox\n8.Click the "Add a Medication" radio button    Click the "Diet" text box    It should redirect to the "Add diet details" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    42    ${Medical_List}

Diet_Back
    [Documentation]    *To check whether it redirect to the back page or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    ...    7.Click the "Diet" textbox
    ...    8.Click the "Add diet details" check box
    ...    9.Click the "Back" icon
    Diet_Back
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_130    [Back]    To check whether it redirect to the "Lifestyle" page or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu" \n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button\n7.Click the "Diet" text box\n8.Click the "Add diet" checkbox\n9.Click the "Back" Icon    Click the "Back" icon.    It should redirect to the "Lifestyle" page.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    43    ${Medical_List}

Diet_List
    [Documentation]    *To check whether it shows the diet list or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    ...    7.Click the "Diet" textbox
    ...    8.Click the "Add diet details" check box
    ...    9.Click the "Back" icon
    ...    10. Click the "Diet" text box and "Add diet details" checkbox
    ...    11.Enter text into the "Add diet details" text box
    Diet_List    diet
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_131    [Diet List]    To check whether it shows the Diet lists or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu"\n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button\n7.Click the "Diet" textbox\n8.Click the "Add diet details" check box\n9.Click the "Back" icon\n10. Click the "Diet" text box and "Add diet details" checkbox\n11.Enter text into the "Add diet details" text box    Enter the Text    It should show the diet list.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    44    ${Medical_List}

Diet_Done
    [Documentation]    *To check whether it successfully add the diet or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    ...    7.Click the "Diet" textbox
    ...    8.Click the "Add diet details" check box
    ...    9.Click the "Back" icon
    ...    10. Click the "Diet" text box and "Add diet details" checkbox
    ...    11.Enter text into the "Add diet details" text box
    ...    12.Select a random diet
    ...    13. Click the "Done" button
    Diet_Done
    Set Test Message    Added diet from the list is: ${Random_Diet_List} | Expected Result: ${Lifestyle_Result} | Actual Result: ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_0132    [Done]    To check whether it successfully add the diet or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu"\n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button\n7.Click the "Diet" textbox\n8.Click the "Add diet details" check box\n9.Click the "Back" icon\n10. Click the "Diet" text box and "Add diet details" checkbox\n11.Enter text into the "Add diet details" text box\n12.Select a random diet\n13. Click the "Done" button    Click the "Done" button.Added diet from the list is:${Random_Diet_List}    "It should successfully add the diet and redirected to the Lifedtyle page."    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    45    ${Medical_List}

Diet_Save
    [Documentation]    *To check whether it save the selected diet or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    ...    7.Click the "Diet" textbox
    ...    8.Click the "Add diet details" check box
    ...    9.Click the "Back" icon
    ...    10. Click the "Diet" text box and "Add diet details" checkbox
    ...    11.Enter text into the "Add diet details" text box
    ...    12.Select a random diet
    ...    13. Click the "Done" button
    ...    14. Click the "Save" button
    Diet_Save
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_133    [Save]    To check whether it successfully save the lifestyle or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu"\n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button\n7.Click the "Diet" textbox\n8.Click the "Add diet details" check box\n9.Click the "Back" icon\n10. Click the "Diet" text box and "Add diet details" checkbox\n11.Enter text into the "Add diet details" text box\n12.Select a random diet\n13. Click the "Done" button\n14. Click the "Save" button    Click the "Save" button.    It should successfully save the Lifestyle.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    46    ${Medical_List}

Activity_Popup
    [Documentation]    *To check whether it opens the Activity popup or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    ...    7.Click the "Activity Level" textbox
    Activity_Popup
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_134    [Back]    To check whether it opens the activity popup or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu"\n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button\n7.Click the "Activity Level" textbox    Click the "Activity Level" text box.    It should open the activity popup.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    47    ${Medical_List}

Select_Random_Activity
    [Documentation]    *To check whether it select the random activity from the list or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    ...    7.Click the "Activity Level" textbox
    ...    8.Select the random activity
    Select_Random_Activity
    Set Test Message    Added activity from the list is: ${Random_Activity} | Expected Result: ${Lifestyle1_Result} | Actual Result: ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_135    [Select Activity]    To check whether it select the random activity from the list or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu"\n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button\n7.Click the "Activity Level" textbox\n8.Select the random activity    Select the "Random Activity" and the random activity is ${Random_Activity}.    It should successfully select the random activity from the list.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    48    ${Medical_List}

Activity_Save
    [Documentation]    *To check whether it select the random activity from the list or not.*
    ...
    ...    _*STEPS*_
    ...
    ...    1. Open the Telemedicine user android application
    ...    2. Enter the User credential
    ...    3. Click the "Login" button
    ...    4. Click the "Main Menu"
    ...    5. Click the "View and edit profile" icon
    ...    6.Click the "Lifestyle" button
    ...    7.Click the "Activity Level" textbox
    ...    8.Select the random activity
    ...    9.Click the "Save" button
    Diet_Save
    Set Test Message    ${Medical_Page_Visible}
    @{Medical_List}    Create List    TC_136    [Save]    To check whether it successfully save the medication or not.    1. Open the Telemedicine user android application\n2. Enter the User credential\n3. Click the "Login" button\n4. Click the "Main Menu"\n5. Click the "View and edit profile" icon\n6.Click the "Lifestyle" button\n7.Click the "Activity Level" textbox\n8.Select the random activity\n9.Click the "Save" button    Click the "Save" button.    It should successfully save the medication.    ${Medical_Page_Visible}    ${Medical_Page_Status}
    Append_Excel_Report    49    ${Medical_List}
