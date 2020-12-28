-- ----------------------------
-- Table structure for oli_lu_adtype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_adtype`;
CREATE TABLE `oli_lu_adtype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_adtype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_adtype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_adtype
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_adtype` VALUES (41, 13, 'Address to be used for appointment purposes', 'OLI_ADTYPE_APPTPURPOSE', 'This Address is applicable for an appointment such as a paramed exam, signature, or some other appointment.');
INSERT INTO `oli_lu_adtype` VALUES (42, 24, 'Agent customer service address', 'OLI_ADTYPE_AGENTCSA', 'Carrier\'s address to be used by the agent for customer service.');
INSERT INTO `oli_lu_adtype` VALUES (43, 26, 'Billing Mailing', 'OLI_ADTYPE_BILLMAIL', 'The address used to send the bill notices.');
INSERT INTO `oli_lu_adtype` VALUES (44, 14, 'Billing Return To Address', 'OLI_ADTYPE_BILLINGRETTO', '');
INSERT INTO `oli_lu_adtype` VALUES (45, 2, 'Business', 'OLI_ADTYPE_BUS', '');
INSERT INTO `oli_lu_adtype` VALUES (46, 16, 'Business Shipping Address', 'OLI_ADTYPE_BUSSHIPPING', '');
INSERT INTO `oli_lu_adtype` VALUES (47, 18, 'Claim Center', 'OLI_ADTYPE_CLAIMCENTER', 'Indicates that the address is the address for claim inquiries or claim processing submission.');
INSERT INTO `oli_lu_adtype` VALUES (48, 25, 'Client customer service address', 'OLI_ADTYPE_CLIENTCSA', 'Carrier\'s address to be used by the client for customer service.');
INSERT INTO `oli_lu_adtype` VALUES (49, 21, 'Commission Mailing Address', 'OLI_ADTYPE_COMM', '');
INSERT INTO `oli_lu_adtype` VALUES (50, 27, 'Headquarters Address', 'OLI_ADTYPE_HDQRTRS', 'The address of a company or organization\'s headquarters location.');
INSERT INTO `oli_lu_adtype` VALUES (51, 15, 'Individual Work Location', 'OLI_ADTYPE_INDVWORKLOC', '');
INSERT INTO `oli_lu_adtype` VALUES (52, 17, 'Mailing', 'OLI_ADTYPE_MAILING', 'The address to receive all correspondence unless otherwise specified address and can be different from a residential or business address. It can be different from a business shipping address. This address might be a post office box.');
INSERT INTO `oli_lu_adtype` VALUES (53, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_adtype` VALUES (54, 19, 'Overnight Mail Address', 'OLI_ADTYPE_OVERNIGHT', '');
INSERT INTO `oli_lu_adtype` VALUES (55, 20, 'Policy Mailing Address', 'OLI_ADTYPE_POLMAIL', '');
INSERT INTO `oli_lu_adtype` VALUES (56, 12, 'Previous', 'OLI_ADTYPE_PREVIOUS', '');
INSERT INTO `oli_lu_adtype` VALUES (57, 28, 'Previous Business Address', 'OLI_ADTYPE_PREVBUS', '');
INSERT INTO `oli_lu_adtype` VALUES (58, 29, 'Previous Residence Address', 'OLI_ADTYPE_PREVRES', '');
INSERT INTO `oli_lu_adtype` VALUES (59, 30, 'Primary Address', 'OLI_ADTYPE_PRIMARY', 'An address that has been designated as the primary address for contact by mail. May be used when no other information (residence, mailing, billing, etc.) is known.');
INSERT INTO `oli_lu_adtype` VALUES (60, 9, 'Regional Office', 'OLI_ADTYPE_REGOFFICE', '');
INSERT INTO `oli_lu_adtype` VALUES (61, 1, 'Residence', 'OLI_ADTYPE_HOME', '');
INSERT INTO `oli_lu_adtype` VALUES (62, 31, 'Secondary or Alternate Address', 'OLI_ADTYPE_ALTERNATE', 'An address that has been designated as the secondary or alternate address for contact by mail. May be used when no other information (residence, mailing, billing, etc.) is known.');
INSERT INTO `oli_lu_adtype` VALUES (63, 11, 'Temporary', 'OLI_ADTYPE_TEMP', '');
INSERT INTO `oli_lu_adtype` VALUES (64, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_adtype` VALUES (65, 3, 'Vacation', 'OLI_ADTYPE_VAC', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_applicability
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_applicability`;
CREATE TABLE `oli_lu_applicability` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_applicability_value_unique` (`value`),
  UNIQUE KEY `oli_lu_applicability_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_applicability
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_applicability` VALUES (1, 1, 'Applies', 'OLI_APPLICABILITY_POS', 'Known to apply. Same as a YES response to a question.');
INSERT INTO `oli_lu_applicability` VALUES (2, 2, 'Does not apply', 'OLI_APPLICABILITY_NEG', 'Does not apply. Same as a NO response to a question.');
INSERT INTO `oli_lu_applicability` VALUES (3, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_applicability` VALUES (4, 3, 'Stated as Not Known', 'OLI_APPLICABILITY_UNKNOWN', 'May or may not apply. This status is slightly different than \"Unknown.\" If a question was asked and not answered - or if a question was never asked, then the Applicability Response is \"Unknown.\" Use OLI_UNKNOWN (NOT this code) in this case. However, if a question was asked, and a the response provided is \"Unknown\" (or some equivalent), then the answer is known and modeled using this code value.');
INSERT INTO `oli_lu_applicability` VALUES (5, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_attachmenttype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_attachmenttype`;
CREATE TABLE `oli_lu_attachmenttype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_attachmenttype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_attachmenttype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_attachmenttype
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_attachmenttype` VALUES (1, 152, '1035 Cost Basis', 'OLI_ATTACH_COSTBASIS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (2, 153, '1035 Exchange Memorandums', 'OLI_ATTACH_1035EXCHMEMO', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (3, 156, '1035 Letter/Check', 'OLI_ATTACH_1035LETTERCHK', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (4, 154, '1035 Loan Transfer', 'OLI_ATTACH_1035RESQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (5, 155, '1035 Minimum Deposit ResQ Worksheet', 'OLI_ATTACH_1035LOANTRAN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (6, 151, '1035 Paperwork', 'OLI_ATTACH_1035PAPERWK', '1035 Exchange Form, providing details of a replacement involving a transfer of funds between carriers.');
INSERT INTO `oli_lu_attachmenttype` VALUES (7, 211, '1035 Surrender', 'OLI_ATTACH_DISB1035SURR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (8, 157, '1035 Tax Advantage', 'OLI_ATTACH_1035TAXADV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (9, 158, '1099R', 'OLI_ATTACH_TAX1099R', 'Tax Form');
INSERT INTO `oli_lu_attachmenttype` VALUES (10, 159, '5498', 'OLI_ATTACH_TAX5498', 'Tax Form');
INSERT INTO `oli_lu_attachmenttype` VALUES (11, 2550010, 'Account Opening Form', 'OLI_ATTACH_ACCTOPEN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (12, 508, 'Acknowledgement of Arbitration Agreement', 'OLI_ATTACH_ACK_ARB_AGRMNT', 'The acknowledgement of arbitration agreement is used in certain states. It is used to get the client\'s agreement to attempt arbitration.');
INSERT INTO `oli_lu_attachmenttype` VALUES (13, 54, 'ACORD 701 - Life Application Part 1 Form', 'OLI_ATTACH_ACORD701', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (14, 55, 'ACORD 702 - Life Application Part 2 Form', 'OLI_ATTACH_ACORD702', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (15, 56, 'ACORD 703 - Medical Examiner\'s Report Form', 'OLI_ATTACH_ACORD703', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (16, 492, 'ACORD 731 - Additional Unions Schedule', 'OLI_ATTACH_ACORD731', 'Used to identify additional unions that do not fit on the standard 785 basic RFP form.');
INSERT INTO `oli_lu_attachmenttype` VALUES (17, 493, 'ACORD 732 - Additional Locations Schedule', 'OLI_ATTACH_ACORD732', 'Used to identify additional locations that do not fit on the standard 785 basic RFP form.');
INSERT INTO `oli_lu_attachmenttype` VALUES (18, 494, 'ACORD 733 - Covered Affiliates Schedule', 'OLI_ATTACH_ACORD733', 'Used to identify additional covered affiliates that do not fit on the standard 785 basic RFP form.');
INSERT INTO `oli_lu_attachmenttype` VALUES (19, 57, 'ACORD 751 - Authorization to Obtain and Disclose Information Form', 'OLI_ATTACH_ACORD751', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (20, 58, 'ACORD 752 - Certificate of Non-Illustration Form', 'OLI_ATTACH_ACORD752', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (21, 59, 'ACORD 753 - Pre-Notice Form', 'OLI_ATTACH_ACORD753', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (22, 60, 'ACORD 754 - Additional Other Proposed Insured Form', 'OLI_ATTACH_ACORD754', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (23, 61, 'ACORD 755 - Additional Owners Form', 'OLI_ATTACH_ACORD755', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (24, 62, 'ACORD 756 - Additional Beneficiaries Form', 'OLI_ATTACH_ACORD756', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (25, 63, 'ACORD 757 - HIV Antibody / Antigen Consent and Testing Form', 'OLI_ATTACH_ACORD757', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (26, 64, 'ACORD 758 - Producer Appointment Sheet Form', 'OLI_ATTACH_ACORD758', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (27, 65, 'ACORD 759 - Important Notice Regarding Replacement Form', 'OLI_ATTACH_ACORD759', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (28, 66, 'ACORD 761 - Policy Effective Date Supplement - Date of Policy Application Form', 'OLI_ATTACH_ACORD761', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (29, 67, 'ACORD 762 - Policy Effective Date Supplement - Date of Policy Delivery Form', 'OLI_ATTACH_ACORD762', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (30, 68, 'ACORD 763 - Policy Effective Date Supplement - Date Policy Issued Form', 'OLI_ATTACH_ACORD763', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (31, 69, 'ACORD 764 - Fair Credit Reporting Act Disclosure Form', 'OLI_ATTACH_ACORD764', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (32, 70, 'ACORD 765 - Agent\'s Report Form', 'OLI_ATTACH_ACORD765', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (33, 71, 'ACORD 766 - Product Comparison Form', 'OLI_ATTACH_ACORD766', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (34, 72, 'ACORD 767 - Temporary Insurance Agreement Form', 'OLI_ATTACH_ACORD767', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (35, 495, 'ACORD 785 - Request for Proposal', 'OLI_ATTACH_ACORD785', 'The basic non line of business specific form used to submit request for proposals.');
INSERT INTO `oli_lu_attachmenttype` VALUES (36, 496, 'ACORD 786 - Request For Proposal Life Supplement', 'OLI_ATTACH_ACORD786', 'Used to collect information necessary to submit a request for proposal for Life insurance.');
INSERT INTO `oli_lu_attachmenttype` VALUES (37, 497, 'ACORD 787 - Request For Proposal Short Term Disability Supplement', 'OLI_ATTACH_ACORD787', 'Used to collect information necessary to submit a request for proposal for Short Term Disability insurance.');
INSERT INTO `oli_lu_attachmenttype` VALUES (38, 498, 'ACORD 788 - Request For Proposal Long Term Disability Supplement', 'OLI_ATTACH_ACORD788', 'Used to collect information necessary to submit a request for proposal for Long Term Disability insurance.');
INSERT INTO `oli_lu_attachmenttype` VALUES (39, 499, 'ACORD 789 - Age Banded Rate Supplement', 'OLI_ATTACH_ACORD789', 'Used to provide additional details about the rates for the request for proposal.');
INSERT INTO `oli_lu_attachmenttype` VALUES (40, 500, 'ACORD 790 - Reducing Benefit Duration Schedule', 'OLI_ATTACH_ACORD790', 'Used to provide additional details about the scheduling method as it applies to Long Term Disability for the request for proposal.');
INSERT INTO `oli_lu_attachmenttype` VALUES (41, 501, 'ACORD 791 - Administrative Services & Fee Schedule - LTD', 'OLI_ATTACH_ACORD791', 'Used to provide additional details about the administrative services and fees as it applies to Long Term Disability for the request for proposal.');
INSERT INTO `oli_lu_attachmenttype` VALUES (42, 502, 'ACORD 792 - Administrative Services & Fee Schedule - STD', 'OLI_ATTACH_ACORD792', 'Used to provide additional details about the administrative services and fees as it applies to Short Term Disability for the request for proposal.');
INSERT INTO `oli_lu_attachmenttype` VALUES (43, 525, 'ACORD 821 - Producer Information Form', 'OLI_ATTACH_ACORD821', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (44, 73, 'ACORD 951 - 1035 Exchange / Rollover / Transfer Form', 'OLI_ATTACH_ACORD951', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (45, 273, 'ACORD - Census Supplement', 'OLI_ATTACH_CENSUS', 'Used to provide high level employee specific data for accessing risk when submitting a request for proposal to the insurance carrier. Can also be used to communicate detailed plan subscriber and dependant data to the carrier who has agreed to provide coverage.');
INSERT INTO `oli_lu_attachmenttype` VALUES (46, 236, 'Agency/Agent Contract Maintenance', 'OLI_ATTACH_AGCONTMAINT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (47, 237, 'Agency/Agent Termination', 'OLI_ATTACH_AGTERM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (48, 238, 'AgencyAgent License Maintenance', 'OLI_ATTACH_AGLICMAINT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (49, 166, 'Agent Reimbursement for APS', 'OLI_ATTACH_APSAGTREIM', 'Documents related to reimbursing an agent who has paid for an Attending Physician Statement');
INSERT INTO `oli_lu_attachmenttype` VALUES (50, 135, 'Alcohol Abuse Questionnaire/Supplement', 'OLI_ATTACH_QALCOHOL', 'Document used to gather more detailed information about applicant\'s use of alcohol reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (51, 130, 'Amendment', 'OLI_ATTACH_AMEND', 'Document which amends the original terms of the application.');
INSERT INTO `oli_lu_attachmenttype` VALUES (52, 2550290, 'Annuitization Authorization Form', 'OLI_ATTACH_ANNUITIZE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (53, 2550190, 'Annuity Application - IRI Compliant', 'OLI_ATTACH_ANNUITY_APPNAVACOMP', 'Formerly named \"Annuity Application - NAVA Compliant\"');
INSERT INTO `oli_lu_attachmenttype` VALUES (54, 2550200, 'Annuity Application - Non IRI Compliant', 'OLI_ATTACH_ANNUITY_APP_NONNAVACOMP', 'Formerly named \"Annuity Application - Non NAVA Compliant\"');
INSERT INTO `oli_lu_attachmenttype` VALUES (55, 2550400, 'Annuity Policy Contract', 'OLI_ATTACH_ANNUITYCONTRACT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (56, 132, 'Applicant Chest Pain Questionnaire/Supplement', 'OLI_ATTACH_QCHESTPAIN', 'Document used to gather more detailed information about applicant\'s chest pain reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (57, 134, 'Applicant Diabetic Questionnaire/Supplement', 'OLI_ATTACH_QDIABETIC', 'Document used to gather more detailed information about applicant\'s diabetes reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (58, 334, 'Application - Alternate Life Insurance Plan', 'OLI_ATTACH_ALTLIFEAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (59, 335, 'Application - Credit / Loan', 'OLI_ATTACH_CREDITAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (60, 336, 'Application - Group', 'OLI_ATTACH_GROUPAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (61, 337, 'Application - Health Coverage', 'OLI_ATTACH_HEALTHAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (62, 338, 'Application - Nominee Account', 'OLI_ATTACH_NAAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (63, 509, 'Application Overflow Form', 'OLI_ATTACH_APP_OVERFLOW', 'The Application Overflow Form is used to gather more detailed information about an applicant that doesn\'t fit on the standard application documents.');
INSERT INTO `oli_lu_attachmenttype` VALUES (64, 339, 'Application - Payout Annuity', 'OLI_ATTACH_PAYANNUAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (65, 340, 'Application - Policy Change', 'OLI_ATTACH_POLCHGAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (66, 320, 'Applications/Enrollment Form - Employees', 'OLI_ATTACH_APPENROLL', 'Applications and enrollment forms for employees. This is typically included in a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (67, 491, 'Applications/Enrollment Form - Employer', 'OLI_ATTACH_APPENROLLEMPL', 'Applications and enrollment forms for the employer. This is typically included in a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (68, 341, 'Application - Signature Page', 'OLI_ATTACH_SIGNATUREAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (69, 342, 'Application - Social Insurance Number (SIN)', 'OLI_ATTACH_SINAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (70, 215, 'Appointment - Authorization to Disclose', 'OLI_ATTACH_APPTDISCLOSE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (71, 214, 'Appointment - Broker Authorization', 'OLI_ATTACH_APPTBROKER', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (72, 213, 'Appointment Copy in non pre-appointment states', 'OLI_ATTACH_APPTLICENSE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (73, 218, 'Appointment Documents for pre-appointment states', 'OLI_ATTACH_APPTPREAPPT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (74, 219, 'Appointment E & O', 'OLI_ATTACH_APPTEO', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (75, 217, 'Appointment - General Correspondence', 'OLI_ATTACH_APPTGENCORR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (76, 216, 'Appointment - Producer Information Form', 'OLI_ATTACH_APPTPRODUCER', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (77, 2550510, 'Arkansas Rule 82 Certificate', 'OLI_ATTACH_AKRULE82CERT', 'Certificate of satisfaction of Arkansas Rule 82 Annuity Training requirement prior to sale of annuities.');
INSERT INTO `oli_lu_attachmenttype` VALUES (78, 537, 'Articles of Incorporation', 'OLI_ATTACH_ARTOFINCORP', 'These are the documents that were filed when the corporation was incorporated.');
INSERT INTO `oli_lu_attachmenttype` VALUES (79, 7, 'As Originally Sold Illustration', 'OLI_ATTACH_ASORIGSOLDILLUS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (80, 2550310, 'Asset Rebalancing Form', 'OLI_ATTACH_ASSETREBAL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (81, 226, 'Assignment - absolute', 'OLI_ATTACH_ASSIGNABS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (82, 228, 'Assignment - Collateral', 'OLI_ATTACH_ASSIGNCOLL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (83, 229, 'Assignment of Commissions', 'OLI_ATTACH_COMMASSIGN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (84, 227, 'Assignment - Release', 'OLI_ATTACH_ASSIGNREL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (85, 265, 'Assumptions', 'OLI_ATTACH_ASSUMPTIONS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (86, 163, 'Attending Physician Statement', 'OLI_ATTACH_APSMD', 'Details of an applicant\'s medical history, provided by a physician');
INSERT INTO `oli_lu_attachmenttype` VALUES (87, 239, 'Authorization', 'OLI_ATTACH_AUTH', 'When electronically ordering certain types of reports, a signed authorization form is required (in order to allow the service provider to obtain the requested information from the health care provider or similar source). There is a need to be able to attach an image of a signed authorization form to a 121 General Requirement Order transaction when ordering services that require such an authorization.');
INSERT INTO `oli_lu_attachmenttype` VALUES (88, 343, 'Authorization - Credit Card', 'OLI_ATTACH_CREDCARDAUTH', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (89, 346, 'Authorization for Non-Resident Tax Exemption', 'OLI_ATTACH_NRTAXA', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (90, 344, 'Authorization - Motor Vehicle Report', 'OLI_ATTACH_MOTORVEHREP', 'Authorization from the policy owner/insured to enable the carrier to request a Motor Vehicle Report from the appropriate transportation authority within the province issuing the current driver\'s license.');
INSERT INTO `oli_lu_attachmenttype` VALUES (91, 345, 'Authorization - Obtain / Release Information', 'OLI_ATTACH_RELINFO', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (92, 243, 'Autopsy Report', 'OLI_ATTACH_AUTOPSY', 'A report which includes the details of the post-mortem examination. This report includes cause of death and factors related to the cause of death. It is used in claim processing when there are unusual circumstances surrounding the insured\'s death; additional death benefits such as accidental death benefits may be payable; \\or when the death of the insured occurs during the policy contestable period.');
INSERT INTO `oli_lu_attachmenttype` VALUES (93, 136, 'Aviation Questionnaire/Supplement', 'OLI_ATTACH_QAVIATION', 'Document used to gather more detailed information about applicant\'s participation in aviation reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (94, 127, 'Backdate Notice', 'OLI_ATTACH_BACKDATE', 'Request that policy effective date be changed to an earlier date. Primarily used to Save Age');
INSERT INTO `oli_lu_attachmenttype` VALUES (95, 184, 'Bank Correspondence', 'OLI_ATTACH_MONEYBANK', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (96, 266, 'Benchmarking/Survey Results', 'OLI_ATTACH_BENCHMARK', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (97, 267, 'Benefit Summary', 'OLI_ATTACH_BENESUMM', 'A summary of benefit information. This is usually a one page description of the plan highlights, but may be longer.');
INSERT INTO `oli_lu_attachmenttype` VALUES (98, 272, 'Billing Statement', 'OLI_ATTACH_CARRIERINV', 'A monthly, quarterly or annual statement from the incumbent carrier or insurer that gives detailed enrollment and premium information.');
INSERT INTO `oli_lu_attachmenttype` VALUES (99, 168, 'Blood & Urine Test Results, Electronic', 'OLI_ATTACH_LABSBLDURINE', 'Electronic results of tests performed on blood and urine specimens to ascertain the applicant\'s health.');
INSERT INTO `oli_lu_attachmenttype` VALUES (100, 165, 'Blood Pressure Recheck', 'OLI_ATTACH_APSBLDPRESS', 'Additional blood pressure readings used to determine if abnormal results reflect a pattern or were an aberration');
INSERT INTO `oli_lu_attachmenttype` VALUES (101, 169, 'Blood Test Results - Paper', 'OLI_ATTACH_LABSBLD', 'Results of tests performed on a blood specimen to ascertain the applicant\'s health.');
INSERT INTO `oli_lu_attachmenttype` VALUES (102, 221, 'Broker Authorization', 'OLI_ATTACH_LICBRKERAUTH', 'Broker\'s authorization to the carrier, indicating their approval to proceed with the Licensing & Appointing process');
INSERT INTO `oli_lu_attachmenttype` VALUES (103, 268, 'Broker of Record Letter', 'OLI_ATTACH_BROKER', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (104, 269, 'Budget Information', 'OLI_ATTACH_BUDGET', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (105, 140, 'Business Insurance Questionnaire/Supplement', 'OLI_ATTACH_QBUSINS', 'Document used to gather more detailed information when the insurance being applied for  will be used for business purposes.');
INSERT INTO `oli_lu_attachmenttype` VALUES (106, 2550450, 'Buyers Guide (Non-NAIC)', 'OLI_ATTACH_BUYERS_GUIDE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (107, 2550185, 'California Pre-Sale Notice', 'OLI_ATTACH_CAPRESALE', 'Notice Prior to Senior Home Visit (per CA reg 789.10)');
INSERT INTO `oli_lu_attachmenttype` VALUES (108, 210, 'Cancellation', 'OLI_ATTACH_DISBCANCEL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (109, 270, 'Carrier Contact Information', 'OLI_ATTACH_CARRIERCONT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (110, 271, 'Carrier Form', 'OLI_ATTACH_CARRIERFORM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (111, 253, 'Carrier Specific Application', 'OLI_ATTACH_CARRIERAPP', 'Application that is specific to a carrier who is not using the ACORD generic application.  This code also represents a carrier\'s standard application as opposed to one with a shortened format and fewer questions. This may also be called a long application or a full application.');
INSERT INTO `oli_lu_attachmenttype` VALUES (112, 523, 'Carrier Specific Express Application', 'OLI_ATTACH_EXPAPP', 'A carrier specific application having a shortened format with a reduced number of medical questions and fewer possible additional insureds. May also be called a short application.');
INSERT INTO `oli_lu_attachmenttype` VALUES (113, 181, 'Cash on Delivery Check', 'OLI_ATTACH_MONEYCOD', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (114, 180, 'Cash with App', 'OLI_ATTACH_MONEYCWA', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (115, 274, 'Census - Ancillary', 'OLI_ATTACH_CENSUSANC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (116, 275, 'Census - Medical', 'OLI_ATTACH_CENSUSMED', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (117, 347, 'Claim - Additional Claimants', 'OLI_ATTACH_ADDCLS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (118, 348, 'Claim - Claimant Statement', 'OLI_ATTACH_CLAIMSTAT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (119, 349, 'Claim - Critical Illness', 'OLI_ATTACH_CRITICALILLNESS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (120, 350, 'Claim - Declaration / Proof of Death', 'OLI_ATTACH_DEATHDEC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (121, 351, 'Claim - Drug Employee Reimbursement', 'OLI_ATTACH_DRUGEMPLCL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (122, 242, 'Claim Financial Investigation', 'OLI_ATTACH_FINANCIALINVESTIG', 'This contains additional financial details that were required for the case. This document is used to verify the financial loss (Income Loss) to a disabled insured.');
INSERT INTO `oli_lu_attachmenttype` VALUES (123, 352, 'Claim - Foreign', 'OLI_ATTACH_FORIEGNCL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (124, 353, 'Claim - Healthcare Expenses', 'OLI_ATTACH_HEALTHCARE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (125, 354, 'Claim - Requirements', 'OLI_ATTACH_REQUIREMENTS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (126, 276, 'Claims - All', 'OLI_ATTACH_CLAIMS', 'A report from the current carrier or TPA that gives data on claims incurred or paid by the plan. This is typically included in a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (127, 488, 'Claims - Large / Shock', 'OLI_ATTACH_CLAIMSLRGSHCK', 'A report containing claims data on claimants who have generated claims in excess of a stated dollar threshold. This is typically included in a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (128, 489, 'Claims - Waiver', 'OLI_ATTACH_CLAIMSWVR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (129, 516, 'Client Identification - Age of Majority', 'OLI_ATTACH_AGEOFMAJORITYID', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (130, 355, 'Client Identification - Birth Certificate', 'OLI_ATTACH_BIRTHCERT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (131, 521, 'Client Identification - Citizenship', 'OLI_ATTACH_CITIZENSHIPID', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (132, 356, 'Client Identification - Driver\'s License', 'OLI_ATTACH_DRIVERSLIC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (133, 520, 'Client Identification - Member of Armed Forces', 'OLI_ATTACH_ARMEDFORCESID', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (134, 357, 'Client Identification - Passport', 'OLI_ATTACH_PASSPORT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (135, 358, 'Client Identification - Work Permit', 'OLI_ATTACH_WORKPERMIT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (136, 2, 'Comment/Remark', 'OLI_ATTACH_COMMENT', 'Use for Comments or Form Remarks sections');
INSERT INTO `oli_lu_attachmenttype` VALUES (137, 234, 'Commission, Single Case Agreement', 'OLI_ATTACH_COMMSCA', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (138, 277, 'Commission Agreement - ACORD 785', 'OLI_ATTACH_COMMAGREE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (139, 232, 'Commission Agreement - NAILBA', 'OLI_ATTACH_COMMAGREEMNT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (140, 233, 'Commission Schedule', 'OLI_ATTACH_COMMSCHED', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (141, 231, 'Commission Split', 'OLI_ATTACH_COMMSPLIT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (142, 235, 'Commission Statement', 'OLI_ATTACH_COMMSTATEMNT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (143, 2550120, 'Compensation Disclosure', 'OLI_ATTACH_COMDISCLOSURE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (144, 279, 'Completed Census Data', 'OLI_ATTACH_CENSUSDATA', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (145, 280, 'Completed Proposal Form', 'OLI_ATTACH_PROPOSAL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (146, 278, 'Compliance', 'OLI_ATTACH_COMPLIANCE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (147, 98, 'Conditional Receipt', 'OLI_ATTACH_CONDRCPT', 'A receipt given when a payment accompanies an application for insurance. It provides that the coverage will be in force from the date of application, provided the insurer would have issued the coverage on the basis of the facts revealed on the application, medical examination and other usual sources of underwriting.');
INSERT INTO `oli_lu_attachmenttype` VALUES (148, 322, 'Conditions', 'OLI_ATTACH_CONDITIONS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (149, 281, 'Confirmation of Agreements', 'OLI_ATTACH_CONFAGREE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (150, 282, 'Confirmation Statement', 'OLI_ATTACH_CONFSTATE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (151, 2550130, 'Conflicts of Interest Disclosure', 'OLI_ATTACH_CONFLICTS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (152, 283, 'Consulting Agreement', 'OLI_ATTACH_CONSULAGREE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (153, 284, 'Contract - additional info unknown', 'OLI_ATTACH_CONTRACT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (154, 359, 'Contracting - Application', 'OLI_ATTACH_CONTRAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (155, 360, 'Contracting - Bonus', 'OLI_ATTACH_BONUS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (156, 361, 'Contracting - Broker is a Business Entity', 'OLI_ATTACH_CORPENTITY', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (157, 362, 'Contracting - Cancellation / Termination', 'OLI_ATTACH_TERMINATION', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (158, 363, 'Contracting - Code of Conduct', 'OLI_ATTACH_CODEOFCOND', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (159, 364, 'Contracting - E&O Certificate', 'OLI_ATTACH_EOCERT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (160, 285, 'Contributions/Pricing', 'OLI_ATTACH_CONTRIBUT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (161, 131, 'Coronary Artery Disease Questionnaire/Supplement', 'OLI_ATTACH_QCORONARY', 'Document used to gather more detailed information about applicant\'s coronary artery disease reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (162, 286, 'Correspondence', 'OLI_ATTACH_CORRESP', 'This is a general attachment for generic correspondence where no further specificity is known.');
INSERT INTO `oli_lu_attachmenttype` VALUES (163, 111, 'Correspondence from Agent', 'OLI_ATTACH_CORRFRMAGT', 'Document, other than a standardized form, used to communicate information from the Agent to the Carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (164, 110, 'Correspondence from General Agency', 'OLI_ATTACH_CORRFRMGA', 'Document, other than a standardized form, used to communicate information from the General Agency to the Carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (165, 115, 'Correspondence from Proposed Insured', 'OLI_ATTACH_CORRFRMPI', 'Document sent by the Proposed Insured to the Carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (166, 114, 'Correspondence from Provider', 'OLI_ATTACH_CORRFRMPROV', 'Document sent by an insurance service provider to the Carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (167, 113, 'Correspondence to Agent', 'OLI_ATTACH_CORRTOAGT', 'Document sent by the Carrier to the Agent. Could be a form, form letter, custom business letter or ad hoc communication.');
INSERT INTO `oli_lu_attachmenttype` VALUES (168, 112, 'Correspondence to General Agency', 'OLI_ATTACH_CORRTOGA', 'Document sent by the Carrier to the General Agency. Could be a form, form letter, custom business letter or ad hoc communication.');
INSERT INTO `oli_lu_attachmenttype` VALUES (169, 2550005, 'Credential', 'OLI_ATTACH_CREDENTIAL', 'Provides the value of a credential');
INSERT INTO `oli_lu_attachmenttype` VALUES (170, 2550233, 'Credit Enhancement Disclosure Form', 'OLI_ATTACH_CREDITENH', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (171, 2550380, 'Customer Confirmation Form', 'OLI_ATTACH_CUSTOMERCONFIRM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (172, 542, 'Customer Information Supplement', 'OLI_ATTACH_CUSTSUPPLEMENT', 'The customer information supplement is used to collect additional information such as income, liquidity needs, investment objectives and experience, and other suitability-related details used to assess product suitabilty.');
INSERT INTO `oli_lu_attachmenttype` VALUES (173, 2550015, 'Customer Profile', 'OLI_ATTACH_CUSTPROFILE', 'Customer Profile Information');
INSERT INTO `oli_lu_attachmenttype` VALUES (174, 527, 'Death Certificate', 'OLI_ATTACH_DEATHCERTIFICATE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (175, 209, 'Death Claim', 'OLI_ATTACH_DISBDEATHCLAIM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (176, 125, 'Delivery Coversheet', 'OLI_ATTACH_DELVRYCOVER', 'Coversheet used as a tool to communicate information from the producer to the carrier, that is attached to a delivery requirement.');
INSERT INTO `oli_lu_attachmenttype` VALUES (177, 205, 'Disbursement Forms', 'OLI_ATTACH_DISBDISB', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (178, 207, 'Disbursement - Loan', 'OLI_ATTACH_DISBLOAN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (179, 206, 'Disbursement - PUA Surrender', 'OLI_ATTACH_DISBPUASURR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (180, 203, 'Disbursement - Surrender', 'OLI_ATTACH_DISBSURR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (181, 204, 'Disbursement - Withdrawal', 'OLI_ATTACH_DISBWITHDRAW', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (182, 108, 'Disclosure', 'OLI_ATTACH_DISCLOSURE', 'State specific form, which provides the applicant with specific insurance information that is required by the state.');
INSERT INTO `oli_lu_attachmenttype` VALUES (183, 507, 'Disclosure Statement for Accelerated Benefits', 'OLI_ATTACH_DISCACCBENE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (184, 287, 'Disruption Report for Current Carrier', 'OLI_ATTACH_DISRUPTRP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (185, 208, 'Dividend Forms', 'OLI_ATTACH_DISBDIV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (186, 1, 'Document', 'OLI_ATTACH_DOC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (187, 2550320, 'Dollar Cost Averaging (DCA) Form', 'OLI_ATTACH_DCAREQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (188, 176, 'Driving Report', 'OLI_ATTACH_DRIVERPT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (189, 144, 'Drug Use Questionnaire/Supplement', 'OLI_ATTACH_QDRUGUSE', 'Document used to gather more detailed information about applicant\'s use of drugs reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (190, 288, 'Due Diligence', 'OLI_ATTACH_DUEDIL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (191, 2550216, 'Early Withdrawals on Annuity Proceeds Disclosure', 'OLI_ATTACH_EARLYWITH', 'Early Withdrawals on Annuity Proceeds Disclosure Statement');
INSERT INTO `oli_lu_attachmenttype` VALUES (192, 365, 'Education Savings - Grant (CESG)', 'OLI_ATTACH_CESG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (193, 366, 'Education Savings - Investment Application', 'OLI_ATTACH_INVESTMENTAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (194, 367, 'Education Savings - Tax', 'OLI_ATTACH_TAXEDUSAV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (195, 173, 'EKG Holter', 'OLI_ATTACH_EKGHOLTER', 'Results of special portable electrocardiogram test performed to ascertain applicant\'s cardiac health');
INSERT INTO `oli_lu_attachmenttype` VALUES (196, 172, 'EKG Interpretation', 'OLI_ATTACH_EKGINTERP', 'Analysis of the results of electrocardiogram test performed to ascertain applicant\'s cardiac health');
INSERT INTO `oli_lu_attachmenttype` VALUES (197, 171, 'EKG Tracing', 'OLI_ATTACH_EKGTRACE', 'Graphic results of electrocardiogram test performed to ascertain applicant\'s cardiac health');
INSERT INTO `oli_lu_attachmenttype` VALUES (198, 2550020, 'Electronic Consent Form - Carrier', 'OLI_ATTACH_CARRCONSENT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (199, 2550030, 'Electronic Consent Form - Distributor', 'OLI_ATTACH_DISTCONSENT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (200, 2550035, 'Electronic Consent Form - Joint', 'OLI_ATTACH_JNTCONSENT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (201, 123, 'Electronic Funds Transfer (EFT) Form', 'OLI_ATTACH_EFTFORM', 'Authorization to draft or deposit funds to an account electronically.');
INSERT INTO `oli_lu_attachmenttype` VALUES (202, 533, 'Electronic Health Record', 'OLI_ATTACH_EHR', 'The attachment is a representation of an Electronic Health Record (EHR). This may also be known as Electronic Medical Record (EMR).');
INSERT INTO `oli_lu_attachmenttype` VALUES (203, 506, 'Electronic Signature Summary', 'OLI_ATTACH_ELECSIGSUMMARY', 'The page or report used to summarize the data associated with electronic signatures (e-signatures) received as part of an application or authorization.');
INSERT INTO `oli_lu_attachmenttype` VALUES (204, 289, 'Eligibility', 'OLI_ATTACH_ELIGIBL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (205, 4, 'E-Mail', 'OLI_ATTACH_EMAIL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (206, 490, 'Employee and/or Employer Contributions', 'OLI_ATTACH_EMPLCONTRIB', 'Details pertaining to the premium contribution levels made by the employee and/or employer. This is typically included in a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (207, 290, 'Employee Communication Materials', 'OLI_ATTACH_EMPLOCOM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (208, 505, 'Employer-owned Life Ins Notice and Consent Form', 'OLI_ATTACH_NOTICECONSENT', 'Usually used pursuant to US IRS Form 8925 Report of Employer-Owned Life Insurance Contracts the policyholder must have a valid consent form for each insured employee.');
INSERT INTO `oli_lu_attachmenttype` VALUES (209, 325, 'Examiner Note', 'OLI_ATTACH_EXAMINERNOTE', 'Note with instructions or additional information for the medical examiner.');
INSERT INTO `oli_lu_attachmenttype` VALUES (210, 15, 'Exception Note', 'OLI_ATTACH_EXCEPTIONNOTE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (211, 2550360, 'Exchange/Rollover Transfer Form', 'OLI_ATTACH_EXCHANGE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (212, 291, 'Executive Report', 'OLI_ATTACH_EXECRP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (213, 293, 'Experience/Plan Utilization', 'OLI_ATTACH_EXPPLAN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (214, 292, 'Experience Information', 'OLI_ATTACH_EXPINFO', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (215, 328, 'Face to Face Assessment', 'OLI_ATTACH_FACETOFACE', 'The Attachment is the result of a request for the results of the Face to Face Assessment');
INSERT INTO `oli_lu_attachmenttype` VALUES (216, 294, 'FASB Study', 'OLI_ATTACH_FASB', 'Financial Accounting Standards Board (FASB)');
INSERT INTO `oli_lu_attachmenttype` VALUES (217, 529, 'FATCA Entity Classification Declaration', 'OLI_ATTACH_FATCATAXCLASSENT', 'Document which captures the tax classification for an entity.FATCA is the U.S. Internal Revenue Service (IRS) Foreign Account Tax Compliance Act.');
INSERT INTO `oli_lu_attachmenttype` VALUES (218, 530, 'FATCA Self-Certification', 'OLI_ATTACH_FATCATAXCLASSIND', 'Document which captures the tax classification for an individual.FATCA is the U.S. Internal Revenue Service (IRS) Foreign Account Tax Compliance Act.');
INSERT INTO `oli_lu_attachmenttype` VALUES (219, 368, 'Financial - Bank Estate', 'OLI_ATTACH_BANKESTATE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (220, 369, 'Financial - Business Coverage', 'OLI_ATTACH_BUSCOV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (221, 370, 'Financial - Business Entity', 'OLI_ATTACH_BUSINESSENTITY', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (222, 371, 'Financial - Buy/Sell Agreement Request/Requirement', 'OLI_ATTACH_BSR', 'Financial - Buy / Sell Agreement Request / Requirements');
INSERT INTO `oli_lu_attachmenttype` VALUES (223, 372, 'Financial - Confidential Business Questionnaire', 'OLI_ATTACH_CONFIDENTIALQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (224, 373, 'Financial - Divorce / Separation Agreement', 'OLI_ATTACH_DIVORCEAGR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (225, 374, 'Financial - Estate Planning', 'OLI_ATTACH_ESTATEPLANF', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (226, 375, 'Financial - Gifted Property', 'OLI_ATTACH_GIFTEDPROP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (227, 376, 'Financial - Hardship', 'OLI_ATTACH_HARDSHIP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (228, 377, 'Financial - Personal Statement', 'OLI_ATTACH_PERSONALSTAT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (229, 378, 'Financial - Proposed Insured', 'OLI_ATTACH_PROPOSEDINS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (230, 146, 'Financial Questionnaire', 'OLI_ATTACH_QFINANCIAL', 'Document used to gather more information about the applicant\'s financial situation.');
INSERT INTO `oli_lu_attachmenttype` VALUES (231, 150, 'Financial Report - Business', 'OLI_ATTACH_FINRPTBUS', 'Personal or corporate income statement, used to determine relationship between applicant\'s financial situation and amount of insurance requested.');
INSERT INTO `oli_lu_attachmenttype` VALUES (232, 149, 'Financial Report - Personal', 'OLI_ATTACH_FINRPTPERS', 'Personal financial report, used to determine relationship between applicant\'s financial situation and amount of insurance requested.');
INSERT INTO `oli_lu_attachmenttype` VALUES (233, 379, 'Financial - Trust for a Minor', 'OLI_ATTACH_TRUSTMINOR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (234, 380, 'Financial - Will', 'OLI_ATTACH_WILL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (235, 2550070, 'Fixed Annuity Profile', 'OLI_ATTACH_FAP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (236, 78, 'Footnote', 'OLI_ATTACH_FOOTNOTE', 'Additional variable information applicable to correspondence. This is a specific part of a document.');
INSERT INTO `oli_lu_attachmenttype` VALUES (237, 141, 'Foreign Resident/Travel Questionnaire/Supplement', 'OLI_ATTACH_QFORTRAV', 'Document used to gather more detailed information about the applicant\'s non-citizen status and/or their intent to travel outside the US');
INSERT INTO `oli_lu_attachmenttype` VALUES (238, 5, 'Form', 'OLI_ATTACH_FORM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (239, 295, 'Form 5500', 'OLI_ATTACH_F5500', 'Form 5500 Annual Return/Report of Employee Benefit Plan - jointly developed by the Department of Labor, Internal Revenue Service, and the Pension Benefit Guaranty Corporation.');
INSERT INTO `oli_lu_attachmenttype` VALUES (240, 534, 'Formula', 'OLI_ATTACH_FORMULA', 'Used to specify a complex formula such as Market Value Adjustment (MVA) calculations or complex rider formulas.');
INSERT INTO `oli_lu_attachmenttype` VALUES (241, 513, 'Full Liquidation Form', 'OLI_ATTACH_FULLLIQUIDATION', 'This is a form carriers use to process full liquidation requests.');
INSERT INTO `oli_lu_attachmenttype` VALUES (242, 2550050, 'Fund Prospectus', 'OLI_ATTACH_FUNDPROSP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (243, 264, 'General description', 'OLI_ATTACH_GENDESC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (244, 14, 'General Note', 'OLI_ATTACH_GENERALNOTE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (245, 2550110, 'General VA Disclosure (Rule 2821)', 'OLI_ATTACH_VADISCLOSURE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (246, 124, 'Government Allotment', 'OLI_ATTACH_GOVTALLOT', 'Document providing details for the use of funds taken from a government salary to pay premium');
INSERT INTO `oli_lu_attachmenttype` VALUES (247, 381, 'Group - Employee Data Listing', 'OLI_ATTACH_EMPDATLIST', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (248, 382, 'Group - Forfeiture of Benefits', 'OLI_ATTACH_FORFEITURE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (249, 383, 'Guaranteed Insurability Election Admin Rules', 'OLI_ATTACH_ELETIONADRULES', 'Guaranteed Insurability Election Administrative Rules');
INSERT INTO `oli_lu_attachmenttype` VALUES (250, 2550420, 'Guaranty Association Notices', 'OLI_ATTACH_GUARANTYNOTICE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (251, 129, 'Health Statement', 'OLI_ATTACH_HLTHSTMNT', 'Document attesting to the continuing good health of the applicant. Used either in lieu of a physical exam or when it has been a while since the original application was received. Time interval is carrier specific.');
INSERT INTO `oli_lu_attachmenttype` VALUES (252, 487, 'HIPAA Authorization', 'OLI_ATTACH_HIPAAAUTH', 'A form required by the USA Health Insurance Portability and Accountability Act in which an individual provides his/her signed permission to allow a covered entity to use or disclose the individual\'s protected health information (PHI) that is described in the authorization for the purpose(s) and to the recipient(s) stated in the authorization.');
INSERT INTO `oli_lu_attachmenttype` VALUES (253, 329, 'Home Office Specimen', 'OLI_ATTACH_HOS', 'The Attachment is the result of a request for the analytic results of the Home Office Specimen');
INSERT INTO `oli_lu_attachmenttype` VALUES (254, 21, 'IAI data', 'OLI_ATTACH_IAIDATA', 'Data associated with this attachment contain the results of an IAI Search');
INSERT INTO `oli_lu_attachmenttype` VALUES (255, 296, 'Implementation Timeline', 'OLI_ATTACH_IMPLEM', 'Details about the implementation timeline in regards to a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (256, 148, 'Income Statement', 'OLI_ATTACH_INCSTMNT', 'Personal or corporate income statement, used to determine relationship between applicant\'s financial situation and amount of insurance requested.');
INSERT INTO `oli_lu_attachmenttype` VALUES (257, 241, 'Independent Medical Examiner Report', 'OLI_ATTACH_INDEPDENTMEDEXAMNER', 'A report that is completed by a Medical Examiner, by the request of the insurance carrier. The Medical Examiner has no prior relationship with the insured. The insurance company .Report requested by the insurance company of an independent medical examiner for a claim. This document that contains information regarding a specified disability or condition with regards to a claim. This is a common requested report for claims that are long term or life long disabilities.');
INSERT INTO `oli_lu_attachmenttype` VALUES (258, 2550080, 'Indexed Annuity profile', 'OLI_ATTACH_IAP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (259, 201, 'In-Force Address Change', 'OLI_ATTACH_POSADDRCHNG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (260, 198, 'In-Force Amendment', 'OLI_ATTACH_POSAMEND', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (261, 192, 'In-Force Audit Request', 'OLI_ATTACH_POSAUDREQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (262, 189, 'In-Force Beneficiary Change', 'OLI_ATTACH_POSBENECHNG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (263, 193, 'In-Force Complex Transaction', 'OLI_ATTACH_POSCOMLPEXTRAN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (264, 196, 'In-Force Conversion', 'OLI_ATTACH_POSCONVERT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (265, 194, 'In-Force Duplicate Policy Request', 'OLI_ATTACH_POSDUPPOL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (266, 197, 'In-Force Face Amount Change', 'OLI_ATTACH_POSFACECHNG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (267, 190, 'In-Force Name Change', 'OLI_ATTACH_POSNAMECHNG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (268, 186, 'In-Force Non-Financial Change', 'OLI_ATTACH_POSNONFINCHNG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (269, 185, 'In-Force Non-Financial Transaction', 'OLI_ATTACH_POSNONFIN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (270, 188, 'In-Force Owner Change', 'OLI_ATTACH_POSOWNCHNG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (271, 191, 'In-Force Premium Change', 'OLI_ATTACH_POSPREMCHNG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (272, 199, 'In-Force Rate Reduction', 'OLI_ATTACH_POSRATERED', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (273, 202, 'In-Force Reinstatement Request', 'OLI_ATTACH_POSREINSTATE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (274, 195, 'In-Force Reissue', 'OLI_ATTACH_POSREISS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (275, 200, 'In-Force Rider Change', 'OLI_ATTACH_POSRIDERCHNG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (276, 187, 'In-Force Servicing Agent Change', 'OLI_ATTACH_POSSERVAGTCHNG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (277, 384, 'Information - Product Page', 'OLI_ATTACH_PRODUCTOPAGE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (278, 24, 'Inspection', 'OLI_ATTACH_INSPECTION', 'Data associated with this attachment contain the results of an Inspection');
INSERT INTO `oli_lu_attachmenttype` VALUES (279, 260, 'Inspection Reason', 'OLI_ATTACH_INSPREASON', 'Attachment contains information derived from an inspection report that might be used as reasons for modifying or rejecting a policy. This information is typically used for Fair Credit letters.');
INSERT INTO `oli_lu_attachmenttype` VALUES (280, 179, 'Inspection Report - Business Beneficiary', 'OLI_ATTACH_INSPBUSBENE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (281, 178, 'Inspection Report - Credit', 'OLI_ATTACH_INSPCREDIT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (282, 177, 'Inspection Report - Personal', 'OLI_ATTACH_INSPPERS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (283, 321, 'Instruction in Event of Deviation from RFP', 'OLI_ATTACH_DEVIATERFP', 'Instruction in Event of Deviation from Request for Proposal');
INSERT INTO `oli_lu_attachmenttype` VALUES (284, 250, 'Instructions/Reminders', 'OLI_ATTACH_INSTREMIND', 'Instructions such as those relating to a product or benefit. Example: \"Provide a cancelled check not a deposit slip.\" Typically the \"how\" information.');
INSERT INTO `oli_lu_attachmenttype` VALUES (285, 331, 'Instructions - Settlement Options', 'OLI_ATTACH_ISSINSTSETTL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (286, 332, 'Instructions - Term Conversion', 'OLI_ATTACH_ISSINSTTERMCV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (287, 330, 'Instructions - Underwriting', 'OLI_ATTACH_ISSINSTUND', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (288, 333, 'Insurance Verification Letter', 'OLI_ATTACH_INSVER', 'This attachmentthat is a form sent by the carrier to a requesting entity which verifies that the party or parties who requested this letter are covered by an insurance policy issued by the carrier');
INSERT INTO `oli_lu_attachmenttype` VALUES (289, 2550184, 'Interest Rate Lock Notice and Disclosure', 'OLI_ATTACH_RATELOCK', 'Interest rate lock information');
INSERT INTO `oli_lu_attachmenttype` VALUES (290, 2550182, 'Interest Rate Notice and Disclosure', 'OLI_ATTACH_RATEDISC', 'Interest rate disclaimer and notice information which should be presented to an agent and/or consumer whenever interest rate information is provided');
INSERT INTO `oli_lu_attachmenttype` VALUES (291, 2550300, 'Interest Sweep Form', 'OLI_ATTACH_INTSWEEP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (292, 99, 'Interim Conditional Receipt', 'OLI_ATTACH_CONDRECPTINT', 'A receipt given when a payment accompanies an application for insurance. It provides that the coverage will be in force from the date of application, provided the insurer would have issued the coverage on the basis of the facts revealed on the application, medical examination and other usual sources of underwriting.');
INSERT INTO `oli_lu_attachmenttype` VALUES (293, 249, 'Internal Communication', 'OLI_ATTACH_INTERNAL', 'Communications and information for use by carrier and distributor staff including agents, but not customers/clients.');
INSERT INTO `oli_lu_attachmenttype` VALUES (294, 240, 'Investigator Report', 'OLI_ATTACH_INVESTIGATOR', 'Provides additional details about a claimant if the claimant is under investigation which can influence the outcome of a case.');
INSERT INTO `oli_lu_attachmenttype` VALUES (295, 297, 'Issue Log', 'OLI_ATTACH_ISSUELOG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (296, 248, 'Itemized Bill', 'OLI_ATTACH_ITEMBILL', 'The attachment contains an itemized bill.');
INSERT INTO `oli_lu_attachmenttype` VALUES (297, 2550240, 'Jumbo Case Review Form', 'OLI_ATTACH_JUMBOREVIEW', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (298, 23, 'Lab data', 'OLI_ATTACH_LABREPORT', 'Data associated with this attachment contain the results of Lab work');
INSERT INTO `oli_lu_attachmenttype` VALUES (299, 515, 'Lab Slip Document', 'OLI_ATTACH_LABSLIPDOC', 'The attachment is an image of a Lab Slip document that accompanies a lab kit.');
INSERT INTO `oli_lu_attachmenttype` VALUES (300, 385, 'Legal', 'OLI_ATTACH_LEGAL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (301, 3, 'Letter', 'OLI_ATTACH_LETTER', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (302, 386, 'Letter - Apology', 'OLI_ATTACH_APOLOGY', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (303, 387, 'Letter - Commitment', 'OLI_ATTACH_LETOFCOMMIT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (304, 388, 'Letter - Decision', 'OLI_ATTACH_DECISION', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (305, 298, 'Letter of Authorization to Quote', 'OLI_ATTACH_LTRAUTH', 'A letter specifying the broker is authorized by the employer to request a quote for insurance.');
INSERT INTO `oli_lu_attachmenttype` VALUES (306, 389, 'Letter - Receipt for Premiums Collected', 'OLI_ATTACH_RECEIPT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (307, 390, 'Letter - To Physician', 'OLI_ATTACH_PHYSICIANLET', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (308, 220, 'License Copy in non pre-appointment states', 'OLI_ATTACH_LICLICENSE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (309, 223, 'Licensing Authorization to Disclose', 'OLI_ATTACH_LICPRODUCER', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (310, 222, 'Licensing Broker Authorization', 'OLI_ATTACH_LICDISCAUTH', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (311, 225, 'Licensing - Documents for pre-appointment states', 'OLI_ATTACH_LICPREAPPT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (312, 224, 'Licensing - General Correspondence', 'OLI_ATTACH_LICGENCORR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (313, 538, 'Life Policy Contract', 'OLI_ATTACH_LIFECONTRACT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (314, 145, 'Lifestyle Questionnaire/Supplement', 'OLI_ATTACH_QLIFESTYLE', 'Document used to gather more detailed information about applicant\'s lifestyle');
INSERT INTO `oli_lu_attachmenttype` VALUES (315, 100, 'Limited Insurance Agreement', 'OLI_ATTACH_LIA', 'An agreement providing that if all qualifications are met, coverage will be in force from the date of application, provided the insurer would have issued the coverage on the basis of the facts revealed on the application, medical examination and other usual sources of underwriting.');
INSERT INTO `oli_lu_attachmenttype` VALUES (316, 256, 'Lost Policy Affidavit', 'OLI_ATTACH_LOSTPOL', 'An attestation that client has lost the original policy for the contract being surrendered for a replacement.');
INSERT INTO `oli_lu_attachmenttype` VALUES (317, 391, 'Mail Log', 'OLI_ATTACH_MAILLOG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (318, 392, 'Marketing - Fund Code Chart', 'OLI_ATTACH_FUNDCODE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (319, 299, 'Marketing Materials', 'OLI_ATTACH_MARKMAT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (320, 263, 'Marketing Objective', 'OLI_ATTACH_MKTGOBJECTIVE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (321, 393, 'Marketing - Quotation Request', 'OLI_ATTACH_QUOTEREQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (322, 300, 'Marketing Strategy Letter', 'OLI_ATTACH_MARKSTRAT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (323, 394, 'Marketing - Underwriting Requirements Chart', 'OLI_ATTACH_UNDERWRITREQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (324, 535, 'Market Value Adjustment Disclosure', 'OLI_ATTACH_MVADISC', 'Used to specify disclosure wording for Market Value Adjustments (MVAs).');
INSERT INTO `oli_lu_attachmenttype` VALUES (325, 528, 'Medical exam performed by personal physician', 'OLI_ATTACH_MEDICALEXAM', 'Document which captures results of examination performed by a personal physician/doctor.');
INSERT INTO `oli_lu_attachmenttype` VALUES (326, 301, 'Meeting/Call Notes', 'OLI_ATTACH_CALLNOTES', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (327, 541, 'MIB Notice', 'OLI_ATTACH_MIBNOTICE', 'Notice indicating personal information will be shared with MIB');
INSERT INTO `oli_lu_attachmenttype` VALUES (328, 19, 'MIB Search data returned in the MIB Service Request format', 'OLI_ATTACH_MIB_SERVRESP', 'Data associated with this attachment contain the results of an MIB Search');
INSERT INTO `oli_lu_attachmenttype` VALUES (329, 244, 'MIB Update Data', 'OLI_ATTACH_MIB402', 'Data associated with this attachment contain the results of an MIB Update');
INSERT INTO `oli_lu_attachmenttype` VALUES (330, 254, 'Mini Mental State Exam Form', 'OLI_ATTACH_MMNTALSTEX', 'A form that is completed by a trained clinician in evaluating a patient and providing such information as orientation, immediate recall, attention, delayed verbal recall, naming, stage command, reading, writing and sentence language.');
INSERT INTO `oli_lu_attachmenttype` VALUES (331, 20, 'Motor vehicle report information', 'OLI_ATTACH_MVR', 'Data associated with this attachment contain the results of an MVR request');
INSERT INTO `oli_lu_attachmenttype` VALUES (332, 142, 'Mountain/Rock/Ice Climbing Questionnaire/Supplement', 'OLI_ATTACH_QCLIMB', 'Document used to gather more detailed information about applicant\'s participation in mountain, rock, or ice climbing activities reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (333, 2550170, 'NAIC Buyers Guide - EIA', 'OLI_ATTACH_NAICBUYGUIDEEIA', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (334, 2550150, 'NAIC Buyers Guide - Fixed', 'OLI_ATTACH_NAICBUYGUIDEFIXED', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (335, 2550160, 'NAIC Buyers Guide - Variable', 'OLI_ATTACH_NAICBUYGUIDEVAR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (336, 2550180, 'NAIC Disclosure - Fixed and EIA', 'OLI_ATTACH_NAICDISCFIXEIA', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (337, 2550330, 'NAIC Model Reg Replacement Form', 'OLI_ATTACH_NAICMODELREGDISC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (338, 395, 'Needs Analysis / Screening - Critical Illness', 'OLI_ATTACH_CRITICALSCREEN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (339, 396, 'Needs Analysis / Screening - Disability', 'OLI_ATTACH_DISABSCREEN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (340, 397, 'Needs Analysis / Screening - Insurance', 'OLI_ATTACH_INSSCREEN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (341, 398, 'Needs Analysis / Screening - Investment', 'OLI_ATTACH_INVESTSCREEN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (342, 536, 'Needs Assessment Summary Letter', 'OLI_ATTACH_REASONWHY', 'This letter is intended to be a brief summary of the results of needs assessment.  It is given to the client.  In addition to helping the client understand the recommendation, it is something he or she can keep as a convenient reminder of why the policy was purchased.');
INSERT INTO `oli_lu_attachmenttype` VALUES (343, 257, 'New York Reg 60 Form Appendix 10A', 'OLI_ATTACH_APPEN10A', 'A replacement form necessary to comply with New York Reg 60');
INSERT INTO `oli_lu_attachmenttype` VALUES (344, 258, 'New York Reg 60 Form Appendix 10B', 'OLI_ATTACH_APPEN10B', 'A replacement form necessary to comply with New York Reg 60');
INSERT INTO `oli_lu_attachmenttype` VALUES (345, 259, 'New York Reg 60 Form Appendix 10C', 'OLI_ATTACH_APPEN10C', 'A replacement form necessary to comply with New York Reg 60');
INSERT INTO `oli_lu_attachmenttype` VALUES (346, 2550350, 'New York Regulation 60 Disclosure Form', 'OLI_ATTACH_REG60', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (347, 261, 'Non-Inspection Reason', 'OLI_ATTACH_NONINSPREASON', 'Attachment contains information derived from sources other than an inspection report that might be used as reasons for modifying or rejecting a policy. This information is typically used for Fair Credit letters.');
INSERT INTO `oli_lu_attachmenttype` VALUES (348, 102, 'Non-Medical Declaration', 'OLI_ATTACH_NONMEDDEC', 'Statement of personal health, used in lieu of physical examination');
INSERT INTO `oli_lu_attachmenttype` VALUES (349, 101, 'Non-Medical Exam', 'OLI_ATTACH_NONMED', 'Document which captures results of examination performed by a paramedical examiner.');
INSERT INTO `oli_lu_attachmenttype` VALUES (350, 2550340, 'Non-NAIC Model Replacement Form', 'OLI_ATTACH_NONNAICREPLACEMENT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (351, 2550175, 'Non- NAIC SPDA Disclosure Form', 'OLI_ATTACH_NONNAICSPDA', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (352, 486, 'Note from Buyer', 'OLI_ATTACH_BUYERNOTE', 'Contains comments or notes from the buyer to the seller in an invoicing context.');
INSERT INTO `oli_lu_attachmenttype` VALUES (353, 485, 'Note from Seller', 'OLI_ATTACH_SELLERNOTE', 'Contains comments or notes from the seller to the buyer in an invoicing context.');
INSERT INTO `oli_lu_attachmenttype` VALUES (354, 510, 'Notice Concerning Policyholder Rights', 'OLI_ATTACH_NOTICE_POLHLDR_RIGHTS', 'The Notice Concerning Policyholder Rights is a document that explains the Company\'s information practices.');
INSERT INTO `oli_lu_attachmenttype` VALUES (355, 212, 'Not Taken Option', 'OLI_ATTACH_DISBNTO', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (356, 532, 'Obituary', 'OLI_ATTACH_OBITUARY', 'A notice of a death, often published in a newspaper, that is typically accompanied by a brief biography of the decedent.');
INSERT INTO `oli_lu_attachmenttype` VALUES (357, 503, 'Occupation Specialty Schedule', 'OLI_ATTACH_OCCUSPSCHED', 'Additional details pertaining to the occupations included in a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (358, 512, 'One Time Withdrawal Form', 'OLI_ATTACH_ONETIMEWITHDRAWAL', 'This is a form carriers use to process one-time withdrawal requests. This form is usually used for both one-time withdrawal request as well as partial withdrawal requests.');
INSERT INTO `oli_lu_attachmenttype` VALUES (359, 302, 'Open Enrollment', 'OLI_ATTACH_OPENENROLL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (360, 10, 'Original Application', 'OLI_ATTACH_ORIGINALAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (361, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (362, 106, 'Other Exam Form', 'OLI_ATTACH_EXAMFORM', 'Carrier specific form used to capture results of an examination.');
INSERT INTO `oli_lu_attachmenttype` VALUES (363, 2550212, 'Ownership Disclosure - Non-Natural or Corp Owned', 'OLI_ATTACH_OWNDISCNNCO', 'Ownership Disclosure - Non-Natural or Corporate Owned Form');
INSERT INTO `oli_lu_attachmenttype` VALUES (364, 2550214, 'Ownership Disclosure - Notice for Active Duty USAF', 'OLI_ATTACH_OWNDISCMIL', 'Ownership Disclosure - Important notice for Active Duty Members of the United States Armed Forces');
INSERT INTO `oli_lu_attachmenttype` VALUES (365, 103, 'Paramed Exam', 'OLI_ATTACH_PARAMED', 'Document which captures results of examination performed by a paramedical examiner.');
INSERT INTO `oli_lu_attachmenttype` VALUES (366, 514, 'Partial Withdrawal Form', 'OLI_ATTACH_PARTIALWITHDRAWAL', 'This is a form carriers use to process partial withdrawal requests.');
INSERT INTO `oli_lu_attachmenttype` VALUES (367, 2550234, 'Payment - Acceptable forms of Payment Notice', 'OLI_ATTACH_PAYFORM', 'Payment - Acceptable forms of Payment Notice (Disclosure)');
INSERT INTO `oli_lu_attachmenttype` VALUES (368, 540, 'Payment Authorization Form', 'OLI_ATTACH_PAYMENTAUTHFORM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (369, 2550232, 'Payment - Pre-Authorized Investment Form (PAC)', 'OLI_ATTACH_PAYPAC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (370, 504, 'Performance Guarantee', 'OLI_ATTACH_PERFGUARAN', 'A request for a performance guarantee that is typically included in a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (371, 327, 'Personal History Interview', 'OLI_ATTACH_PERSHISTINTERVIEW', 'The Attachment is the result of a request for the results of the Personal History Interview');
INSERT INTO `oli_lu_attachmenttype` VALUES (372, 303, 'Plan History', 'OLI_ATTACH_PLANHIST', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (373, 399, 'Policy Delivery - Evaluation Guide', 'OLI_ATTACH_EVALGUIDE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (374, 126, 'Policy Delivery Receipt', 'OLI_ATTACH_POLDELVRCPT', 'Document signed by policyowner indicating that they have received the policy contract. Can also be signed by the agent.');
INSERT INTO `oli_lu_attachmenttype` VALUES (375, 81, 'Policy Summary', 'OLI_ATTACH_POLSUMMARY', 'The policy summary is a document, that contains certain legally required data regarding the specific policy being considered by the applicant. Such data includes premiums payable, benefits provided, cash values, and cost indexes.');
INSERT INTO `oli_lu_attachmenttype` VALUES (376, 519, 'Politically Exposed Person Form', 'OLI_ATTACH_PEFPFORM', 'Disclosure of information for related persons and relationships of the owner(s) to politically exposed individuals.');
INSERT INTO `oli_lu_attachmenttype` VALUES (377, 2550270, 'Power Of Attorney Affidavit', 'OLI_ATTACH_POA', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (378, 120, 'Pre-Authorized Check (PAC) Authorization', 'OLI_ATTACH_PACAUTH', 'Authorization to withdraw funds from an account, which also provides the account detail.');
INSERT INTO `oli_lu_attachmenttype` VALUES (379, 121, 'Pre-Authorized Check (PAC) Authorization/Voided Check', 'OLI_ATTACH_PACAUTHVOID', 'Authorization to withdraw funds from an account, which also provides the account detail. Voided check for the account is attached to the authorization.');
INSERT INTO `oli_lu_attachmenttype` VALUES (380, 116, 'Pre-Authorized Check (PAC) Correspondence', 'OLI_ATTACH_CORRPAC', 'Document communicating information related to the authorization to withdraw funds.');
INSERT INTO `oli_lu_attachmenttype` VALUES (381, 6, 'Pre-Candidate Illustration', 'OLI_ATTACH_PRECAND', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (382, 252, 'Preliminary Application', 'OLI_ATTACH_PRELIMAPP', 'A means of collecting basic information about the client and the policy being applied for, allowing the producer to initiate the new business process. The full application is completed after the new business process has begun. This type of application is also called a quick ticket.');
INSERT INTO `oli_lu_attachmenttype` VALUES (383, 517, 'Premium Allocation Form', 'OLI_ATTACH_PREMIUMALLOCATIONFORM', 'Allocation of payments/deposits across investment product coverages.');
INSERT INTO `oli_lu_attachmenttype` VALUES (384, 122, 'Premium Check - Initial Premium (COD)', 'OLI_ATTACH_PREMCHK', 'Check providing for payment of on-going premium');
INSERT INTO `oli_lu_attachmenttype` VALUES (385, 182, 'Premium Check - Ongoing Premiums', 'OLI_ATTACH_MONEYPREMCHK', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (386, 304, 'Premium Report', 'OLI_ATTACH_PREMIUM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (387, 22, 'Prescription data', 'OLI_ATTACH_PRESCRIPTION_PROFILE', 'Data associated with this attachment contain the results of a Prescription Profile');
INSERT INTO `oli_lu_attachmenttype` VALUES (388, 305, 'Presentation', 'OLI_ATTACH_PRESENT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (389, 324, 'Pre-Tax Section 125 / Other Tax Considerations', 'OLI_ATTACH_TAX125', 'IRC - Section 125 plans your employees are able to pay for eligible fringe benefits with\"pre-tax\" income');
INSERT INTO `oli_lu_attachmenttype` VALUES (390, 2550100, 'Privacy Notice', 'OLI_ATTACH_PRIVACYNOTE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (391, 79, 'Producer Card (a.k.a. Agent Card)', 'OLI_ATTACH_AGENTCARD', 'Agent cards provide pertinent information about a policy for use in manual files.');
INSERT INTO `oli_lu_attachmenttype` VALUES (392, 306, 'Product Criteria Form', 'OLI_ATTACH_PRODUCT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (393, 2550410, 'Proof of Delivery Statement', 'OLI_ATTACH_PROOFOFDEL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (394, 307, 'Proposal Information', 'OLI_ATTACH_PROPOSAL_INFO', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (395, 308, 'Provider/Network Information', 'OLI_ATTACH_PROVIDER', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (396, 251, 'Publicly Disclosable Information', 'OLI_ATTACH_INFO', 'Information such as that relating to product features, benefits, constraints and costs. Example: \"This spousal protection rider provides continued benefits after the death of the primary annuitant.\" Typically \"why and what\" information. This information may be printed/viewed/displayed to a customer.');
INSERT INTO `oli_lu_attachmenttype` VALUES (397, 164, 'Pulmonary Function Tests', 'OLI_ATTACH_APSPULMONARY', 'Results of tests performed to ascertain applicant\'s respiratory health.');
INSERT INTO `oli_lu_attachmenttype` VALUES (398, 323, 'Qualifications', 'OLI_ATTACH_QUALIF', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (399, 2550430, 'Qualified Plan Disclosures', 'OLI_ATTACH_QUALPLANDISC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (400, 2550432, 'Qualified Plan Disclosure - Simple IRA Employer Form', 'OLI_ATTACH_QUALSIMPLE', 'Qualified Plan Disclosure - Simple IRA Employer Information Form');
INSERT INTO `oli_lu_attachmenttype` VALUES (401, 2550434, 'Qualified Plan Disclosure - Tax Sheltered Annuity', 'OLI_ATTACH_QUALTSA', 'Qualified Plan Disclosure - Tax Sheltered Annuity Certification Form');
INSERT INTO `oli_lu_attachmenttype` VALUES (402, 400, 'Questionnaire - Activities of Daily Living', 'OLI_ATTACH_DAILYLIVQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (403, 401, 'Questionnaire - Alcohol or Drug Use', 'OLI_ATTACH_ALCOHOLQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (404, 402, 'Questionnaire - Arthritis', 'OLI_ATTACH_ARTHRITISQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (405, 403, 'Questionnaire - Assessment', 'OLI_ATTACH_ASSESSQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (406, 404, 'Questionnaire - Avocation', 'OLI_ATTACH_AVOCATIONQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (407, 405, 'Questionnaire - Back Pain', 'OLI_ATTACH_BACKPAINQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (408, 406, 'Questionnaire - Beneficial Ownership', 'OLI_ATTACH_BENEFICIALQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (409, 407, 'Questionnaire - Blood Pressure', 'OLI_ATTACH_BLOODPRESQS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (410, 408, 'Questionnaire - Client Information', 'OLI_ATTACH_CLIENTIINFOQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (411, 409, 'Questionnaire - Climbing', 'OLI_ATTACH_CLIMBQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (412, 410, 'Questionnaire - Colitis', 'OLI_ATTACH_COLITISQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (413, 411, 'Questionnaire - Coronary and Angina', 'OLI_ATTACH_CORONARYQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (414, 412, 'Questionnaire - Digestive / Bowel Disorder', 'OLI_ATTACH_DIGESTIVEQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (415, 413, 'Questionnaire - Driving History', 'OLI_ATTACH_DRIVHISTQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (416, 414, 'Questionnaire - Emotional Health', 'OLI_ATTACH_EMOTHEALQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (417, 415, 'Questionnaire - Fainting', 'OLI_ATTACH_FAINTINGQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (418, 416, 'Questionnaire - Family History', 'OLI_ATTACH_FAMILYQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (419, 309, 'Questionnaire for Carrier Completion', 'OLI_ATTACH_QUEST', 'A list of questions provided to the carrier in a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (420, 417, 'Questionnaire - Gastro-Intestinal', 'OLI_ATTACH_GASTROIN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (421, 418, 'Questionnaire - Gynaecological', 'OLI_ATTACH_GYNQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (422, 419, 'Questionnaire - Headache', 'OLI_ATTACH_HEADACHE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (423, 420, 'Questionnaire - Kidney', 'OLI_ATTACH_KIDNEYQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (424, 421, 'Questionnaire - Liver', 'OLI_ATTACH_LIVERQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (425, 422, 'Questionnaire - Mature Age', 'OLI_ATTACH_MATUREQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (426, 423, 'Questionnaire - Military', 'OLI_ATTACH_MILITARYQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (427, 425, 'Questionnaire - Motorcycle', 'OLI_ATTACH_MOTORCYCLE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (428, 424, 'Questionnaire - Motor Sport', 'OLI_ATTACH_MOTORSPORTSQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (429, 426, 'Questionnaire - Neurological', 'OLI_ATTACH_NEUROLOQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (430, 427, 'Questionnaire - Nicotine', 'OLI_ATTACH_NICOTINEQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (431, 428, 'Questionnaire - Occupation', 'OLI_ATTACH_OCCUPATIONQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (432, 429, 'Questionnaire - Part 2 (Paramedical / Medical)', 'OLI_ATTACH_MEDICALP2', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (433, 430, 'Questionnaire - Physical Demands', 'OLI_ATTACH_PHYSICALDEMAQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (434, 431, 'Questionnaire - Physiotherapy Report', 'OLI_ATTACH_PHYSIOTHERYQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (435, 518, 'Questionnaire - Politically Exposed Person', 'OLI_ATTACH_QPEFP', 'Initial questions used to determine if a Politically Exposed Person Form is required.');
INSERT INTO `oli_lu_attachmenttype` VALUES (436, 432, 'Questionnaire - Power Boat Racing', 'OLI_ATTACH_POWERBOATQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (437, 433, 'Questionnaire - Psychiatric', 'OLI_ATTACH_PSYCHIATRICQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (438, 434, 'Questionnaire - Respiratory', 'OLI_ATTACH_RESPIRATORYQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (439, 435, 'Questionnaire - Scuba Diving', 'OLI_ATTACH_SCUBAQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (440, 436, 'Questionnaire - Skydiving, Parachuting', 'OLI_ATTACH_SKYDIVINGQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (441, 437, 'Questionnaire - Snowmobiling', 'OLI_ATTACH_SNOWMOBILEQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (442, 438, 'Questionnaire - Temporary Insurance Agreement', 'OLI_ATTACH_TEMPAGREE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (443, 439, 'Questionnaire - Tumour', 'OLI_ATTACH_TUMORQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (444, 139, 'Racing Questionnaire/Supplement', 'OLI_ATTACH_QRACING', 'Document used to gather more detailed information about applicant\'s racing experience reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (445, 311, 'Rate/Financial Information', 'OLI_ATTACH_RATEINFO', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (446, 310, 'Rate History', 'OLI_ATTACH_RATEHIST', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (447, 2550042, 'Registered Fixed Annuity Prospectus (MVA and EIA)', 'OLI_ATTACH_FIXEDPROSP', 'Registered Fixed Annuity Prospectus (including MVA and EIA)');
INSERT INTO `oli_lu_attachmenttype` VALUES (448, 230, 'Release of Commission Assignment', 'OLI_ATTACH_COMMREL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (449, 118, 'Remittance Log', 'OLI_ATTACH_REMITLOG', 'Document, which accompanies one or more checks/financial records, used to list and describe the individual items');
INSERT INTO `oli_lu_attachmenttype` VALUES (450, 312, 'Renewal Notification', 'OLI_ATTACH_RENEWAL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (451, 107, 'Replacement Form', 'OLI_ATTACH_REPLF', 'State specific replacement form, which informs the applicant about the implications of using the policy being applied for to replace existing insurance.');
INSERT INTO `oli_lu_attachmenttype` VALUES (452, 167, 'Reports, Office and Hospital Records', 'OLI_ATTACH_APSREPORT', 'Details of an applicant\'s medical history, provided by a health care provider other than a physician');
INSERT INTO `oli_lu_attachmenttype` VALUES (453, 8, 'Reproposal', 'OLI_ATTACH_REPROPOSAL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (454, 440, 'Request - Disclosure of Reasons for UW Decision', 'OLI_ATTACH_DISCLOSUREREA', 'Request - Disclosure of Reasons for Underwriting Decision');
INSERT INTO `oli_lu_attachmenttype` VALUES (455, 441, 'Request - Duplicate Policy', 'OLI_ATTACH_DUPLICATERQ', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (456, 442, 'Request - Supplies (Group)', 'OLI_ATTACH_SUPPLIESGR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (457, 443, 'Request - Supplies (Insurance)', 'OLI_ATTACH_SUPPLIESINS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (458, 444, 'Request - Supplies (Investment)', 'OLI_ATTACH_SUPPLIESINV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (459, 246, 'Requirement Result.', 'OLI_ATTACH_REQUIRERESULTS', 'Data associated with this attachment contain the results of a Requirement Result.');
INSERT INTO `oli_lu_attachmenttype` VALUES (460, 245, 'Requirements Request', 'OLI_ATTACH_REQUIREREQUEST', 'Data associated with this attachment contain the information of an Requirement request');
INSERT INTO `oli_lu_attachmenttype` VALUES (461, 117, 'Resident Alien Card', 'OLI_ATTACH_RESALIENCD', 'Documentation that applicant is not a citizen but does have resident alien status');
INSERT INTO `oli_lu_attachmenttype` VALUES (462, 143, 'Resident Alien Questionnaire/Supplement', 'OLI_ATTACH_QRESALIEN', 'Document used to gather more detailed information about applicant\'s resident alien status.');
INSERT INTO `oli_lu_attachmenttype` VALUES (463, 522, 'Restriction Note', 'OLI_ATTACH_RESTRICTNOTE', 'Used to document restrictions, such as those documented with financial guidelines.');
INSERT INTO `oli_lu_attachmenttype` VALUES (464, 119, 'Returned Check', 'OLI_ATTACH_RETURNCHK', 'Check that is being returned because it could not be accepted and/or processed');
INSERT INTO `oli_lu_attachmenttype` VALUES (465, 128, 'Returned Original Policy', 'OLI_ATTACH_RETORIGPOL', 'Original policy contract that is being returned to the carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (466, 11, 'Revised Application', 'OLI_ATTACH_REVISEDAPP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (467, 9, 'Revised Illustration', 'OLI_ATTACH_REVISEDILLUS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (468, 313, 'RFP Instructions', 'OLI_ATTACH_RFP', 'Request for Proposal Instructions');
INSERT INTO `oli_lu_attachmenttype` VALUES (469, 2550280, 'Rider Reset Authorization Form', 'OLI_ATTACH_RIDERRESET', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (470, 2550090, 'Risk Tolerance Questionnaire', 'OLI_ATTACH_RISKTOL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (471, 2550140, 'Sales Summary Disclosure', 'OLI_ATTACH_SALESDISCOSURE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (472, 262, 'SEC N-4 Sec Registration Narrative Explanation', 'OLI_ATTACH_SECN_4', 'Footnote or other explanatory narrative further describing an element\'s context, meaning or use.');
INSERT INTO `oli_lu_attachmenttype` VALUES (473, 539, 'Secondary Address Form', 'OLI_ATTACH_SECONDADDRESSFORM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (474, 445, 'Segregated Funds - Reset', 'OLI_ATTACH_RESETSEGRFUNDS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (475, 133, 'Seizure Disorder Questionnaire/Supplement', 'OLI_ATTACH_QSEIZURE', 'Document used to gather more detailed information about applicant\'s seizure disorder reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (476, 446, 'Service - Banking / Premium Payment', 'OLI_ATTACH_BANKPREMPAY', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (477, 447, 'Service - Bene, Owner, Trustee, Assignment, Name', 'OLI_ATTACH_BENENAMECORR', 'Service - Beneficiary, Owner, Trustee, Assignment, Name');
INSERT INTO `oli_lu_attachmenttype` VALUES (478, 448, 'Service - Cancellation / Termination', 'OLI_ATTACH_CANCELLSERV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (479, 449, 'Service - Creditor Request', 'OLI_ATTACH_CREIDTORREQSERV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (480, 450, 'Service - Deposit Notice', 'OLI_ATTACH_DEPOSITNOTESERV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (481, 2550440, 'Service Forms', 'OLI_ATTACH_SERVICEFORM', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (482, 314, 'Service Level Agreement', 'OLI_ATTACH_SERVICELVL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (483, 451, 'Service - Loan Repayment', 'OLI_ATTACH_LOANREPAYSERV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (484, 452, 'Service - Non-Financial Update', 'OLI_ATTACH_NONFINUPDATE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (485, 453, 'Service - Ownership or Beneficiary', 'OLI_ATTACH_OWNERSERV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (486, 454, 'Service - Payee', 'OLI_ATTACH_PAYEESERV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (487, 455, 'Service - Phone Restriction', 'OLI_ATTACH_PHONESERV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (488, 456, 'Service - Policy', 'OLI_ATTACH_POLICYSERV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (489, 457, 'Service - Registered Investment Transfer', 'OLI_ATTACH_TRANSFERSERV', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (490, 458, 'Service - Release of Beneficiary\'s Interest', 'OLI_ATTACH_RELBENEINT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (491, 459, 'Service - Release of Collateral Assignment', 'OLI_ATTACH_RELCOLLASS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (492, 460, 'Service - Rider Election / Addition of Coverage', 'OLI_ATTACH_RIDERELEC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (493, 461, 'Service - Servicing Representative Change', 'OLI_ATTACH_SERVREPCHG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (494, 462, 'Service - Status Change', 'OLI_ATTACH_STATUSCHG', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (495, 255, 'Short Portable Mental Status Questionnaire', 'OLI_ATTACH_SPMSQ', 'A short portable mental status questionnaire for the assessment of organic brain deficit in elderly patients. This is commonly known as SPMSQ.');
INSERT INTO `oli_lu_attachmenttype` VALUES (496, 104, 'Signed Tele-med', 'OLI_ATTACH_TELMEDSGND', 'Part B examination completed by tele-interviewer, signed');
INSERT INTO `oli_lu_attachmenttype` VALUES (497, 82, 'Specification Page', 'OLI_ATTACH_SPECIFICATIONPAGE', 'The specification page is a document that contains which contains high level information regarding the policy such as the plan name, amount of insurance, name and address of the primary insured.');
INSERT INTO `oli_lu_attachmenttype` VALUES (498, 463, 'Statement - Acceptance', 'OLI_ATTACH_ACCEPTANCE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (499, 464, 'Statement - Amounts held in Federal plans', 'OLI_ATTACH_AMOUNTSTAT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (500, 465, 'Statement - Certificate of Discharge', 'OLI_ATTACH_CERTOFDISCH', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (501, 466, 'Statement - Certificate of Existence', 'OLI_ATTACH_CERTOFEXIST', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (502, 467, 'Statement - Child Health', 'OLI_ATTACH_CLDHEALTH', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (503, 468, 'Statement - Client Disclosure', 'OLI_ATTACH_CLTDISCLO', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (504, 469, 'Statement - Compensation (Group)', 'OLI_ATTACH_COMPENSATIONGR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (505, 470, 'Statement - Date of Birth', 'OLI_ATTACH_DOBSTATEMENT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (506, 471, 'Statement - Insurability / Good Health', 'OLI_ATTACH_INSURABILITYSTAT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (507, 472, 'Statement - Interest Rate Guarantee', 'OLI_ATTACH_INTRATEGUARSTAT', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (508, 473, 'Statement - Interpreter', 'OLI_ATTACH_INTERPRETER', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (509, 474, 'Statement - Letter of Direction', 'OLI_ATTACH_LETDIRECTION', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (510, 475, 'Statement - Locked-In Pension Funds', 'OLI_ATTACH_LOCKINPENSION', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (511, 476, 'Statement - Major Cash Deposit', 'OLI_ATTACH_MAJORCASHDEP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (512, 477, 'Statement - Marital Status', 'OLI_ATTACH_MARITALSTATUS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (513, 478, 'Statement - Notary Public Certificate', 'OLI_ATTACH_NOTARY', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (514, 479, 'Statement - Refusal of Coverage', 'OLI_ATTACH_REFUSAL', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (515, 480, 'Statement - Representative Declaration', 'OLI_ATTACH_REPDECLARATION', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (516, 481, 'Statement - Spousal Consent / Waiver', 'OLI_ATTACH_SPOUSALCONS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (517, 482, 'Statement - Third Party Declaration', 'OLI_ATTACH_THRIDPARTY', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (518, 315, 'Strategic Planning', 'OLI_ATTACH_STRATIGIC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (519, 2550370, 'Suitability Determination Form', 'OLI_ATTACH_SUITABILITY', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (520, 511, 'Summary of Premium Provision', 'OLI_ATTACH_SUM_PREMIUM_PROVISION', 'The Summary of Premium Provision is a document that defines the premium options.');
INSERT INTO `oli_lu_attachmenttype` VALUES (521, 316, 'Summary Plan Description', 'OLI_ATTACH_SUMMPLAN', 'A document containing a comprehensive description of a plan, including the terms and conditions of participation. This is typically included in a request for proposal to the insurance carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (522, 161, 'Supplementary application - Child', 'OLI_ATTACH_SUPPAPPCHLD', 'Document providing application detail for a child applying for coverage as an Other Insured');
INSERT INTO `oli_lu_attachmenttype` VALUES (523, 162, 'Supplementary Application - Spouse', 'OLI_ATTACH_SUPPAPPSPSE', 'Document providing application detail for a spouse applying for coverage as an Other Insured');
INSERT INTO `oli_lu_attachmenttype` VALUES (524, 2550220, 'Systematic Withdrawal Form', 'OLI_ATTACH_SYSWITH', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (525, 483, 'Tax - Canada Revenue Agency (CCRA)', 'OLI_ATTACH_CCRA', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (526, 2550260, 'Tax Disclosure Form - W4P', 'OLI_ATTACH_TAXW4P', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (527, 2550250, 'Tax Disclosure Form - W8', 'OLI_ATTACH_TAXW8', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (528, 484, 'Tax - Request to Reduce Tax Deductions at Source', 'OLI_ATTACH_REDUCETAXDED', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (529, 326, 'Teleinterview Note', 'OLI_ATTACH_TELEINTERVIEWNOTE', 'Note with instructions or additional information for the teleinterviewer.');
INSERT INTO `oli_lu_attachmenttype` VALUES (530, 2550230, 'Telephone/ Electronic Transaction Auth Form', 'OLI_ATTACH_TELE', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (531, 531, 'Testamentary Trust Wording', 'OLI_ATTACH_TRUSTWORDING', 'Used to specify the wording of a trust arrangement. Examples include:A credit shelter trust under said will and testamentA trust under Article _____ of said will and testamentA trust under item _____ of said will and testamentThe _____ Trust under said will and testamentFor the Benefit Of _______');
INSERT INTO `oli_lu_attachmenttype` VALUES (532, 137, 'Tobacco Use Questionnaire/Supplement', 'OLI_ATTACH_QTOBACCOUSE', 'Document used to gather more detailed information about applicant\'s use of tobacco reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (533, 109, 'Transmittal', 'OLI_ATTACH_TRANSMITTAL', 'Coversheet attached to the insurance application, used as a tool to communicate information from the producer to the carrier.');
INSERT INTO `oli_lu_attachmenttype` VALUES (534, 317, 'Transparency Disclosure Form', 'OLI_ATTACH_TRNASDISC', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (535, 147, 'Trust Agreement', 'OLI_ATTACH_TRUSTAGRMNT', 'Document provided details about trust agreement.');
INSERT INTO `oli_lu_attachmenttype` VALUES (536, 2550210, 'Trust Document Certificate', 'OLI_ATTACH_TRUST', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (537, 524, 'U.S. W4 Tax Form', 'OLI_ATTACH_TAXW4', 'Employee\'s Withholding Allowance Certificate (U.S. W4 Tax Form)');
INSERT INTO `oli_lu_attachmenttype` VALUES (538, 138, 'Underwater/Sky Sports Questionnaire/Supplement', 'OLI_ATTACH_QDIVESKYSPORT', 'Document used to gather more detailed information about applicant\'s participation in underwater or sky sports reported in the application');
INSERT INTO `oli_lu_attachmenttype` VALUES (539, 80, 'Underwriter Work Sheet', 'OLI_ATTACH_UNDRWRTWKSHT', 'The worksheet, sometimes called a data sheet, is a printout of all available information about the proposed insured and, in some companies pertinent information about the agent who submitted the application.');
INSERT INTO `oli_lu_attachmenttype` VALUES (540, 12, 'Underwriting Note', 'OLI_ATTACH_UNDRWRTNOTE', 'General underwriting note when the intended recipient is not specified.');
INSERT INTO `oli_lu_attachmenttype` VALUES (541, 318, 'Union Contract/Agreement', 'OLI_ATTACH_UNIONCON', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (542, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (543, 105, 'Unsigned Tele-med', 'OLI_ATTACH_TELMEDUNSGND', 'Part B examination completed by tele-interviewer, unsigned');
INSERT INTO `oli_lu_attachmenttype` VALUES (544, 170, 'Urine Test Results - Paper', 'OLI_ATTACH_LABSURINE', 'Results of tests performed on a urine specimen to ascertain the applicant\'s health.');
INSERT INTO `oli_lu_attachmenttype` VALUES (545, 83, 'Values Page', 'OLI_ATTACH_VALUEPAGE', 'The Values page is specific to the type of policy and contains information regarding coverages, benefits, extra ratings, cash value, etc.');
INSERT INTO `oli_lu_attachmenttype` VALUES (546, 2550040, 'Variable Annuity Contract Prospectus', 'OLI_ATTACH_CONTRACTPROSP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (547, 2550060, 'Variable Annuity Profile', 'OLI_ATTACH_VAP', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (548, 2550041, 'Variable Annuity Summary Prospectus', 'OLI_ATTACH_VASUMPROSPECTUS', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (549, 526, 'Voice Signature Image/File', 'OLI_ATTACH_VOICESIGN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (550, 183, 'Void Check', 'OLI_ATTACH_MONEYVOID', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (551, 160, 'W9', 'OLI_ATTACH_TAXW9', 'In the U.S., the IRS Tax Identification Verification Form is the W-9 form.');
INSERT INTO `oli_lu_attachmenttype` VALUES (552, 2550390, 'Welcome Letter', 'OLI_ATTACH_WELCOMELTR', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (553, 13, 'Wet signature image', 'OLI_ATTACH_WETSIGN', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (554, 319, 'Workflow', 'OLI_ATTACH_WORKFLOW', '');
INSERT INTO `oli_lu_attachmenttype` VALUES (555, 97, 'Worksheet', 'OLI_ATTACH_WRKSHT', 'Document providing supporting details for another form, data element or calculation');
INSERT INTO `oli_lu_attachmenttype` VALUES (556, 174, 'X-ray Copy', 'OLI_ATTACH_XCOPY', 'Copy of x-ray film');
INSERT INTO `oli_lu_attachmenttype` VALUES (557, 175, 'X-ray Interpretation', 'OLI_ATTACH_XREPORT', 'Analysis of x-ray film');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_backdate
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_backdate`;
CREATE TABLE `oli_lu_backdate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_backdate_value_unique` (`value`),
  UNIQUE KEY `oli_lu_backdate_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_backdate
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_backdate` VALUES (1, 1, 'Back Date to Save Age', 'OLI_BACKDATE_SAVEAGE', 'The policy is backdated to allow it to be issued at a younger age.');
INSERT INTO `oli_lu_backdate` VALUES (2, 2, 'No backdating', 'OLI_BACKDATE_NONE', '');
INSERT INTO `oli_lu_backdate` VALUES (3, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_backdate` VALUES (4, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_covtype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_covtype`;
CREATE TABLE `oli_lu_covtype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_covtype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_covtype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_covtype
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_covtype` VALUES (1, 147, 'Accelerated Benefit', 'OLI_COVTYPE_ABE', 'Benefits available in some life insurance policies before death. Usually triggered by long-term, catastrophic or terminal illness. Also known as living benefits.');
INSERT INTO `oli_lu_covtype` VALUES (2, 153, 'Accelerated Payment Rider', 'OLI_COVTYPE_ACCPAY', 'Permanent insurance that allows the policy to be paid-up rapidly through guaranteed accelerated payments');
INSERT INTO `oli_lu_covtype` VALUES (3, 127, 'Accidental Death and/or Disability', 'OLI_COVTYPE_ADIB', 'Accidental Death and/or Disability Benefit pays out in the event of either one or more events.');
INSERT INTO `oli_lu_covtype` VALUES (4, 133, 'Accidental Death and Dismemberment', 'OLI_COVTYPE_ADD', '');
INSERT INTO `oli_lu_covtype` VALUES (5, 23, 'Accidental Death Benefit', 'OLI_COVTYPE_ACCDTHBENE', 'The face amount of a life insurance policy is payable only if the insured dies as the result of an accident. OR It can be sold as a supplementary death benefit rider that provides for an amount of money in addition to the face amount of a life insurance policy. This additional amount is also payable only if the insured dies as the result of an accident.');
INSERT INTO `oli_lu_covtype` VALUES (6, 31, 'Accidental Disability Benefit', 'OLI_COVTYPE_ACCDISBENE', '');
INSERT INTO `oli_lu_covtype` VALUES (7, 154, 'Accidental Fracture', 'OLI_COVTYPE_ACCFRAC', 'Covers accidental bone fractures');
INSERT INTO `oli_lu_covtype` VALUES (8, 22, 'Accumulated Dividend', 'OLI_COVTYPE_ACCUMDIV', 'Dividend option under which a policy\'s dividends are left on deposit with the company to earn interest. Both the interest and accumulated dividends are available to the policyholder for withdrawal at any time.');
INSERT INTO `oli_lu_covtype` VALUES (9, 159, 'Activities of Daily Living Income Benefit Rider', 'OLI_COVTYPE_INDLIVING', 'Rider that provides additional benefits when the insured is ADL disabled.');
INSERT INTO `oli_lu_covtype` VALUES (10, 152, 'Adjustable Premium Whole Life', 'OLI_COVTYPE_WLADJ', 'Adjustable whole life policies are permanent policies that provide lifetime protection but do not offer guaranteed premiums. Adjustable whole life policies ties premium to interest rates.  If interest rates decrease, premiums may adjust upwards. However, if interest rates increase, premiums will do the logical opposite and shift downward.');
INSERT INTO `oli_lu_covtype` VALUES (11, 52, 'Aids', 'OLI_COVTYPE_AIDS', '');
INSERT INTO `oli_lu_covtype` VALUES (12, 20, 'Annuity', 'OLI_COVTYPE_ANNUITY', 'a) A series of payments made or received at regular intervals. b) A contract that provides for a series of payments to be made or received at regular intervals. Annuity is valued at fixed rate.');
INSERT INTO `oli_lu_covtype` VALUES (13, 155, 'Auto Adjust of death benefit for tax exempt status', 'OLI_COVTYPE_AUTOADJUST', 'Automatic Adjustment of death benefit for tax exempt status.This option allows for the automatic adjustment of the policy value to the minimum amount necessary to maintain the policy tax exempt status.');
INSERT INTO `oli_lu_covtype` VALUES (14, 146, 'Business Value Increase', 'OLI_COVTYPE_BUSVALINC', 'Automatic increase option that is tied to valuation of the business. As the business value goes up, the face amount of policy increases.');
INSERT INTO `oli_lu_covtype` VALUES (15, 144, 'Cancer - Stage 0', 'OLI_COVTYPE_PRECANCER', 'Benefits payable from Stage 0 cancer.  This form of cancer is characterized as a defined malignant tumour without the invasion of surrounding tissue and may be known as precancer or early cancer.');
INSERT INTO `oli_lu_covtype` VALUES (16, 62, 'Cancer - Stage 1', 'OLI_COVTYPE_CANCER', 'Benefits payable from Stages 1 - 4 cancer, and includes bone marrow disease.');
INSERT INTO `oli_lu_covtype` VALUES (17, 71, 'Child birth benefit', 'OLI_COVTYPE_CHILDBRTH', 'Covers birth defects for future children.');
INSERT INTO `oli_lu_covtype` VALUES (18, 60, 'Child critical illness', 'OLI_COVTYPE_CHILDCRIT', 'Covers a range of critical illnesses, such as cancer, organ transplantation, some severe infections, heart abnormalities');
INSERT INTO `oli_lu_covtype` VALUES (19, 116, 'Child Term Rider', 'OLI_COVTYPE_CHILDTERM', 'Insurance protection that offers level term premiums, level death benefit, and an option to convert at specified times for eligible children.');
INSERT INTO `oli_lu_covtype` VALUES (20, 134, 'Combined Risk Benefit', 'OLI_COVTYPE_COMBI', 'A single benefit that covers multiple risks. This may also be known as a \"combined benefit.\" Typically, this will be used to represent different permutations of combined benefits, eg disability and/or dread disease covered in a single benefit.');
INSERT INTO `oli_lu_covtype` VALUES (21, 157, 'Compassionate Leave Benefit', 'OLI_COVTYPE_COMPLVBENE', 'Covers income loss of the care provider in the event of illness or disability of the insured.');
INSERT INTO `oli_lu_covtype` VALUES (22, 142, 'Conditional Receipt', 'OLI_COVTYPE_CONDRECEIPT', 'In life insurance, a receipt for premiums received from the applicant, typically at the time of sale, which provides conditional insurance coverage as defined in the receipt. The conditional insurance coverage continues until the insurance company either refunds the premium or accepts the risk and issues the policy. Coverage under a Conditional Receipt (as opposed to Temporary Insurance Agreement) is conditional on the person being insured having completed all medical requirements and being insurable on the premium basis applied for. Often, insurance companies only issue conditional receipts up to certain death benefit limits, for example below $250,000.');
INSERT INTO `oli_lu_covtype` VALUES (23, 63, 'Connective tissue diseases', 'OLI_COVTYPE_CTD', 'Covers autoimmune illnesses that cause the body to attack its own joints, vessels or tissues.');
INSERT INTO `oli_lu_covtype` VALUES (24, 145, 'Cost of Living Adjustment / Inflation Guard', 'OLI_COVTYPE_COLI', 'Tied to government index, usually CPI.');
INSERT INTO `oli_lu_covtype` VALUES (25, 35, 'Credit Mortgage', 'OLI_COVTYPE_CREDITMORT', '');
INSERT INTO `oli_lu_covtype` VALUES (26, 33, 'Critical Illness', 'OLI_COVTYPE_CRITILLNESS', 'Critical Illness is designed to assist individuals by cover excess expenses (usually beyond what health care or disability insurance would cover) in the event that an individual contracts one of the diseases (usually 5-7 diseases) named in the policy. It usually pay a lump sum upon proof of claim.');
INSERT INTO `oli_lu_covtype` VALUES (27, 42, 'Critical illness premium waiver', 'OLI_COVTYPE_WPCRIT', 'Covers cost of the policy contributions in the event of the principal insured becoming severely ill.');
INSERT INTO `oli_lu_covtype` VALUES (28, 104, 'Danish Annuity Certain Savings Coverage 175', 'OLI_COVTYPE_DENSAVINGS175', '175 is a Danish Annuity Certain Savings Coverage');
INSERT INTO `oli_lu_covtype` VALUES (29, 108, 'Danish Death Annuity Certain Coverage 165', 'OLI_COVTYPE_DENDTHANNUITY165', '165 is a death annuity coverage');
INSERT INTO `oli_lu_covtype` VALUES (30, 109, 'Danish Death Lump Sum Coverage 115', 'OLI_COVTYPE_DENDTHLUMPSUM115', '115 is death Lump sum coverage');
INSERT INTO `oli_lu_covtype` VALUES (31, 106, 'Danish Deferred Annuity Savings Coverage 216', 'OLI_COVTYPE_DENDEFANNUITY216', '216 is a Danish Deferred Annuity Savings Coverage');
INSERT INTO `oli_lu_covtype` VALUES (32, 105, 'Danish Deferred Life Annuity Savings Coverage 211', 'OLI_COVTYPE_DENDEFLIFE211', '211 is a Danish Deferred Life Annuity Savings Coverage');
INSERT INTO `oli_lu_covtype` VALUES (33, 107, 'Danish Guaranteed Life Annuity Coverage 265', 'OLI_COVTYPE_DENGUARLIFEANN265', '265 is a deferred annuity payable on death');
INSERT INTO `oli_lu_covtype` VALUES (34, 103, 'Danish Lump Sum Savings Coverage 125', 'OLI_COVTYPE_DENSAVINGS125', '125 is a Danish Lump Sum Savings Coverage');
INSERT INTO `oli_lu_covtype` VALUES (35, 14, 'Disability (Income Protection) - Generic', 'OLI_COVTYPE_DISABILITY', 'Health insurance under which benefits are payable in regular installments designed to replace some of the insured\'s income if he or she becomes unable to work because of an illness or injury where the nature of the disability is unknown or not specified.');
INSERT INTO `oli_lu_covtype` VALUES (36, 162, 'Disability (Income Protection) - Permanent', 'OLI_COVTYPE_PERMDISABILITY', 'Health insurance under which benefits are payable in regular installments designed to replace some of the insured\'s income if he or she becomes unable to work because of an illness or injury of a permanent nature. Benefits may be payable for a term less than the insured\'s lifetime. Refer to OLI_COVTYPE_LIFTOTDIS for Lifetime Benefits.');
INSERT INTO `oli_lu_covtype` VALUES (37, 161, 'Disability (Income Protection) - Temporary', 'OLI_COVTYPE_TEMPDISABILITY', 'Health insurance under which benefits are payable in regular installments designed to replace some of the insured\'s income if he or she becomes unable to work because of an illness or injury of a temporary nature.');
INSERT INTO `oli_lu_covtype` VALUES (38, 156, 'Disability - Loan Protection', 'OLI_COVTYPE_DIMORTGAGE', 'Makes payments towards your mortgage or other long term loan, in the event you are disabled.');
INSERT INTO `oli_lu_covtype` VALUES (39, 17, 'Dread Disease', 'OLI_COVTYPE_DREADDISEASE', 'A type of medical expense policy that is designed to cover only those medical expenses incurred by an insured who has contracted a specified disease, such as cancer, which is named in the policy. Also known as limited coverage policy.');
INSERT INTO `oli_lu_covtype` VALUES (40, 122, 'Dread Disease and Impairment', 'OLI_COVTYPE_DREADIMPAIR', 'Cover in the event of either the life assured contracting a dreaded disease or becoming impaired.');
INSERT INTO `oli_lu_covtype` VALUES (41, 70, 'Education cover', 'OLI_COVTYPE_EDUCATION', 'Covers cost of education in the event of the principal insured becoming severely ill, disabled or dies.');
INSERT INTO `oli_lu_covtype` VALUES (42, 100, 'Endowment', 'OLI_COVTYPE_ENDOWMENT', '');
INSERT INTO `oli_lu_covtype` VALUES (43, 151, 'Enhanced cash value option', 'OLI_COVTYPE_ENHANCEDCV', 'Provides an enhanced first year cash surrender value if certain premium requirements are met.');
INSERT INTO `oli_lu_covtype` VALUES (44, 115, 'Enhanced Disability Benefit', 'OLI_COVTYPE_ENHANCEDISABILITY', 'Pays the greater of a percentage of the annual target premium OR the monthly charges during the insured\'s total disability');
INSERT INTO `oli_lu_covtype` VALUES (45, 26, 'Estate Protector Rider', 'OLI_COVTYPE_ESTATEPROT', 'A plan developed with the help of qualified professionals to designate who will inherit your assets and in what amounts. Also, who will care for your children, who will manage the distribution of your assets, and to some extent, taking into consideration federal estate taxes.');
INSERT INTO `oli_lu_covtype` VALUES (46, 12, 'Excess Interest Life', 'OLI_COVTYPE_EXINTLIFE', 'Amount credited to the cash value of an insured\'s life insurance policy above the minimum interest rate it guarantees. This payment is of extreme importance to a  policy owner since it will directly affect the size of the cash value.');
INSERT INTO `oli_lu_covtype` VALUES (47, 25, 'Family Income', 'OLI_COVTYPE_FAMILYINC', 'A specialized individual policy, which combines whole life insurance with decreasing term insurance. The decreasing term portion of the policy provides an income for a predetermined period to help support the insured\'s\' family.');
INSERT INTO `oli_lu_covtype` VALUES (48, 138, 'Family Rider', 'OLI_COVTYPE_FAMILY', 'This type of coverage provides life insurance coverage on the insured\'s family, including spouse and children. The coverage provided through such a rider is term insurance and is often sold on the basis of coverage units and does not vary by actual number of individuals covered. Coverage on the child expires when the child reaches a specified age. Future children are automatically insured after birth, legal adoption, legal guardianship, etc. depending on policy provisions.Family riders include the privilege to convert the term part of the contract to permanent insurance, this insurance on dependents will become paid up when the primary insured dies, and there is a decrease in the premium and/or automatic increase in the amount of insurance on the primary insured if his or her spouse dies first.');
INSERT INTO `oli_lu_covtype` VALUES (49, 132, 'Family Trauma Benefit', 'OLI_COVTYPE_FAMILYTRAUMA', 'Accidental, non self-inflicted injury to any area of the body. Family is defined as the principal life, spouse or companion, and children as defined by carrier rule.');
INSERT INTO `oli_lu_covtype` VALUES (50, 61, 'Female benefit', 'OLI_COVTYPE_FEMCRIT', 'Covers female specific critical illness, such as pregnancy complications, female cancers and osteoporosis.');
INSERT INTO `oli_lu_covtype` VALUES (51, 24, 'Flexible Additional Insurance', 'OLI_COVTYPE_FLEXADDON', 'This is actually level term insurance with an option to purchase additional insurance.');
INSERT INTO `oli_lu_covtype` VALUES (52, 28, 'Funeral Expense', 'OLI_COVTYPE_FUNEXP', '');
INSERT INTO `oli_lu_covtype` VALUES (53, 135, 'Future Premium Waiver', 'OLI_COVTYPE_PAIDUP', 'This benefit provides for the premiums to cease at a future date (usually at age 65), while all benefits remain active and in force for the balance of the policy term. It is effectively a way to insure future benefits after retirement.');
INSERT INTO `oli_lu_covtype` VALUES (54, 66, 'Gastrointestinal disease', 'OLI_COVTYPE_GAST', 'Covers diseases of the gastrointestinal tract that results in continuous hospitalization, and terminal changes to these organs.');
INSERT INTO `oli_lu_covtype` VALUES (55, 68, 'Global health care cover', 'OLI_COVTYPE_GLOBHLTH', 'Covers the cost of procedures in another country, where the prognosis of recovery is recognized to be better than that in the insured\'s domicile country.');
INSERT INTO `oli_lu_covtype` VALUES (56, 137, 'Global Linkage Benefit Guarantee', 'OLI_COVTYPE_GLOBALLINKAGEBENEFIT', 'The Global Linkage Benefit Guarantee links the amount of risk coverage provided by other coverages on the contract to the performance of the global market. This is a type of benefit guarantee (or Death Benefit Guarantee) where the guaranteed amount is determined by the global market\'s growth. At the time of a claim, the amount of risk coverage will be determined by the GREATER of the Global Linkage Benefit Guarantee\" amount (i.e. the CurrentAmt of the Coverage with the LifeCovTypeCode of \"Global Linkage Benefit Guarantee\") OR the benefit amount of the individual Coverage (i.e. the CurrentAmt of the Coverage paying the claim). The coverages that receive this benefit guarantee are not selectable. Rather, the benefit guarantee applies to other coverages on the Policy as defined by the product (i.e. it typically applies to all other coverages on the contract.');
INSERT INTO `oli_lu_covtype` VALUES (57, 130, 'Group Pension', 'OLI_COVTYPE_PENSION', 'It is a grouped retirement fund opposed to a Retirement Annuity which is an individual retirement fund.');
INSERT INTO `oli_lu_covtype` VALUES (58, 102, 'Guaranteed Insurability', 'OLI_COVTYPE_GIB', '');
INSERT INTO `oli_lu_covtype` VALUES (59, 15, 'Guaranteed Survivor Purchase Option', 'OLI_COVTYPE_GUARSURVPURCH', 'Gives surviving joint insured on a first to die policy the right to buy insurance after the insured dies, without requiring evidence in insurance.');
INSERT INTO `oli_lu_covtype` VALUES (60, 58, 'Heart and artery', 'OLI_COVTYPE_HEART', 'Covers diseases of the cardiovascular system');
INSERT INTO `oli_lu_covtype` VALUES (61, 64, 'Hospital and surgical', 'OLI_COVTYPE_HOSPSURG', 'Covers disease or damage to the brain, nerves, spinal cord arteries that supply nerves and brain, and neuromuscular junctions.');
INSERT INTO `oli_lu_covtype` VALUES (62, 29, 'Hospital Expense', 'OLI_COVTYPE_HOSPEXP', '');
INSERT INTO `oli_lu_covtype` VALUES (63, 10, 'Indexed Universal Life', 'OLI_COVTYPE_INDXUNIVLIFE', 'Policy with a face value or cash value that varies according to a prescribed index of prices; otherwise benefits provided are similar to universal life. The death benefit is based on the particular index used, such as the Consumer Price Index (CPI).');
INSERT INTO `oli_lu_covtype` VALUES (64, 5, 'Interest Sensitive Whole Life', 'OLI_COVTYPE_INTSENSITIVEWL', 'Whole life policies, which vary the premium rate to reflect changing assumptions   regarding mortality, investment, and expense factors: these policies also specify  that the cash value can be greater than that guaranteed if changing assumptions warrant such  an increase. Also known as \"Current Assumption Whole Life\".');
INSERT INTO `oli_lu_covtype` VALUES (65, 164, 'Joint Last to Die Conversion Option', 'OLI_COVTYPE_JNTLASTCOVOPTION', 'This allows for the policy to be converted from \'First to Die\' to \'Last to Die\' after policy issue.');
INSERT INTO `oli_lu_covtype` VALUES (66, 163, 'Joint Partial Payout Death Benefit', 'OLI_COVTYPE_JNTPARTDEATHBENE', 'This coverage provides a partial payout of policy value when the first insured dies on a \'Joint Last To Die\' policy.');
INSERT INTO `oli_lu_covtype` VALUES (67, 131, 'Life Linked Investment', 'OLI_COVTYPE_LISP', 'This is a plan of which the savings element is invested under a LISP (Linked Investment Service Provider) licence in Unit Trusts and Shares that is also subject to Capital Gains Tax in the hands of the investor. However there could also be risk benefits included in this plan that is then sold under the LIFE licence. It is therefore a combination of LISP savings with LIFE risk benefits that is sold as one product.');
INSERT INTO `oli_lu_covtype` VALUES (68, 32, 'Lifetime Total Disability', 'OLI_COVTYPE_LIFTOTDIS', 'Provision in some disability income policies that provides a monthly benefit to a total disabled insured for the lifetime according to the definition of disability in the policy.');
INSERT INTO `oli_lu_covtype` VALUES (69, 16, 'Long Term Care', 'OLI_COVTYPE_LTC', 'This is a day-to-day care that the patient (generally older than 65) receives in a nursing facility or in his or her residence following an illness or injury, or in old age, such that the patient can no longer perform at least two of the five basic activities of daily living: walking, eating, dressing, using the bathroom, and mobility from one place to another.');
INSERT INTO `oli_lu_covtype` VALUES (70, 150, 'Long Term Care Accelerated Benefit Option', 'OLI_COVTYPE_LTCABO', 'Defined as an accelerated cash value benefit for long term care expenses.');
INSERT INTO `oli_lu_covtype` VALUES (71, 140, 'Maternity Leave Income', 'OLI_COVTYPE_MATERNITY', 'Provides benefits for the life assured if they are on maternity leave (irrespective of the outcome of the pregnancy).');
INSERT INTO `oli_lu_covtype` VALUES (72, 30, 'Medical (health coverage) expense', 'OLI_COVTYPE_MEDEXP', '');
INSERT INTO `oli_lu_covtype` VALUES (73, 43, 'Medical aid premium waiver', 'OLI_COVTYPE_WPMED', 'Covers cost of medical aid contributions in the event of the principal insured becoming severely ill, disabled or dies');
INSERT INTO `oli_lu_covtype` VALUES (74, 65, 'Nervous system disease', 'OLI_COVTYPE_NERV', 'Covers disease or damage to the brain, nerves, spinal cord arteries that supply nerves and brain, and neuromuscular junctions.');
INSERT INTO `oli_lu_covtype` VALUES (75, 51, 'Open Investment for Retirement', 'OLI_COVTYPE_OPENINVESTMENTRETIRE', '');
INSERT INTO `oli_lu_covtype` VALUES (76, 50, 'Open Investment Option', 'OLI_COVTYPE_OPENINVESTMENT', '');
INSERT INTO `oli_lu_covtype` VALUES (77, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_covtype` VALUES (78, 27, 'Overhead Expense', 'OLI_COVTYPE_OVREXP', 'Insurance for business owners to help offset continuing business expenses if the owner is   disabled. OR Type of disability income policy used to provide funds for the ongoing monthly   business expenses (such as employee salaries, utility charges, rent, and  equipment payment due) necessary to maintain continuing operations in the event an  owner/key person becomes disabled. Generally, there is a 60-day elimination period after  which monthly income payments commence until a stipulated aggregate limit has been  reached.');
INSERT INTO `oli_lu_covtype` VALUES (79, 57, 'Pays in event of Comprehensive Dread Diseases during Term', 'OLI_COVTYPE_TERMDREADCOMP', 'This cover applies to Disability payments in event of Comprehensive Dread Disease - as a Stand-alone benefit for a specific term.tc=17 Dread disease is used for Core Dread disease');
INSERT INTO `oli_lu_covtype` VALUES (80, 56, 'Pays in event of functional impairment', 'OLI_COVTYPE_FUNCIMP', 'This applies to Disability payments in event of Functional impairment - as a Stand-alone benefit');
INSERT INTO `oli_lu_covtype` VALUES (81, 55, 'Pays in event of Own and/or Similar Occupation Disability', 'OLI_COVTYPE_DISSIMOCC', 'This applies to disability payments in event of Disability to exercise Regular and/ or Similar Occupation as a Stand-alone benefit');
INSERT INTO `oli_lu_covtype` VALUES (82, 54, 'Pays in event of Own Occupation Disability', 'OLI_COVTYPE_DISREGOCC', 'This applies to disability payments in event of Disability to exercise his/her Regular (Own) Occupation as a Stand-alone benefit');
INSERT INTO `oli_lu_covtype` VALUES (83, 123, 'Permanent or Partial Incapacity', 'OLI_COVTYPE_PPINC', 'Permanent or Partial Combination benefit that covers permanent incapacity and or partial incapacitation. Payments made in respect of this policy can be temporary and/or permanent duration of the incapacity. This benefit can be freestanding (base benefit) or a rider.');
INSERT INTO `oli_lu_covtype` VALUES (84, 136, 'Premium Lock In Benefit', 'OLI_COVTYPE_LOCK', 'This benefit allows for all premium increases and benefit increases to cease at a future date (usually at age 65). It locks the premium and Benefits at that future date.');
INSERT INTO `oli_lu_covtype` VALUES (85, 124, 'Preservation Pension Fund', 'OLI_COVTYPE_PRES_PENFND', 'At retirement, a member may take up to one third of the capital as a lump sum. The remaining two thirds must be used to provide a pension for life. Tax is deducted at retirement. A member can make one taxable ad hoc withdrawal from the fund before retirement.');
INSERT INTO `oli_lu_covtype` VALUES (86, 125, 'Preservation Provident Fund', 'OLI_COVTYPE_PRES_PROVFND', 'At retirement, a member may take the full proceeds as a lump sum. Member may purchase a Life Annuity with the proceeds or after tax has been deducted, one may also invest the lump sum. A member can make one taxable ad hoc withdrawal from the fund before retirement.');
INSERT INTO `oli_lu_covtype` VALUES (87, 129, 'Provident Fund', 'OLI_COVTYPE_PROVIDENT', 'It is a grouped retirement fund opposed to an individual endowment policy. The tax implication for the proceeds of provident fund and a provident owned endowment policy differs from that of an individual endowment policy');
INSERT INTO `oli_lu_covtype` VALUES (88, 19, 'PUA Dividends', 'OLI_COVTYPE_PUADIV', 'An option under a participating life insurance policy by which the policy owner can elect to have the dividends purchase paid-up increments of permanent insurance.');
INSERT INTO `oli_lu_covtype` VALUES (89, 18, 'PUA Rider', 'OLI_COVTYPE_PUARIDER', 'A life insurance option plan under which all premiums have already been paid, with no further premium payment due.');
INSERT INTO `oli_lu_covtype` VALUES (90, 37, 'PVT WS Loss of Sight or Limb', 'OLI_COVTYPE_SIGHTLIMB', '');
INSERT INTO `oli_lu_covtype` VALUES (91, 166, 'Renewal Protection Rider', 'OLI_COVTYPE_RENPROT', 'Allows the client to pay an additional premium today in exchange for lower renewal premiums without the benefit');
INSERT INTO `oli_lu_covtype` VALUES (92, 67, 'Respiratory disease', 'OLI_COVTYPE_RESP', 'Covers impairment of lung function, excluding pulmonary embolus.');
INSERT INTO `oli_lu_covtype` VALUES (93, 101, 'Retirement Annuity', 'OLI_COVTYPE_RETANNUITY', '');
INSERT INTO `oli_lu_covtype` VALUES (94, 126, 'Retrenchment Benefit', 'OLI_COVTYPE_RETRENCH', 'An income replacement type benefit should the client become retrenched from his job (unemployed).This benefit is sold as a standalone OR it can be sold as a supplementary benefit.');
INSERT INTO `oli_lu_covtype` VALUES (95, 139, 'Return of Premium - End of Specified Term', 'OLI_COVTYPE_ROPT', 'As defined by the contract, Return of Premium provides for the return of eligible premiums at the end of a defined period, if the insured is still living and the policy is in force.');
INSERT INTO `oli_lu_covtype` VALUES (96, 148, 'Return of Premium on Death', 'OLI_COVTYPE_COSTREC', 'Term insurance rider whose death benefit is equal to the eligible cumulative premiums paid to the policy purpose being if a person dies in any given year, you get back all the premiums. Also known as Cost Recovery.');
INSERT INTO `oli_lu_covtype` VALUES (97, 167, 'Return of Premium on First Death', 'OLI_COVTYPE_COSTREC1ST', 'For joint life policies, the eligible cumulative premium is returned upon the death of the first person. Also known as Cost Recovery.');
INSERT INTO `oli_lu_covtype` VALUES (98, 168, 'Return of Premium on Second Death', 'OLI_COVTYPE_COSTREC2ND', 'For joint life policies, the eligible cumulative premium is returned upon the death of the second person. Also known as Cost Recovery.');
INSERT INTO `oli_lu_covtype` VALUES (99, 149, 'Return of Premium on Surrender', 'OLI_COVTYPE_MBGUAR', 'On a full surrender, the return of eligible premiums (initial, unplanned, and any Benefit Increase premiums). Also known as Money Back Guarantee.');
INSERT INTO `oli_lu_covtype` VALUES (100, 160, 'Sale of Business Facilitation', 'OLI_COVTYPE_SALEBUS', 'Provides a lump sum payment to pay the expenses of the sale of the client\'s business in the event of long term disability.');
INSERT INTO `oli_lu_covtype` VALUES (101, 158, 'Second Event Rider', 'OLI_COVTYPE_SECEVT', 'Allows for the claim and payment of one additional Critical Illness claim (for example, Life-Threatening Cancer or Heart Attack) on the policy when Life-Threatening Cancer or Heart Attack was the reason for the initial claim payment.');
INSERT INTO `oli_lu_covtype` VALUES (102, 121, 'Sickness Benefit', 'OLI_COVTYPE_SICKBEN', 'This benefit covers any sickness which prevents the client from working for any given period. The sickness does not have to be critical or permanent in nature.');
INSERT INTO `oli_lu_covtype` VALUES (103, 143, 'Spouse or Child Critical Illness', 'OLI_COVTYPE_SPOUSECHILD', 'Pays a benefit amount, for example by some carriers up to six times the benefit amount specified on the qualifying coverage, if the life assureds\' spouse or child meets specified critical illness claims criteria.');
INSERT INTO `oli_lu_covtype` VALUES (104, 165, 'Supplemental Protection Rider', 'OLI_COVTYPE_SPR', 'Rider that allows insured to add an additional layer of (non-commissionable) face amount with lower charges. This is similar to a term rider but not considered term insurance. It provides coverage for the life of the contract; when a death claim is made, this rider pays an additional amount.');
INSERT INTO `oli_lu_covtype` VALUES (105, 141, 'Temporary Insurance Agreement', 'OLI_COVTYPE_TIA', 'This is a receipt for premiums received with a term or permanent life insurance application, which provides temporary insurance coverage as defined in the receipt. Coverage usually continues until the insurance company either refunds the premium or accepts the risk and issues the policy. Coverage is not usually conditional on completing the medical requirements or being insurable on the premium basis applied for. Often insurance companies only issue Temporary Insurance agreements up to certain death benefit limits (such as below $250,000).');
INSERT INTO `oli_lu_covtype` VALUES (106, 7, 'Term Decreasing Death Benefit', 'OLI_COVTYPE_TERMDECREASE', 'Amount payable, as stated in a term decreasing policy, upon the death of the insured. This is the value of the policy that declines by a stipulated amount over the term of the policy.');
INSERT INTO `oli_lu_covtype` VALUES (107, 8, 'Term Increasing Death Benefit', 'OLI_COVTYPE_TERMINCREASE', 'Amount payable, as stated in a term increasing policy, upon the death of the insured. This is the value of the policy that increases by a stipulated amount over the term of the policy.');
INSERT INTO `oli_lu_covtype` VALUES (108, 6, 'Term Level Death Benefit', 'OLI_COVTYPE_TERMLEVEL', 'Amount payable, as stated in a term policy, upon the death of the insured. This is the face value of the   policy, less any outstanding loans and the interest accrued there on.');
INSERT INTO `oli_lu_covtype` VALUES (109, 9, 'Universal Life', 'OLI_COVTYPE_UNIVLIFE', 'Adjustable life insurance under which(1) premiums are flexible, not fixed; (2) protection is adjustable, not fixed;(3) insurance company expenses and other charges are specifically disclosed to a purchaser.');
INSERT INTO `oli_lu_covtype` VALUES (110, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_covtype` VALUES (111, 59, 'Urogenital tract and kidney', 'OLI_COVTYPE_KIDNEY', 'Covers disorders of the urogenital tract or kidney, requiring ongoing therapy or major surgery');
INSERT INTO `oli_lu_covtype` VALUES (112, 53, 'Variable Annuity', 'OLI_COVTYPE_VARANNUITY', '');
INSERT INTO `oli_lu_covtype` VALUES (113, 11, 'Variable Universal Life', 'OLI_COVTYPE_VARUNIVLIFE', 'A form of whole life that combines the premium and face amount flexibility of universal life with the investment flexibility and risk of variable life insurance. Also known as \"universal life II\" or \"flexible-premium variable life policies.\"');
INSERT INTO `oli_lu_covtype` VALUES (114, 13, 'Variable Whole Life', 'OLI_COVTYPE_VARWLIFE', 'The face value and the cash value of the policy fluctuate according to the investment performance of a separate account fund.');
INSERT INTO `oli_lu_covtype` VALUES (115, 69, 'Vitality health', 'OLI_COVTYPE_VITALITY', 'Additional benefit that allows for intermittent reduction in risk rates for proof that the insured pro-actively maintains good health / improves their health.');
INSERT INTO `oli_lu_covtype` VALUES (116, 114, 'Waiver of Monthly Deductions (WMD)', 'OLI_COVTYPE_WAIVMONTHDEDUCT', 'In flexible premium policies, the WMD rider causes the monthly deductions of the policy to be waived upon the disability of the primary insured.The WMD rider also keeps no lapse guarantee provisions in effect.');
INSERT INTO `oli_lu_covtype` VALUES (117, 21, 'Waiver of scheduled (planned) premiums', 'OLI_COVTYPE_WAIVSCHED', '\"Waiver of scheduled (planned) premiums\" (WSP or WPP) is not really a waiver rider at all, but rather a disability income coverage whose benefit is assigned back to the insurance company for the purpose of paying the policy\'s premium (including the \"planned\" investment component, or \"excess premium\"). The purpose of this rider is not only to keep the insurance in force, but also to keep the insured\'s investment objectives on track. This type of rider is typically used for products that have a flexible premium structure, such as Universal Life and Variable Universal Life.');
INSERT INTO `oli_lu_covtype` VALUES (118, 110, 'Waiver on 50% Disability', 'OLI_COVTYPE_DENWVRDISAB50', 'Full waiver of premium with minimum 50% disability.');
INSERT INTO `oli_lu_covtype` VALUES (119, 111, 'Waiver on 66% Disability', 'OLI_COVTYPE_DENWVRDISAB66', 'Half waiver of premium with between 50-66% disability and whole waiver of premium with disability over 66%.');
INSERT INTO `oli_lu_covtype` VALUES (120, 40, 'Waiver on Death', 'OLI_COVTYPE_WAIVERDEATH', '');
INSERT INTO `oli_lu_covtype` VALUES (121, 41, 'Waiver on Disability', 'OLI_COVTYPE_WAIVERDISABILITY', '');
INSERT INTO `oli_lu_covtype` VALUES (122, 128, 'Waiver on Retrench', 'OLI_COVTYPE_WAIVERRETRENCH', 'Premium waiver in the event of someone being Retrenched (losing their job). Covers cost of the policy contributions in the event of the policy payer losing his/her job (unemployed).');
INSERT INTO `oli_lu_covtype` VALUES (123, 4, 'Whole Life Graded Premium', 'OLI_COVTYPE_WLGRADPREM', '');
INSERT INTO `oli_lu_covtype` VALUES (124, 3, 'Whole Life Limited Pay', 'OLI_COVTYPE_WLLIMITEDPAY', '');
INSERT INTO `oli_lu_covtype` VALUES (125, 2, 'Whole Life Modified', 'OLI_COVTYPE_WLMODIFIED', 'Two methods of modifying whole life policies are: a) Modified premiums: A modified-premium whole life policy functions in the same manner as a traditional whole life policy except that the policy-owner pays a lower premium for a specified initial period (such as five years) than the policy owner would normally pay for a similar whole life policy that was not issued on a modified-premium plan. After the specified period, the premium increases to a stated amount that is somewhat higher than the usual  (nonmodified) premium would have been. The face amount of the policy remains level  during the entire period. This specified period is represented in the \'duration design\' property in the OLifE model. b) Modified amount of coverage: It is based on the assumption that the need for large amounts of life insurance is likely to diminish, as the insured person grows older.');
INSERT INTO `oli_lu_covtype` VALUES (126, 1, 'Whole Life Ordinary', 'OLI_COVTYPE_WLORDINARY', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_divtype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_divtype`;
CREATE TABLE `oli_lu_divtype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_divtype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_divtype_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_divtype
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_emailtype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_emailtype`;
CREATE TABLE `oli_lu_emailtype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_emailtype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_emailtype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_emailtype
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_emailtype` VALUES (1, 3, 'Agent customer service email address', 'OLI_EMAIL_AGENTCSE', 'Carrier\'s email address agent will use for customer service.');
INSERT INTO `oli_lu_emailtype` VALUES (2, 1, 'Business', 'OLI_EMAIL_BUSINESS', '');
INSERT INTO `oli_lu_emailtype` VALUES (3, 4, 'Client customer service email address', 'OLI_EMAIL_CLIENTCSE', 'Carrier\'s email address client will use for customer service.');
INSERT INTO `oli_lu_emailtype` VALUES (4, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_emailtype` VALUES (5, 2, 'Personal', 'OLI_EMAIL_PERSONAL', '');
INSERT INTO `oli_lu_emailtype` VALUES (6, 7, 'Previous', 'OLI_EMAIL_PREVIOUS', '\"Previous\" where type (Personal, Business, etc.) is unknown or not applicable');
INSERT INTO `oli_lu_emailtype` VALUES (7, 5, 'Primary Email Address', 'OLI_EMAIL_PRIMARY', 'An email address that has been designated as the primary address for email contact.');
INSERT INTO `oli_lu_emailtype` VALUES (8, 6, 'Secondary or Alternate Email Address', 'OLI_EMAIL_ALTERNATE', 'An email address that has been designated as the secondary or alternate address for email contact.');
INSERT INTO `oli_lu_emailtype` VALUES (9, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_employmenttype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_employmenttype`;
CREATE TABLE `oli_lu_employmenttype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_employmenttype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_employmenttype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=918 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_employmenttype
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_employmenttype` VALUES (1, 1, 'Abrasives Industry, Foreman (Supervising Only)', 'OLI_EMPTYPE_ABRFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (2, 2, 'Abrasives Industry, Superintendent Only', 'OLI_EMPTYPE_AVRSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (3, 845, 'Abrasives Manufacture', 'OLI_EMPTYPE_ABRWORKER', 'A person working in the manufacture of silica abrasives.');
INSERT INTO `oli_lu_employmenttype` VALUES (4, 3, 'Accountants, Certified Public Accountants', 'OLI_EMPTYPE_ACPA', '');
INSERT INTO `oli_lu_employmenttype` VALUES (5, 4, 'Accountants, Others', 'OLI_EMPTYPE_AOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (6, 846, 'Acid Manufacture', 'OLI_EMPTYPE_ACIDWORKER', 'A person working in the manufacture of hydrochloric, hydrocyanic, hydrofluoric, nitric, picric, sulphurous or sulphuric acids.');
INSERT INTO `oli_lu_employmenttype` VALUES (7, 867, 'Actor/Actress', 'OLI_EMPTYPE_ACTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (8, 5, 'Actuaries, ASA Or FSA', 'OLI_EMPTYPE_ACTUARY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (9, 6, 'Actuary, Others', 'OLI_EMPTYPE_ACTUARIAL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (10, 7, 'Acupuncturists', 'OLI_EMPTYPE_ACUPUNCT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (11, 8, 'Adjusters, Fire And Marine', 'OLI_EMPTYPE_ADJFIRE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (12, 9, 'Adjusters, Insurance (Not Fire Or Marine)', 'OLI_EMPTYPE_ADJINS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (13, 10, 'Advertising (Agency Staff, Not Free Lance)', 'OLI_EMPTYPE_ADVER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (14, 13, 'Agriculture (Farm/Orchard/Ranch/Nursery/Dairy/Hatchery/Proprietor)', 'OLI_EMPTYPE_AGRIGN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (15, 12, 'Agriculture (Farm/Orchard/Ranch)Foreman/Other Skilled Workers)', 'OLI_EMPTYPE_AGRIOS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (16, 11, 'Agriculture (Farm/Orchard/Ranch) Hired Hand', 'OLI_EMPTYPE_AGRIHH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (17, 16, 'Air Conditioning,Engineer(Office&Consult Duties Only', 'OLI_EMPTYPE_ACOFF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (18, 14, 'Air Conditioning, Engineer (Superintending/Inspector)', 'OLI_EMPTYPE_ACENG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (19, 15, 'Air Conditioning, Installer/Repairer/Servicemen', 'OLI_EMPTYPE_ACINST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (20, 17, 'Air Drill Operators', 'OLI_EMPTYPE_ADRILLO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (21, 19, 'Airport Personnel, Baggage Handler/Porter/Freight', 'OLI_EMPTYPE_AIRBAG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (22, 21, 'Airport Personnel, Dispatchers(Office), Operations', 'OLI_EMPTYPE_AIRDISPP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (23, 20, 'Airport Personnel, Dispatchers On Line', 'OLI_EMPTYPE_AIRDISPO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (24, 22, 'Airport Personnel, Instrument Installers', 'OLI_EMPTYPE_AIRINST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (25, 23, 'Airport Personnel, Manager, Office&Supervision Duties', 'OLI_EMPTYPE_AIRMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (26, 18, 'Air Traffic Controllers', 'OLI_EMPTYPE_ATC', '');
INSERT INTO `oli_lu_employmenttype` VALUES (27, 24, 'Allergist', 'OLI_EMPTYPE_ALLERGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (28, 25, 'Ambulance Drivers', 'OLI_EMPTYPE_AMBDRV', '');
INSERT INTO `oli_lu_employmenttype` VALUES (29, 26, 'Anesthesiologists', 'OLI_EMPTYPE_PHYANESTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (30, 27, 'Anesthetist--Other Than Physician', 'OLI_EMPTYPE_ANTHES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (31, 843, 'Animal Trainer', 'OLI_EMPTYPE_ANIMALTRAINER', 'A person who trains or exhibits animals. Includes Horse Trainer, Dog Trainer, or Tamer.');
INSERT INTO `oli_lu_employmenttype` VALUES (32, 28, 'Antique Dealer, Purchase/Repair/Collect/Delivery', 'OLI_EMPTYPE_ANTDEAL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (33, 29, 'Antique Dealers, Sales Only', 'OLI_EMPTYPE_ANTSALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (34, 30, 'Appraisers', 'OLI_EMPTYPE_APPRAISER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (35, 847, 'Aquanics', 'OLI_EMPTYPE_AQUANICS', 'Divers involved in deep-water diving for construction, salvage, search and rescue, military or scientific or exploration.');
INSERT INTO `oli_lu_employmenttype` VALUES (36, 31, 'Arbitrager', 'OLI_EMPTYPE_ARBITRAGER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (37, 32, 'Architects', 'OLI_EMPTYPE_ARCHITECT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (38, 891, 'Art Dealer', 'OLI_EMPTYPE_ARTDEALER', 'Person or company who buys and sells works of art.');
INSERT INTO `oli_lu_employmenttype` VALUES (39, 33, 'Art Glass, Assemblers (No Erecting Or Setting)', 'OLI_EMPTYPE_ARTGLAASM', '');
INSERT INTO `oli_lu_employmenttype` VALUES (40, 34, 'Art Glass, Erectors Or Setters', 'OLI_EMPTYPE_ARTGLAERR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (41, 35, 'Artificial Flower Makers', 'OLI_EMPTYPE_ARTFLWMKR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (42, 36, 'Artificial Gas--See Gas Manufacture', 'OLI_EMPTYPE_ARTGASMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (43, 37, 'Artificial Limb Manuf, Dealer (Not Maker Or Repairer)', 'OLI_EMPTYPE_ARTLMBMFGS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (44, 38, 'Artificial Limb Manufacture, Makers Or Repairers', 'OLI_EMPTYPE_ARTMFGM', '');
INSERT INTO `oli_lu_employmenttype` VALUES (45, 39, 'Artist, Commercial (Cartoon, Illust) Not Free Lance', 'OLI_EMPTYPE_ARTISTCOM', '');
INSERT INTO `oli_lu_employmenttype` VALUES (46, 40, 'Asbestos Mill (& Concentrating Mill), Skilled Worker', 'OLI_EMPTYPE_ASBSW', '');
INSERT INTO `oli_lu_employmenttype` VALUES (47, 41, 'Asbestos Mill (& Concentrating Mill), Supervisors', 'OLI_EMPTYPE_ASBSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (48, 42, 'Asphalt Refining, Foreman (Supervise Only), Inspector', 'OLI_EMPTYPE_ASPSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (49, 43, 'Asphalt Refining, Others', 'OLI_EMPTYPE_ASPOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (50, 44, 'Assayers (Not Working In Mine)', 'OLI_EMPTYPE_ASSAYERS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (51, 45, 'Assessors', 'OLI_EMPTYPE_ASSESSORS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (52, 839, 'Astronaut', 'OLI_EMPTYPE_ASTRONAUT', 'A person who is trained to make rocket flights into outer space.');
INSERT INTO `oli_lu_employmenttype` VALUES (53, 46, 'Attorneys', 'OLI_EMPTYPE_ATY', 'One who is legally appointed to transact business on another\'s behalf; specifically : a legal agent qualified to act for suitors and defendants in legal proceedings');
INSERT INTO `oli_lu_employmenttype` VALUES (54, 47, 'Auctioneers, Livestock', 'OLI_EMPTYPE_AUCTLIVE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (55, 48, 'Auctioneers, Others', 'OLI_EMPTYPE_AUCTOTHY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (56, 49, 'Audiologists', 'OLI_EMPTYPE_AUDIO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (57, 50, 'Auditor', 'OLI_EMPTYPE_AUDITOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (58, 51, 'Automobile Industry Dealer/Owner, Sales,-New Vehicles', 'OLI_EMPTYPE_AUTISALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (59, 54, 'Automobile Industry Dealer/Salesmen, Used Vehicles', 'OLI_EMPTYPE_AUTOUSEDMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (60, 53, 'Automobile Industry Dealer/Salesmen New Vehicle', 'OLI_EMPTYPE_AUTOSAMESMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (61, 55, 'Automobile Industry Garage/Filling&Service, Manager', 'OLI_EMPTYPE_AUTOSM', '');
INSERT INTO `oli_lu_employmenttype` VALUES (62, 56, 'Automobile Industry Garage/Filling&Service,Other Duties', 'OLI_EMPTYPE_AUTOFILL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (63, 57, 'Automobile Industry Manufacturing, (Supervisory Only)', 'OLI_EMPTYPE_AUTOMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (64, 52, 'Automobile Industry Manufacturing,Assembler/Machinist', 'OLI_EMPTYPE_AUTOMFGMAC', '');
INSERT INTO `oli_lu_employmenttype` VALUES (65, 58, 'Automobile Industry Manufacturing, Foreman', 'OLI_EMPTYPE_AUTOMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (66, 59, 'Automobile Industry Testers, Shop', 'OLI_EMPTYPE_AUTOTEST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (67, 868, 'Automobile Racer', 'OLI_EMPTYPE_AUTORACER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (68, 848, 'Aviation (Military)', 'OLI_EMPTYPE_AVIATIONMIL', 'Risk depends on age and type of aircraft flown.');
INSERT INTO `oli_lu_employmenttype` VALUES (69, 60, 'Awning Industry, Erector, Hanger, Installer', 'OLI_EMPTYPE_AWNERECT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (70, 61, 'Awning Industry, Maker', 'OLI_EMPTYPE_AWMMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (71, 62, 'Bacteriologists', 'OLI_EMPTYPE_BACTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (72, 63, 'Bailiffs, Court Duties', 'OLI_EMPTYPE_BALIFF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (73, 64, 'Bakeries (Shops And Factories), All Others', 'OLI_EMPTYPE_BAKEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (74, 65, 'Bakery (Shop/Factory), Superintendent/Foremen/Manager', 'OLI_EMPTYPE_BAKERSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (75, 66, 'Bank, Armored Car Guard/Other Armed Personnel, Collector', 'OLI_EMPTYPE_BANKARMED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (76, 67, 'Banks, Messengers (Unarmed)', 'OLI_EMPTYPE_BANKMSG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (77, 68, 'Banks, Officers', 'OLI_EMPTYPE_BANKOFF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (78, 69, 'Banks, Tellers, Clerks', 'OLI_EMPTYPE_BANKTEL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (79, 70, 'Barbers, Proprietors And Journeymen', 'OLI_EMPTYPE_BARBER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (80, 892, 'Bartender', 'OLI_EMPTYPE_BARTNDR', 'Someone who serves either alcoholic or non alcoholic beverages from behind a bar in a restaurant, bar, tavern or pub.');
INSERT INTO `oli_lu_employmenttype` VALUES (81, 71, 'Beauty Parlors, Away From Home', 'OLI_EMPTYPE_BEAUTYPAR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (82, 72, 'Beverage Manufacture Non-Alcoholic, Skilled Worker', 'OLI_EMPTYPE_BEVMFGSW', '');
INSERT INTO `oli_lu_employmenttype` VALUES (83, 73, 'Beverage Manufacture Non-Alcoholic, Superintendent', 'OLI_EMPTYPE_BEVMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (84, 74, 'Beverage Manufacture Non-Alcoholic, Unskilled Worker', 'OLI_EMPTYPE_BEVMFGUW', '');
INSERT INTO `oli_lu_employmenttype` VALUES (85, 75, 'Bicycle Industry, All Others', 'OLI_EMPTYPE_BICOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (86, 76, 'Bicycle Industry, Dealer, Sales-No Assembly Or Repair', 'OLI_EMPTYPE_BICDEAL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (87, 893, 'Bill Collector', 'OLI_EMPTYPE_BILLCLTR', 'Person who attempts to collect payment on overdue bills.');
INSERT INTO `oli_lu_employmenttype` VALUES (88, 77, 'Bill Poster', 'OLI_EMPTYPE_BILLPOST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (89, 78, 'Biochemists, Office Duties Only', 'OLI_EMPTYPE_BIOCHEMOD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (90, 79, 'Biochemists, Others', 'OLI_EMPTYPE_BIOCHEMOT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (91, 80, 'Biologists, Office Duties Only', 'OLI_EMPTYPE_BIOLOF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (92, 81, 'Biologists, Others', 'OLI_EMPTYPE_BIOLOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (93, 82, 'Blacksmiths (No Unusual Hazard)', 'OLI_EMPTYPE_BLACKSMTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (94, 83, 'Boiler Manufacture, Installation/Maintenance, Inspector', 'OLI_EMPTYPE_BLRMFGINS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (95, 84, 'Boiler Manufacture/Installation/Maintenance, Cleaner', 'OLI_EMPTYPE_BLRMFGINSCLK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (96, 85, 'Boiler Manufacture/Installation/Maintenance, Foremen', 'OLI_EMPTYPE_BLRMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (97, 86, 'Bond Brokers Or Salesmen', 'OLI_EMPTYPE_BONDBROKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (98, 87, 'Booking Agents (Full-Time & Working Out Of Office)', 'OLI_EMPTYPE_BOOKINGAGENT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (99, 88, 'Bookkeepers', 'OLI_EMPTYPE_BOOKEEPER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (100, 869, 'Bookmaker', 'OLI_EMPTYPE_BOOKMAKER', 'Gambler - taker of wagers');
INSERT INTO `oli_lu_employmenttype` VALUES (101, 89, 'Borax Mill (Employees Not In Mines), Superintendent', 'OLI_EMPTYPE_BORAXSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (102, 90, 'Borax Mill (Not In Mine), All Other Mill Employees', 'OLI_EMPTYPE_BORAXOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (103, 91, 'Borax Mill(Not In Mines) Superintendent/Foremen Mill Employee', 'OLI_EMPTYPE_BORAXMILL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (104, 92, 'Botanists, Office Duties Only', 'OLI_EMPTYPE_BOTANISTOF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (105, 93, 'Botanists, Others', 'OLI_EMPTYPE_BOTANISTOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (106, 96, 'Bricklayer/Masons (No Unusual Hazard)', 'OLI_EMPTYPE_BRICKLAYER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (107, 94, 'Brick Manufacture, Foremen And Skilled Workers', 'OLI_EMPTYPE_BRICKMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (108, 95, 'Brick Manufacture, Stacker/Brick&Clay Wheeler/Other Laborer', 'OLI_EMPTYPE_BRICKMFGLB', '');
INSERT INTO `oli_lu_employmenttype` VALUES (109, 870, 'Bridge Worker', 'OLI_EMPTYPE_BRIDGEWKR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (110, 97, 'Briquette Manufacture, All Others', 'OLI_EMPTYPE_BRIQMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (111, 98, 'Briquette Manufacture, Foremen', 'OLI_EMPTYPE_BGIQMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (112, 99, 'Broker, Commodity, Futures, Options--Individual Consultant', 'OLI_EMPTYPE_BROKCOMCONS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (113, 100, 'Broker, Commodity/Future/Option,Medium/Large-Size', 'OLI_EMPTYPE_BROKCOMLARGE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (114, 103, 'Broker, Stock/Bond (Not Commodities) Floor Self-Employed', 'OLI_EMPTYPE_BROKSBFLOORSELF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (115, 104, 'Broker, Stock/Bond (Not Commodities) Floor Trader', 'OLI_EMPTYPE_BROKSBFLOOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (116, 105, 'Broker, Stock/Bond (Not Commodities) Office Duties', 'OLI_EMPTYPE_BROKSBOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (117, 106, 'Brokers, Mortgage Broker, Office Duties Only', 'OLI_EMPTYPE_BROKMORTOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (118, 101, 'Brokers, Produce Broker, Not Visiting Market&Handling Goods', 'OLI_EMPTYPE_BROKPROD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (119, 107, 'Brokers, Produce Broker, Others', 'OLI_EMPTYPE_BROKPRODUCEOTHERS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (120, 108, 'Brokers, Real Estate Broker, Others Working Full-Time', 'OLI_EMPTYPE_BROKREALESTFT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (121, 102, 'Brokers, Real Estate Broker, Principal/Owner, Working F/T', 'OLI_EMPTYPE_BROKREALEST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (122, 109, 'Brokers, Stocks Or Bonds (Not Commodities) Pawn', 'OLI_EMPTYPE_BROKPAWN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (123, 111, 'Broom/Brush Factories, Superintendents And Foremen', 'OLI_EMPTYPE_BRMBRSHSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (124, 112, 'Broom/Brush Factory, Assembler/Tier/Trimmer/Skilled', 'OLI_EMPTYPE_BRMBRSHSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (125, 110, 'Broom And Brush Factories, All Others', 'OLI_EMPTYPE_BRMBRSHOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (126, 113, 'Buffer, Metal', 'OLI_EMPTYPE_BUFFERMETAL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (127, 124, 'Building/Construction, Contractor/Superintendent Site', 'OLI_EMPTYPE_BLDMAINTSUPONSITE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (128, 123, 'Building/Construction, Contractor/Super Not At Site', 'OLI_EMPTYPE_BLDMAINTSUPOFFSITE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (129, 125, 'Building/Construction, Electricians And Plumbers', 'OLI_EMPTYPE_BLDMAINTELECPLUMB', '');
INSERT INTO `oli_lu_employmenttype` VALUES (130, 114, 'Building & Construction, Civil Engineer', 'OLI_EMPTYPE_BLDCONCIVENG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (131, 115, 'Building & Construction, Estimator Not At Building', 'OLI_EMPTYPE_BLDCONESTIM', '');
INSERT INTO `oli_lu_employmenttype` VALUES (132, 116, 'Building And Construction, Architects', 'OLI_EMPTYPE_BLDCONARCHITECT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (133, 117, 'Building And Construction, Other Skilled Workers', 'OLI_EMPTYPE_BLDCONOTHSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (134, 118, 'Building And Construction, Project Managers', 'OLI_EMPTYPE_BLDCONPROJMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (135, 849, 'Building Demolition', 'OLI_EMPTYPE_DEMOLITION', 'Involves demolition of buildings and other structures with exposure to the same hazards found in the erection of buildings plus the added danger of unsound structures which may collapse.');
INSERT INTO `oli_lu_employmenttype` VALUES (136, 119, 'Building Maintenance, Building Cleaner/Elevator Installer', 'OLI_EMPTYPE_BLDMAINTELEVATOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (137, 120, 'Building Maintenance, Elevator Operator/Starter Door', 'OLI_EMPTYPE_BLDMAINTSTARTERDOOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (138, 121, 'Building Maintenance, Super (Supervising Only)', 'OLI_EMPTYPE_BLDMAINTSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (139, 122, 'Building Mover/Wrecker, Superintendent/Foremen/Manager', 'OLI_EMPTYPE_BLDMAINTFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (140, 126, 'Bus Drivers', 'OLI_EMPTYPE_BUSDRIVER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (141, 128, 'Business Machine Sales/Service, Servicemen/All Other', 'OLI_EMPTYPE_BUSMACOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (142, 127, 'Business Machine Sales & Service, Manager & Sales', 'OLI_EMPTYPE_BUSMACSALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (143, 129, 'Business Owners;Small, Administrative, Minimal Duties', 'OLI_EMPTYPE_OWNERADM', '');
INSERT INTO `oli_lu_employmenttype` VALUES (144, 130, 'Business Owners;Small, Some Travel &/Or Retail Sales', 'OLI_EMPTYPE_OWNERRETAIL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (145, 131, 'Business Owners;Small, Supervising Blue Collar Employee', 'OLI_EMPTYPE_OWNERBLUECOLLAR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (146, 132, 'Butchers, Others', 'OLI_EMPTYPE_BUTCHEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (147, 133, 'Butchers, Proprietor And Retail Store', 'OLI_EMPTYPE_OWNERBUTCHER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (148, 134, 'Butlers, Not Living On Premises', 'OLI_EMPTYPE_BUTLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (149, 135, 'Button Manufacture, Foremen', 'OLI_EMPTYPE_BUTTONMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (150, 136, 'Button Manufacture, Others', 'OLI_EMPTYPE_BUTTONMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (151, 137, 'Button Manufacture, Superintendents', 'OLI_EMPTYPE_BUTTONMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (152, 138, 'Buyer Department Store, Office Duties Only', 'OLI_EMPTYPE_BUYEROFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (153, 140, 'Buyers, Cotton, Grain, Poultry, Tobacco, Wool', 'OLI_EMPTYPE_BUYERCOMMODITIES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (154, 141, 'Buyers, Ore, Livestock, Lumber, Fur', 'OLI_EMPTYPE_BUYERLIVESTOCK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (155, 139, 'Buyers Department Store, Others', 'OLI_EMPTYPE_BUYEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (156, 142, 'Cabinet Makers', 'OLI_EMPTYPE_CABMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (157, 871, 'Caisson Worker', 'OLI_EMPTYPE_CAISSON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (158, 143, 'Calcium Carbide/Cyanamide Manufacture, All Other Emp', 'OLI_EMPTYPE_CALCARBMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (159, 144, 'Calcium Carbide/Cyanamide Manufacture, Foremen/Packers', 'OLI_EMPTYPE_CALCARBMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (160, 145, 'Camera Manufacture, Assembler/Finisher/Lens Grinders', 'OLI_EMPTYPE_CAMMFGGRINDER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (161, 146, 'Camera Manufacture, Engineer/Superintendent/Foremen', 'OLI_EMPTYPE_CAMMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (162, 147, 'Camera Manufacture, Others', 'OLI_EMPTYPE_CAMMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (163, 148, 'Camps/Park (Year Round), Proprietor/Manager/Director', 'OLI_EMPTYPE_CAMPMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (164, 151, 'Canal Worker, Dockmaster/Superintendent/Inspector', 'OLI_EMPTYPE_CANALDOCK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (165, 152, 'Canal Workers, Bridge, Lock Or Buoy Tenders', 'OLI_EMPTYPE_CANALTENDER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (166, 149, 'Can Manufacturing, Others', 'OLI_EMPTYPE_CANMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (167, 150, 'Can Manufacturing, Superintendents, Foremen', 'OLI_EMPTYPE_CANMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (168, 153, 'Canning/Pickling/Preserving Factories, Foremen', 'OLI_EMPTYPE_CANPREFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (169, 154, 'Canning/Pickling/Preserving Factory, All Others', 'OLI_EMPTYPE_CANPREOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (170, 155, 'Canning/Pickling/Preserving Factory, Superintendents', 'OLI_EMPTYPE_CANPRESUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (171, 156, 'Cantors', 'OLI_EMPTYPE_CANTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (172, 157, 'Carbon Electrode/Graphite Manufacture, Foremen', 'OLI_EMPTYPE_CARBELECMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (173, 158, 'Carbon Electrode/Graphite Manufacture, Superintendent', 'OLI_EMPTYPE_CARBELECMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (174, 159, 'Cardiac Surgeons', 'OLI_EMPTYPE_SURGCARDIO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (175, 160, 'Cardiologists', 'OLI_EMPTYPE_CARDIO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (176, 161, 'Caretaker (Not On Premises) Private House & Grounds', 'OLI_EMPTYPE_GARDNER_PVT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (177, 850, 'Carnival, circus and fair worker', 'OLI_EMPTYPE_CARNIVAL', 'May include daredevil, trapeze or equestrian acts. Also includes general laborers or roustabouts.');
INSERT INTO `oli_lu_employmenttype` VALUES (178, 162, 'Carpenters', 'OLI_EMPTYPE_CARPENTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (179, 163, 'Carpet Installers', 'OLI_EMPTYPE_CARPETINSTALLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (180, 894, 'Cartographer', 'OLI_EMPTYPE_CTRGRPHR', 'Person who analyzes, interprets and map geographic information using data from surveys and photographs.');
INSERT INTO `oli_lu_employmenttype` VALUES (181, 164, 'Cattle Dealers, Handling Livestock', 'OLI_EMPTYPE_CATTLEDEALERHANDLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (182, 165, 'Cattle Dealers, Not Handling Livestock', 'OLI_EMPTYPE_CATTLEDEALERNONHANDLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (183, 166, 'Cement, Lime And Gypsum Manufacture, Foremen', 'OLI_EMPTYPE_CEMENTMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (184, 167, 'Cement/Lime/Gypsum Manufacture, Superintendent', 'OLI_EMPTYPE_CEMENTMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (185, 168, 'Cemeteries, All Others', 'OLI_EMPTYPE_CEMETERYOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (186, 169, 'Cemeteries, Superintendent & Clerk, No Manual Labor', 'OLI_EMPTYPE_CEMETERYSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (187, 171, 'Charcoal Manufacture Open Pit, Proprietor/Superintendent', 'OLI_EMPTYPE_CHARMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (188, 170, 'Charcoal Manufacture Open Pit Process, Foremen', 'OLI_EMPTYPE_CHARMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (189, 895, 'Chauffeur', 'OLI_EMPTYPE_CHAUFFER', 'Person who drives a limousine, van or private car to transfer a customer from one place to another on a prearranged basis.');
INSERT INTO `oli_lu_employmenttype` VALUES (190, 172, 'Chemical Industry, Chemist(Lab Duty)/Superintendent', 'OLI_EMPTYPE_CHEMISTSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (191, 173, 'Chemical Industry, Chemists (Office Duties Only)', 'OLI_EMPTYPE_CHEMISTOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (192, 174, 'Chemical Industry, Foremen/Chemist In Process Work', 'OLI_EMPTYPE_CHEMICALFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (193, 175, 'Chemical Industry, Other Skilled Workers', 'OLI_EMPTYPE_CHEMOCALOSW', '');
INSERT INTO `oli_lu_employmenttype` VALUES (194, 176, 'Chemist/Assayer/Metallurgist, Engaged In Process Work', 'OLI_EMPTYPE_CHEMISTASSAYER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (195, 178, 'Chemist/Assayer/Metallurgist--Lab Duties', 'OLI_EMPTYPE_CHEMISTASSAYLAB', 'May also be classified as --> 44 OLI_EMPTYPE_ASSAYERS');
INSERT INTO `oli_lu_employmenttype` VALUES (196, 177, 'Chemist/Assayer/Metallurgist--Office Duties Only', 'OLI_EMPTYPE_CHEMISTASSAYEROFF', 'May also be classified as --> 44 OLI_EMPTYPE_ASSAYERSMay also be classified as --> 487 OLI_EMPTYPE_METALURGIST');
INSERT INTO `oli_lu_employmenttype` VALUES (197, 179, 'Chimney Cleaners Or Sweeps', 'OLI_EMPTYPE_CHIMNEYSWEEP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (198, 180, 'Chiropodists', 'OLI_EMPTYPE_CHIROPODISTS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (199, 181, 'Chiropractors', 'OLI_EMPTYPE_CHIROPRACTORS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (200, 184, 'City Marshals, Office And Court Duties Only', 'OLI_EMPTYPE_MARSHALLOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (201, 182, 'City Marshals Process Serving, Armed', 'OLI_EMPTYPE_MARSHALLARMED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (202, 183, 'City Marshals Process Serving, Unarmed', 'OLI_EMPTYPE_MARSHALLNOTARMED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (203, 185, 'Civil Engineer', 'OLI_EMPTYPE_CIVILENG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (204, 186, 'Claim Adjusters, Insurance, Fire Or Marine', 'OLI_EMPTYPE_CLAINADJFIREMAR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (205, 187, 'Claim Adjusters, Insurance, Not Fire Or Marine', 'OLI_EMPTYPE_CLAINADJOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (206, 188, 'Clergymen', 'OLI_EMPTYPE_CLERGY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (207, 190, 'Clock Manufacturing/Repair, Using Hand Tools Only', 'OLI_EMPTYPE_CLOCKMFGTOOLS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (208, 189, 'Clock Manufacturing Or Repair, All Others', 'OLI_EMPTYPE_CLOCKMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (209, 193, 'Clothing Manufacture (Factory/Shop/Store), Other Workers', 'OLI_EMPTYPE_CLOTHINGMFGOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (210, 191, 'Clothing Manufacture (Factory Shop/Store), Custom', 'OLI_EMPTYPE_CLOTHINGMFGCUSTOM', '');
INSERT INTO `oli_lu_employmenttype` VALUES (211, 192, 'Clothing Manufacture (Factory Shop/Store), Proprietor', 'OLI_EMPTYPE_CLOTHINGMFGOWNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (212, 195, 'Coal/Wood Yard, Manager/Proprietor/Superintendent', 'OLI_EMPTYPE_COALSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (213, 194, 'Coal And Wood Yards, Foremen', 'OLI_EMPTYPE_COALFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (214, 844, 'Coal Miner', 'OLI_EMPTYPE_COALMINER', 'A person who works in a coal mine. Also commonly known as a collier, or pitman.');
INSERT INTO `oli_lu_employmenttype` VALUES (215, 196, 'Cobblers', 'OLI_EMPTYPE_COBBLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (216, 197, 'Cold Storage, Others', 'OLI_EMPTYPE_COLDSTOROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (217, 198, 'Cold Storage, Proprietors Or Managers', 'OLI_EMPTYPE_COLDSTODMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (218, 199, 'Collectors, Accounts, All Others', 'OLI_EMPTYPE_COLLECTOROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (219, 200, 'Collectors, Accounts, Office Only', 'OLI_EMPTYPE_COLLECTOROTHCLK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (220, 856, 'Commercial fisherman', 'OLI_EMPTYPE_COMMFISHERMAN', 'Commercial fisherman');
INSERT INTO `oli_lu_employmenttype` VALUES (221, 201, 'Commissary Clerks', 'OLI_EMPTYPE_COMMISARYCLERK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (222, 202, 'Comptroller', 'OLI_EMPTYPE_COMPTROLLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (223, 203, 'Computer Industry--Not At Home, Analyst, Keypunch', 'OLI_EMPTYPE_COMPINDANALYSTOFF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (224, 204, 'Computer Industry--Not At Home, Deliverymen-Heavy Equipment', 'OLI_EMPTYPE_COMPINDDELIVERYOFF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (225, 205, 'Computer Industry--Not Working At Home, Deliverymen', 'OLI_EMPTYPE_COMPINDDELIVERY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (226, 206, 'Computer Industry--Not Working At Home, Salesmen', 'OLI_EMPTYPE_COMPINDSALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (227, 896, 'Computer Programmer', 'OLI_EMPTYPE_CMPTRPROG', 'Person who designs a logical series of instructions a computer can follow in a programming language. They can also repair, modify or update existing programs.');
INSERT INTO `oli_lu_employmenttype` VALUES (228, 207, 'Confectioner (Candy/Cake), Local Delivery', 'OLI_EMPTYPE_CONFECTIONERDEL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (229, 208, 'Confectioner (Candy/Cake), Packer/Checker/Wrapper', 'OLI_EMPTYPE_CONFECTIONERPACKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (230, 209, 'Confectioner (Candy/Cake), Superintendent/Foremen', 'OLI_EMPTYPE_CONFECTIONERSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (231, 210, 'Consultants, Office Duties Only', 'OLI_EMPTYPE_CONSULTANTOFF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (232, 212, 'Copyist (Office Duties Only)', 'OLI_EMPTYPE_COPYIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (233, 213, 'Cork Manufacture, Foremen And Inspectors', 'OLI_EMPTYPE_CORKMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (234, 214, 'Cork Manufacture, Others', 'OLI_EMPTYPE_CORKMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (235, 215, 'Cork Manufacture, Skilled Workers', 'OLI_EMPTYPE_CORKMFGSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (236, 216, 'Coroners', 'OLI_EMPTYPE_CORONER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (237, 217, 'Corporate Executive', 'OLI_EMPTYPE_CORPEXEC', '');
INSERT INTO `oli_lu_employmenttype` VALUES (238, 897, 'Corrections Officer', 'OLI_EMPTYPE_COOROFC', 'Person who is responsible for the supervision, safety and security of prisoners in a prison, jail or other form of secure custody.');
INSERT INTO `oli_lu_employmenttype` VALUES (239, 218, 'Court Reporters', 'OLI_EMPTYPE_COURTREPORTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (240, 898, 'Crane Operator', 'OLI_EMPTYPE_CRNOPER', 'Also known as a Tower Operator. Person who uses mechanical boom and cable or tower and cable equipment to lift and move materials, machinery and other heavy objects.');
INSERT INTO `oli_lu_employmenttype` VALUES (241, 219, 'Credit Men--(Office Duties)', 'OLI_EMPTYPE_CERDITMEN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (242, 220, 'Crematories, Attendants', 'OLI_EMPTYPE_CERMATORYATT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (243, 221, 'Crematories, Proprietors (Management Duties Only)', 'OLI_EMPTYPE_CERMATORYOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (244, 222, 'Critical Care MD\'S', 'OLI_EMPTYPE_CRITCAREMD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (245, 223, 'Curators, Library, Museum Or Art Gallery', 'OLI_EMPTYPE_CURATOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (246, 224, 'Custodians', 'OLI_EMPTYPE_CUSTODIAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (247, 899, 'Customs Official', 'OLI_EMPTYPE_CUSTOFF', 'Person who enforces federal laws governing imports and exports by inspecting cargo, baggage, and articles worn or carried by people, vessels, vehicles, trains, and aircraft entering or leaving the United States.');
INSERT INTO `oli_lu_employmenttype` VALUES (248, 225, 'Dairy Product Manufacture, Milk Depot/Creamery, Others', 'OLI_EMPTYPE_DAIRYOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (249, 226, 'Dairy Product Manufacture, Milk Depot/Creamery, Skilled Employees', 'OLI_EMPTYPE_DAIRYSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (250, 872, 'Dancer', 'OLI_EMPTYPE_DANCER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (251, 227, 'Dance Teacher (Full Time,Studio Other Than Residence)', 'OLI_EMPTYPE_DANCEINST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (252, 228, 'Day Care Owner/Employee,Non-Resid Teaching, Licensed', 'OLI_EMPTYPE_DAYCAREOWNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (253, 229, 'Decorator/Interior, Other,Including Paper Hanger', 'OLI_EMPTYPE_DECORATOROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (254, 230, 'Decorators, Interior, Consulting Duties Only', 'OLI_EMPTYPE_DECORATORCON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (255, 231, 'Decorators, Interior, Window And Display', 'OLI_EMPTYPE_DECORATORINT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (256, 232, 'Dental Hygienist,Office Assist(Not Nurses),Dentistry', 'OLI_EMPTYPE_DENTALHYGENIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (257, 233, 'Dental Lab Worker, Technician, Nurse, Dentistry', 'OLI_EMPTYPE_DENTALLAB', '');
INSERT INTO `oli_lu_employmenttype` VALUES (258, 234, 'Dermatologists', 'OLI_EMPTYPE_DERMATOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (259, 235, 'Designers, Interior', 'OLI_EMPTYPE_DESIGNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (260, 842, 'Detective', 'OLI_EMPTYPE_DETECTIVE', 'A person whose work involves investigating and trying to solve crimes, including participation on stake outs for suspected persons.');
INSERT INTO `oli_lu_employmenttype` VALUES (261, 236, 'Diamond Cutters, Polishers And Setters', 'OLI_EMPTYPE_DIAMONDCUTTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (262, 237, 'Die Makers (No Grinding)', 'OLI_EMPTYPE_DIEMAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (263, 873, 'Disc Jockey', 'OLI_EMPTYPE_DJ', '');
INSERT INTO `oli_lu_employmenttype` VALUES (264, 238, 'Dock Worker (Marine), Superintendent/Office Clerks', 'OLI_EMPTYPE_DOCKWORKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (265, 239, 'Doctors Of Medicine', 'OLI_EMPTYPE_MD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (266, 240, 'Dog Catchers', 'OLI_EMPTYPE_DOGCATCHER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (267, 241, 'Dog Kennels, Groomers (Away From Home)', 'OLI_EMPTYPE_KENNELGROOMER_RMT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (268, 243, 'Doormen', 'OLI_EMPTYPE_DOORMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (269, 244, 'Draftsmen (Office Away From Home Only)', 'OLI_EMPTYPE_DRAFTSMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (270, 245, 'Drawbridge Tenders, In Towers', 'OLI_EMPTYPE_DRAWBRIDGETENGERTOW', '');
INSERT INTO `oli_lu_employmenttype` VALUES (271, 246, 'Drawbridge Tenders, Others', 'OLI_EMPTYPE_DRAWBRIDGETENGEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (272, 247, 'Dressmakers, In Shop', 'OLI_EMPTYPE_DRESSMAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (273, 248, 'Drill Press Operators', 'OLI_EMPTYPE_DRILLPRESSOPER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (274, 249, 'Driver, Taxi,Including Proprietor Of Small Taxi Company', 'OLI_EMPTYPE_DRIVERTAXI', 'May also be classified as --> 736 OLI_EMPTYPE_TAXICABDRIVER');
INSERT INTO `oli_lu_employmenttype` VALUES (275, 250, 'Driver, Truck-Non-hazardous: Light Trucking, Local', 'OLI_EMPTYPE_DRIVERTRUCKLIGHT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (276, 251, 'Drivers, Ambulances/Ambulance Drivers', 'OLI_EMPTYPE_DRIVERAMBULANCE', 'Unclassified Ambulance Driver');
INSERT INTO `oli_lu_employmenttype` VALUES (277, 254, 'Drug/Toilet Preparation Manufacturing, Foremen/Superintendent', 'OLI_EMPTYPE_DRUGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (278, 255, 'Drug/Toilet Preparation Manufacturing,Skilled Worker', 'OLI_EMPTYPE_DRUGSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (279, 252, 'Drug And Toilet Preparations Manufacturing, Others', 'OLI_EMPTYPE_DRUGMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (280, 253, 'Drug Store, Clerks', 'OLI_EMPTYPE_DRUGCLERK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (281, 258, 'Dry Cleaning/Dyeing, Clerk(Counter Duty/Manager', 'OLI_EMPTYPE_DRYCLEANCTR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (282, 256, 'Dry Cleaning And Dyeing, Foremen', 'OLI_EMPTYPE_DRYCLEANFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (283, 257, 'Dry Cleaning And Dyeing, Others', 'OLI_EMPTYPE_DRYCLEANOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (284, 260, 'Dye/Dye Intermediate Manufacturing, Chemist Process', 'OLI_EMPTYPE_DYEMFGCHEMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (285, 259, 'Dye/Dye Intermediate Manufacturing, Superintendent/Chemists', 'OLI_EMPTYPE_DYEMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (286, 261, 'Ear Nose And Throat MD\'S', 'OLI_EMPTYPE_ENFMD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (287, 262, 'Economists', 'OLI_EMPTYPE_ECONOMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (288, 263, 'Editors, Magazine And Newspaper, Office Duties Only', 'OLI_EMPTYPE_EDITOR', 'May also be classified as --> 513 OLI_EMPTYPE_NEWSOFFICE');
INSERT INTO `oli_lu_employmenttype` VALUES (289, 264, 'Efficiency Expert/Industrial Engineer, Factory/Plant', 'OLI_EMPTYPE_EFFECEXPPLANT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (290, 265, 'Efficiency Expert/Industrial Engineer, Office Duties', 'OLI_EMPTYPE_OFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (291, 266, 'Egg Handlers Or Testers', 'OLI_EMPTYPE_EGGTESTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (292, 268, 'Electrical Industry--Apparatus Manufacture, Foremen', 'OLI_EMPTYPE_ELECTRICALMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (293, 269, 'Electrical Industry--Battery Manufacture, All Others', 'OLI_EMPTYPE_ELECTRICALMFGBATOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (294, 270, 'Electrical Industry--Battery Manufacture,Foremen', 'OLI_EMPTYPE_ELECTRICALMFGBATFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (295, 271, 'Electrical Industry--Battery Manufacture/Superintendent', 'OLI_EMPTYPE_ELECTRICALMFGBATSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (296, 273, 'Electrical Industry--Electrical Apparatus, All Other', 'OLI_EMPTYPE_ELECTRICALAPPMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (297, 272, 'Electrical Industry--Electrical Apparatus Manufacturer', 'OLI_EMPTYPE_ELECTRICALAPPMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (298, 277, 'Electrical Industry--General,Electrical Contractor', 'OLI_EMPTYPE_ELECTRICALCONTRACTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (299, 278, 'Electrical Industry--General,Electrical Engineers', 'OLI_EMPTYPE_ELECTRICALENGINEER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (300, 275, 'Electrical Industry--General, Installer/Repairmen', 'OLI_EMPTYPE_ELECTRICALINSTALLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (301, 276, 'Electrical Industry--General, Meter Readers', 'OLI_EMPTYPE_ELECTRICALMETERREADER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (302, 279, 'Electrical Industry--General/Electrical Contractor', 'OLI_EMPTYPE_ELECTRICALCONTRACTOR2', '');
INSERT INTO `oli_lu_employmenttype` VALUES (303, 274, 'Electrical Industry--General Engineer: Consult/Design', 'OLI_EMPTYPE_ELECTRICALENGINEERCON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (304, 281, 'Electrical Industry--Overhead/Tunnel Linemen/Splicer', 'OLI_EMPTYPE_ELECTRICALTUNNELSPLICER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (305, 282, 'Electrical Industry--Overhead/Tunnel Pole Setters', 'OLI_EMPTYPE_ELECTRICALTUNNELPOLESETTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (306, 283, 'Electrical Industry--Overhead/Tunnel Tower Erectors', 'OLI_EMPTYPE_ELECTRICALTOWERERECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (307, 284, 'Electrical Industry--Overhead/Tunnel Transformer', 'OLI_EMPTYPE_ELECTRICALTUNNELTRANSFORMAR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (308, 280, 'Electrical Industry--Overhead Line/Tunnel Foremen', 'OLI_EMPTYPE_ELECTRICALTUNNELFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (309, 267, 'Electrical Industry-Power House/Sub-Stations, All Other', 'OLI_EMPTYPE_ELECTRICALPOWOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (310, 285, 'Electrical Industry--Power Houses/Sub-Station Superintendent', 'OLI_EMPTYPE_ELECTRICALPOWERSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (311, 286, 'Electrologists', 'OLI_EMPTYPE_ELECTROLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (312, 287, 'Electroplaters', 'OLI_EMPTYPE_ELECTRPLATER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (313, 288, 'Electrotypers', 'OLI_EMPTYPE_ELECTRTYPER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (314, 289, 'Elevator Operator, Passenger Operator/Starters', 'OLI_EMPTYPE_ELEVATOROPER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (315, 290, 'Elevator Operators, Freight Operators', 'OLI_EMPTYPE_ELEVATORFREIGHT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (316, 291, 'Embalmer/Assistant', 'OLI_EMPTYPE_EMBALMER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (317, 292, 'Emergency Room Physicians', 'OLI_EMPTYPE_EMERRMMD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (318, 293, 'Enamel Factory/Tinware/Sanitary Ware, All Others', 'OLI_EMPTYPE_ENAMELMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (319, 294, 'Enamel Factory/Tinware/Sanitary Ware, Foremen', 'OLI_EMPTYPE_ENAMELMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (320, 295, 'Enamel Factory/Tinware/Sanitary Ware, Superintendent', 'OLI_EMPTYPE_ENAMELMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (321, 296, 'Endocrinologist', 'OLI_EMPTYPE_ENDOCRINOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (322, 297, 'Endodontists', 'OLI_EMPTYPE_ENDODONTIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (323, 300, 'Engineer, Stationary--Non-Hazardous Industries', 'OLI_EMPTYPE_ENGINEERSTATNONHAZARD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (324, 298, 'Engineer (Registered Professional) Non-Hazardous', 'OLI_EMPTYPE_ENGINEERRPENONHAZ', '');
INSERT INTO `oli_lu_employmenttype` VALUES (325, 299, 'Engineer (Registered Professional) Office/Consultant', 'OLI_EMPTYPE_ENGINEERRPEOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (326, 301, 'Engineers,Office Duties And Consulting Duties Only', 'OLI_EMPTYPE_ENGINEEROFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (327, 302, 'Engravers, Celluloid Glass/Metal/Plate Photoengraver', 'OLI_EMPTYPE_ENGRAVERMISC', '');
INSERT INTO `oli_lu_employmenttype` VALUES (328, 303, 'Engravers, Monument', 'OLI_EMPTYPE_ENGRAVERMONUMENT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (329, 304, 'Enterologists', 'OLI_EMPTYPE_ENTEROLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (330, 874, 'Entertainer', 'OLI_EMPTYPE_ENTERTAINER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (331, 305, 'Entomologists, Ethnologists', 'OLI_EMPTYPE_ENTOMOLOGISTS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (332, 306, 'Epidemiologists', 'OLI_EMPTYPE_EPIDEMIOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (333, 307, 'Executive/Corporate, Office Primarily, 35+ Employee', 'OLI_EMPTYPE_EXECBIGCO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (334, 308, 'Executive/Corporate, Other Executive, Primarily Office', 'OLI_EMPTYPE_EXECOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (335, 875, 'Exerciser', 'OLI_EMPTYPE_EXERCISER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (336, 309, 'Expediters, Office And Store Systems Only', 'OLI_EMPTYPE_EXPEDITERSYS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (337, 310, 'Expediters, Others', 'OLI_EMPTYPE_EXPEDITEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (338, 311, 'Explosive Manuf, Office Worker Over01/2 Mile From', 'OLI_EMPTYPE_EXPLOSIVEMFGOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (339, 853, 'Explosives and Munitions', 'OLI_EMPTYPE_EXPLOSIVES', 'Manufacture, assembling, loading, testing and delivering of explosives and other elements for the preparation of ammunition for firing.');
INSERT INTO `oli_lu_employmenttype` VALUES (340, 312, 'Explosives Manufacture, Superintendent/Chemist', 'OLI_EMPTYPE_EXPLOSIVEMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (341, 313, 'Exterminators', 'OLI_EMPTYPE_EXTERMINATOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (342, 315, 'Factory Worker Non-Hazardous, Skilled Worker, Heavy', 'OLI_EMPTYPE_FACWKRSKILLEDHEAVY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (343, 316, 'Factory Worker Non-Hazardous, Unskilled Worker, Light', 'OLI_EMPTYPE_FACWKRUNSKILLEDLIGHT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (344, 314, 'Factory Worker Non-Hazardous Industry, Skilled Worker', 'OLI_EMPTYPE_FACWKRSKILLERNONHAZ', '');
INSERT INTO `oli_lu_employmenttype` VALUES (345, 317, 'Family Practitioners', 'OLI_EMPTYPE_FAMILYPRACTITIONER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (346, 319, 'Farmer(General/Dairy/Fruit) Year Round, All Others', 'OLI_EMPTYPE_FARMEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (347, 320, 'Farmer(General/Dairy/Fruit)Year Round,Proprietor', 'OLI_EMPTYPE_FARMEROWNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (348, 318, 'Farmer (General Farm/Dairy/Fruit/Nursery/Garden)', 'OLI_EMPTYPE_FARMERMISC', '');
INSERT INTO `oli_lu_employmenttype` VALUES (349, 321, 'Felt Workers', 'OLI_EMPTYPE_FELTWORKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (350, 322, 'Film Manufacture, Foremen(Supervising Duties Only)', 'OLI_EMPTYPE_FILMMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (351, 323, 'Film Manufacture, Skilled Workers', 'OLI_EMPTYPE_FILMMFGSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (352, 900, 'Financial Advisor', 'OLI_EMPTYPE_FINADVSR', 'Person who assesses the financial needs of individuals and assists them with investments, tax laws and insurance decisions.');
INSERT INTO `oli_lu_employmenttype` VALUES (353, 325, 'Firearm, Inspector/Repairer(Not Testing) Salesmen', 'OLI_EMPTYPE_FIREARMSALESMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (354, 324, 'Fire Department Chief/Marshal/Superintendent', 'OLI_EMPTYPE_FIREDEPTSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (355, 838, 'Fireman', 'OLI_EMPTYPE_FIREMAN', 'A person whose work is to extinguish fires. A member of a Fire Department.');
INSERT INTO `oli_lu_employmenttype` VALUES (356, 855, 'Fireman, Off-shore Oil or Gas wells', 'OLI_EMPTYPE_FIREMANOFFSHORE', 'A fireman specializing in extinguishing fires on off-shore wells.');
INSERT INTO `oli_lu_employmenttype` VALUES (357, 854, 'Fireman, Smoke Jumper', 'OLI_EMPTYPE_SMOKEJUMPER', 'A fireman specializing in extinguishing forest fires.');
INSERT INTO `oli_lu_employmenttype` VALUES (358, 326, 'Fishing Industry Hatcheries, Others', 'OLI_EMPTYPE_FISHHATCHOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (359, 327, 'Fishing Industry Hatcheries, Superintendents', 'OLI_EMPTYPE_FISHHATCHSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (360, 901, 'Flight Attendant', 'OLI_EMPTYPE_FLGHTATT', 'Member of the flight crew who ensures the safety and comfort of passengers on aircraft.');
INSERT INTO `oli_lu_employmenttype` VALUES (361, 902, 'Flight Instructor', 'OLI_EMPTYPE_FLGHTINSTR', 'Person who teaches others how to fly aircraft. Also evaluates the abilties and skill level of the student who is pursuing a pilot\'s license.');
INSERT INTO `oli_lu_employmenttype` VALUES (362, 328, 'Floor Finishers And Sanders', 'OLI_EMPTYPE_FLOORFININSER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (363, 329, 'Floorwalker (In Store)', 'OLI_EMPTYPE_FLOORWALKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (364, 330, 'Florists, Artificial Flower Makers', 'OLI_EMPTYPE_FLORISTARTMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (365, 331, 'Florists, Greenhouse And Light Delivery', 'OLI_EMPTYPE_FLORISTGRNHSE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (366, 332, 'Florists, Store Duties Only', 'OLI_EMPTYPE_FLORISTSTORE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (367, 857, 'Foreign Correspondents or Journalists', 'OLI_EMPTYPE_FOREIGNJOURNALIST', 'Journalist, news crew member or photographer whose assignments include foreign travel.');
INSERT INTO `oli_lu_employmenttype` VALUES (368, 333, 'Freight Handler, Foremen/Superintendent (Supervising)', 'OLI_EMPTYPE_FREIGHTSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (369, 334, 'Freight Handlers, All Others', 'OLI_EMPTYPE_FREIGHTOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (370, 335, 'Fumigators', 'OLI_EMPTYPE_FUMIGATOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (371, 336, 'Funeral Industry, Director, Proprietor', 'OLI_EMPTYPE_FUNERALDIRECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (372, 337, 'Funeral Industry, Embalmers', 'OLI_EMPTYPE_FUNERALEMBALMER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (373, 338, 'Funeral Industry, Others', 'OLI_EMPTYPE_FUNERALOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (374, 773, 'Funeral Industry, Undertakers, Assistants And Embalmers', 'OLI_EMPTYPE_UNDERTAKERASSIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (375, 347, 'Fur Industry, Fur-Bearing Animal Raisers', 'OLI_EMPTYPE_FURRAISER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (376, 339, 'Fur Industry Manufacture Of Fur Goods, Foremen', 'OLI_EMPTYPE_FURMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (377, 340, 'Fur Industry Manufacture Of Fur Goods, Others', 'OLI_EMPTYPE_FURMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (378, 341, 'Fur Industry Manufacture Of Fur Goods, Skilled Worker', 'OLI_EMPTYPE_FURMFGSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (379, 342, 'Fur Industry Preparation Of Skins, Foremen', 'OLI_EMPTYPE_FURPREPFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (380, 343, 'Fur Industry Preparation Of Skins, Others', 'OLI_EMPTYPE_FURPREPOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (381, 344, 'Fur Industry Retail/Wholesale Dealer, Store Sales', 'OLI_EMPTYPE_FURSALESSTORE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (382, 345, 'Fur Industry Retail/Wholesale Dealer/Repairing/Alter', 'OLI_EMPTYPE_FURSALESREPAIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (383, 346, 'Fur Industry Retail/Wholesale Dealer/Sales (Travel)', 'OLI_EMPTYPE_FURSALESTRAVEL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (384, 349, 'Furniture/Woodworking Factories, All Others', 'OLI_EMPTYPE_FURNITUREFACTOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (385, 350, 'Furniture/Woodworking Factories, Office Duties Only', 'OLI_EMPTYPE_FURNITUREFACTOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (386, 351, 'Furniture/Woodworking Factories, Upholsterers', 'OLI_EMPTYPE_FURNITUREFACTUPHOL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (387, 352, 'Furniture/Woodworking Factory, Foremen/Superintendent', 'OLI_EMPTYPE_FURNITUREFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (388, 348, 'Furniture Mover (Including Machinery/Safe Movers)', 'OLI_EMPTYPE_FURNITUREMOVER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (389, 353, 'Galvanizers And Tinners (Not Roofers)', 'OLI_EMPTYPE_GALVANIZER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (390, 354, 'Gambling Industry (Legal), Card Dealer/Croupier/Dice', 'OLI_EMPTYPE_GAMBLINGDEALER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (391, 355, 'Gambling Industry (Where Legalized/Operated In Law)', 'OLI_EMPTYPE_GAMBLING', '');
INSERT INTO `oli_lu_employmenttype` VALUES (392, 358, 'Garbage/Ash Collection/Scavenging, Foremen (Supervision)', 'OLI_EMPTYPE_GARBAGESUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (393, 356, 'Garbage Disposal Plant/Incinerator, Chemists (Supervision)', 'OLI_EMPTYPE_GARBAGECHEMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (394, 357, 'Garbage Disposal Plant/Incinerator, Skilled Workers', 'OLI_EMPTYPE_GARBAGESKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (395, 359, 'Gardener/Landscaper (Year Round,Regularly Employed)', 'OLI_EMPTYPE_GARDNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (396, 361, 'Gas Manufacture Acetylene/Coal, Chemist (No Lab Duties)', 'OLI_EMPTYPE_GASMFGFLAMCHEMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (397, 360, 'Gas Manufacture Acetylene/Coal Foremen (Supervising)', 'OLI_EMPTYPE_GASMFGFLAMSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (398, 362, 'Gas Manufacture Coke Oven/Artificial Gas--Chemists', 'OLI_EMPTYPE_GASMFGCOKECHEMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (399, 363, 'Gas Manufacture Coke Oven/Artificials--Burner/Charge', 'OLI_EMPTYPE_GASMFGCOKENURNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (400, 365, 'Gas Manufacture Compressed/Liquified,Chemist(No Lab)', 'OLI_EMPTYPE_GASMFGCOMPCHEMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (401, 364, 'Gas Manufacture Compressed/Liquified, Foremen/Cellme', 'OLI_EMPTYPE_GASMFGCOMPFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (402, 366, 'Gas Manufacture Compressed/Liquified--Rackmen/Trucker', 'OLI_EMPTYPE_GASMFGCOMPTRUCKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (403, 367, 'Gastroenterologists', 'OLI_EMPTYPE_GASTROENTEROLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (404, 368, 'General Dentistry, Dentists', 'OLI_EMPTYPE_DENTIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (405, 369, 'General Practitioners', 'OLI_EMPTYPE_GENPRACT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (406, 370, 'General Surgeons', 'OLI_EMPTYPE_GENSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (407, 915, 'Generic hazardous occupation', 'OLI_EMPTYPE_HAZARDOUS', 'Hazardous occupation as defined by the insurer, specific type unknown.');
INSERT INTO `oli_lu_employmenttype` VALUES (408, 371, 'Geologist, Working In Us/Canada Only, Field Work', 'OLI_EMPTYPE_GEOLOGISTFIELD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (409, 372, 'Geologist, Working In Us/Canada Only, Office/Consult', 'OLI_EMPTYPE_GEOLOGISTFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (410, 903, 'Geriatrician', 'OLI_EMPTYPE_GERIATRIC', 'Physician who focuses on health care for the elderly.');
INSERT INTO `oli_lu_employmenttype` VALUES (411, 373, 'Glass Industry, Foremen', 'OLI_EMPTYPE_GLASSFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (412, 374, 'Glass Industry, Other Skilled Workers', 'OLI_EMPTYPE_GLASSSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (413, 375, 'Glass Industry, Superintendents (Supervising Only)', 'OLI_EMPTYPE_GLASSSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (414, 376, 'Glaziers', 'OLI_EMPTYPE_GLAZIER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (415, 377, 'Goldsmiths, Beaters And Refiners', 'OLI_EMPTYPE_GOLDSMITH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (416, 380, 'Golf--(Year Round), Caddie Master/Starter/Caretaker', 'OLI_EMPTYPE_GOLFCARETAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (417, 381, 'Golf--(Year Round), Proprietor/Managers,Driving Range', 'OLI_EMPTYPE_GOLFRANGE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (418, 379, 'Golf--(Year Round) Instructor/Professional (Resident)', 'OLI_EMPTYPE_GOLFPRO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (419, 378, 'Golf (Year Round Industry Only), Proprietor/Managers', 'OLI_EMPTYPE_GOLFMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (420, 382, 'Government Service-State/Municipal', 'OLI_EMPTYPE_GOVERNMENT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (421, 383, 'Grain Mill/Elevator, Foremen, Skilled Workers', 'OLI_EMPTYPE_GRAINSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (422, 384, 'Grain Mill/Grain Elevator, Superintendent/Inspector', 'OLI_EMPTYPE_GRAINSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (423, 385, 'Grain Mills, Grain Elevators, All Other Employees', 'OLI_EMPTYPE_GRAINOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (424, 386, 'Graphic Designers', 'OLI_EMPTYPE_GRAPHICDESIGN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (425, 387, 'Grave Diggers', 'OLI_EMPTYPE_GRAVEDIGGER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (426, 388, 'Grinder/Buffer/Polisher Metal, Superintendent/Foremen', 'OLI_EMPTYPE_METALGRINDERSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (427, 389, 'Grinders, Buffers, And Polishers Metal, All Others', 'OLI_EMPTYPE_GRINDEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (428, 390, 'Guides, Other Sightseeing--Employed All Year', 'OLI_EMPTYPE_GUIDE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (429, 391, 'Gunsmiths', 'OLI_EMPTYPE_GUNSMITH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (430, 392, 'Gynecologists', 'OLI_EMPTYPE_GYNECOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (431, 393, 'Hair Good Manufacture, Bleacher/Curler/Dyer/Spinner', 'OLI_EMPTYPE_HAIRMFGCHEM', '');
INSERT INTO `oli_lu_employmenttype` VALUES (432, 394, 'Hair Goods Manufacture, All Others', 'OLI_EMPTYPE_HAIRMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (433, 395, 'Hair Goods Manufacture, Foremen (Supervising Only)', 'OLI_EMPTYPE_HAIRMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (434, 904, 'Hairstylist', 'OLI_EMPTYPE_HAIRSTYL', 'Specializes in the styling of hair, including cutting and chemical services such as relaxers, texturizers, perms, and color, as well as restorative treatments.');
INSERT INTO `oli_lu_employmenttype` VALUES (435, 396, 'Hand Surgeons', 'OLI_EMPTYPE_HANDSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (436, 397, 'Harbor Masters', 'OLI_EMPTYPE_HARBORMASTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (437, 398, 'Hat Manufacturing, All Others', 'OLI_EMPTYPE_HATMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (438, 399, 'Hat Manufacturing, Millinery Dealers', 'OLI_EMPTYPE_HATMFRDEALER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (439, 400, 'Hat Manufacturing, Superintending Duties Only', 'OLI_EMPTYPE_HETMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (440, 401, 'Health Officials, Field Duties(No Hazardous Activity', 'OLI_EMPTYPE_HEALTHOFFHAZ', '');
INSERT INTO `oli_lu_employmenttype` VALUES (441, 402, 'Heating Apparatus (Coal/Oil/Gas/Electric), Dealer', 'OLI_EMPTYPE_HEATINGDEALER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (442, 403, 'Heating Apparatus (Coal/Oil/Gas/Electric), Installer', 'OLI_EMPTYPE_HEATINGINSTALLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (443, 404, 'Hematologists', 'OLI_EMPTYPE_HEMATOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (444, 905, 'Home Inspector', 'OLI_EMPTYPE_HOMEINSP', 'Person who determines the condition of a structure.');
INSERT INTO `oli_lu_employmenttype` VALUES (445, 866, 'Homemaker', 'OLI_EMPTYPE_HOMEMAKER', 'One who manages a household, as one\'s main daily activity');
INSERT INTO `oli_lu_employmenttype` VALUES (446, 407, 'Hospital/Asylum/Sanitarium,All Non-Professional/Unskilled', 'OLI_EMPTYPE_HOSPITALNONPRO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (447, 405, 'Hospital/Asylum/Sanitarium, EMT/Ambulance Driver/Na', 'OLI_EMPTYPE_HOSPITALAMBULANCEDRV', 'One who is employed by Hospital/Asylum/Sanitarium as an EMT/Ambulance Driver');
INSERT INTO `oli_lu_employmenttype` VALUES (448, 406, 'Hospital/Asylum/Sanitarium, Manager, Superintendent', 'OLI_EMPTYPE_HOSPITALSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (449, 408, 'Hospitals, Asylums, And Sanitariums, Administrators', 'OLI_EMPTYPE_HOSPITALADMIN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (450, 409, 'Hotel/Motel/Inn, Proprietor, Manager, Cashier, Clerk', 'OLI_EMPTYPE_HOTELMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (451, 410, 'Hotels, Motels, Inns, All Others', 'OLI_EMPTYPE_HOTELOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (452, 411, 'Household Appliances, Dealers And Salesmen', 'OLI_EMPTYPE_HOUSEHOLDDEALER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (453, 412, 'Household Appliances, Installers And Repairmen', 'OLI_EMPTYPE_HOUSEHOLDDREPAIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (454, 413, 'Humane Society Agents', 'OLI_EMPTYPE_HUMANESOCIETYAGENT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (455, 414, 'Hydraulic Press Operators', 'OLI_EMPTYPE_HYDRAULICPRESSOPR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (456, 415, 'Hypnotherapists', 'OLI_EMPTYPE_HYPNOTHERAPIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (457, 416, 'Ice Industry (Year-Round), All Other Employees', 'OLI_EMPTYPE_ICEOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (458, 417, 'Ice Industry (Year-Round), Foremen/Stationary Engineer', 'OLI_EMPTYPE_ICEFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (459, 418, 'Ice Industry(Year-Round)Manager/Proprietors/Superintendent', 'OLI_EMPTYPE_ICEMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (460, 419, 'Import/Export', 'OLI_EMPTYPE_IMPORT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (461, 420, 'Industrial Rehab Executive', 'OLI_EMPTYPE_INDUSTREHABEXEC', '');
INSERT INTO `oli_lu_employmenttype` VALUES (462, 421, 'Infectious Disease Specialists', 'OLI_EMPTYPE_INFECTDISEASESPEC', '');
INSERT INTO `oli_lu_employmenttype` VALUES (463, 422, 'Insecticide Manuf(Disinfectant/Fumigants), All Other', 'OLI_EMPTYPE_INSECTOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (464, 423, 'Insecticide Manufacture (Disinfectant/Fumigants)', 'OLI_EMPTYPE_INSECTMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (465, 424, 'Insecticide Mfg (Disinfectant/Fumigants) Lab Chemist', 'OLI_EMPTYPE_9NSECTCHEMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (466, 425, 'Insurance Industry--', 'OLI_EMPTYPE_INSURANCE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (467, 426, 'Insurance Industry-Adjuster, Agent, Broker, Solicitor', 'OLI_EMPTYPE_INSURANCEAGENT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (468, 427, 'Internists', 'OLI_EMPTYPE_INTERNIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (469, 428, 'Interpreters-Full Time Only', 'OLI_EMPTYPE_INTREPRETER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (470, 429, 'Investment Banker', 'OLI_EMPTYPE_INVESTBANKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (471, 876, 'Iron Worker', 'OLI_EMPTYPE_IRONWKR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (472, 430, 'Irrigation Worker, Superintendent/Water Masters', 'OLI_EMPTYPE_IMMIGRATION', '');
INSERT INTO `oli_lu_employmenttype` VALUES (473, 432, 'Janitors--Regular/Full Time, Building Superintendent', 'OLI_EMPTYPE_JANITORSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (474, 431, 'Janitors--Regular/Full Time Janitor/Porters,No Outside', 'OLI_EMPTYPE_JANITOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (475, 433, 'Jewelry Industry--Not At Residence, Others', 'OLI_EMPTYPE_JEWELRYOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (476, 434, 'Jewelry Industry--Not At Residence, Proprietor, Mgr', 'OLI_EMPTYPE_JEWELRYMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (477, 435, 'Jewelry Industry--Not Residence, Maker/Repairer Hand', 'OLI_EMPTYPE_JEWELRYMAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (478, 877, 'Jockey', 'OLI_EMPTYPE_JOCKEY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (479, 436, 'Judge/Courthouse Official, Not In Charge Of Prisoner', 'OLI_EMPTYPE_JUDGE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (480, 437, 'Junk Dealer, Proprietor/Superintending Duties Only', 'OLI_EMPTYPE_JUNKDEALER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (481, 438, 'Justices Of The Peace', 'OLI_EMPTYPE_JUSTICEOFPEACE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (482, 439, 'Kennels, Groomers', 'OLI_EMPTYPE_KENNELGROOMER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (483, 440, 'Kennels, Managers Or Operators (Supervising Only)', 'OLI_EMPTYPE_KENNELMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (484, 242, 'Kennels, Proprietors, Breeders, Trainers', 'OLI_EMPTYPE_KENNELOWNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (485, 441, 'Kennels, Veterinarians, Household Pets', 'OLI_EMPTYPE_KENNELVETPET', '');
INSERT INTO `oli_lu_employmenttype` VALUES (486, 442, 'Kennels, Veterinarians, Large Animals', 'OLI_EMPTYPE_KENNELVETLARGE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (487, 443, 'Keno Writers', 'OLI_EMPTYPE_KENOWRITER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (488, 446, 'Laborers', 'OLI_EMPTYPE_LABORER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (489, 445, 'Labor Union, Union Official, Office Duties Only', 'OLI_EMPTYPE_LABORUNIONOFF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (490, 444, 'Lab Tech, Other Rn, Hospital, Asylum, & Sanitarium', 'OLI_EMPTYPE_LABTECHOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (491, 447, 'Landscape Architects, With Architecture Degree', 'OLI_EMPTYPE_LANDSCAPEARCHITECT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (492, 448, 'Laundries, Supervisory Duties Only', 'OLI_EMPTYPE_LAUNDRYSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (493, 449, 'Lawyers', 'OLI_EMPTYPE_LAWTER', 'One whose profession is to conduct lawsuits for clients or to advise as to legal rights and obligations in other matters (Passed the bar)');
INSERT INTO `oli_lu_employmenttype` VALUES (494, 450, 'Lens Grinders, Polishers, Or Cutters', 'OLI_EMPTYPE_LENGRINDER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (495, 451, 'Librarian', 'OLI_EMPTYPE_LIBRARIAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (496, 452, 'Lighthouse Keepers, Land Duties Only', 'OLI_EMPTYPE_LIGHTHOUSEKEEPER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (497, 878, 'Lineman', 'OLI_EMPTYPE_LINEMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (498, 454, 'Linoleum/Oilcloth Manufacture, Stone Dresser/Laborer', 'OLI_EMPTYPE_LINOLEUMLABOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (499, 455, 'Linoleum/Oilcloth Manufacture, Supervisory Only', 'OLI_EMPTYPE_LINOLEUMSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (500, 453, 'Linoleum Installers', 'OLI_EMPTYPE_LINOLEUMINSTALLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (501, 456, 'Linotypers', 'OLI_EMPTYPE_LINOTYPER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (502, 457, 'Liquor Industry Brewery/Distillery/Wineries, Supervision', 'OLI_EMPTYPE_LIQUORMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (503, 458, 'Liquor Industry Brewery/Distillery/Winery, All Other', 'OLI_EMPTYPE_LIQUORMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (504, 459, 'Liquor Industry Brewery/Distillery/Winery, Foremen', 'OLI_EMPTYPE_LIQUORDISTSTORE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (505, 461, 'Liquor Industry Distribution/Sales, Others Light Del', 'OLI_EMPTYPE_LIQUORDISTOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (506, 462, 'Liquor Industry Distribution/Sales, Solicitor/Collector', 'OLI_EMPTYPE_LIQUORSALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (507, 460, 'Liquor Industry Distribution/Sale Warehouse/Store', 'OLI_EMPTYPE_LIQUORDISTDEL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (508, 463, 'Liquor Industry Sales/Package Store, No Liquor Consumed', 'OLI_EMPTYPE_LIQUORPACKSTORE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (509, 464, 'Literary Agents', 'OLI_EMPTYPE_LITERARYAGENT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (510, 465, 'Lithographers, All Others', 'OLI_EMPTYPE_LITHOGRAPHEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (511, 466, 'Lithographers, Office Duties Only And Artists', 'OLI_EMPTYPE_LITHOGRAPHEROFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (512, 906, 'Loan Officer', 'OLI_EMPTYPE_LOANOFF', 'Person who gathers information from a person or business to determine the likelihood they will repay the loan. They can also assist the person or business with determining the most appropriate type of loan for them.');
INSERT INTO `oli_lu_employmenttype` VALUES (513, 467, 'Lobbyists', 'OLI_EMPTYPE_LOBBYIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (514, 468, 'Locksmiths', 'OLI_EMPTYPE_LOCKSMITH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (515, 469, 'Lumber Industry Logging/Proprietor/Manager/Clerk', 'OLI_EMPTYPE_LUMBERCLERK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (516, 470, 'Lumber Industry Wood Processing Factories, Foremen', 'OLI_EMPTYPE_LUMBERFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (517, 471, 'Lumber Industry Yard, Foremen/Grader/Inspector/Sales', 'OLI_EMPTYPE_LUMBERSALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (518, 864, 'Lumberman', 'OLI_EMPTYPE_LUMBERMAN', 'Boom men, high climbers, raftsmen, riggers, rivermen, topmen');
INSERT INTO `oli_lu_employmenttype` VALUES (519, 472, 'Machine Shop Workers, Millwrights', 'OLI_EMPTYPE_MACHINESHOP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (520, 473, 'Manicurists (In Shops)', 'OLI_EMPTYPE_MANICURIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (521, 474, 'Marine Industry, Harbor Masters', 'OLI_EMPTYPE_HARBORMAST2', '');
INSERT INTO `oli_lu_employmenttype` VALUES (522, 475, 'Masons And Bricklayers (No Unusual Hazard)', 'OLI_EMPTYPE_MASON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (523, 476, 'Match Factories, Foremen', 'OLI_EMPTYPE_MATCHMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (524, 477, 'Match Factories, Supervisory Duties Only', 'OLI_EMPTYPE_MATCHMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (525, 480, 'Mattress/Pillow Factories, Supervisory Duties Only', 'OLI_EMPTYPE_MATRESSSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (526, 478, 'Mattress And Pillow Factories, All Others', 'OLI_EMPTYPE_MATTRESSOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (527, 479, 'Mattress And Pillow Factories, Foremen', 'OLI_EMPTYPE_MATTERSSFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (528, 481, 'Messenger--Armed Or Using Motorcycle', 'OLI_EMPTYPE_MESSENGER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (529, 482, 'Messengers--Banks, Unarmed', 'OLI_EMPTYPE_MESSENGERBANK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (530, 858, 'Metal Industry', 'OLI_EMPTYPE_METALS', 'Workers in heavy (iron and steel) and light (magnesium and aluminum) metal industries.');
INSERT INTO `oli_lu_employmenttype` VALUES (531, 484, 'Metal Industry/Trade--Not Other Classified, Foremen', 'OLI_EMPTYPE_METALTRADEFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (532, 485, 'Metal Industry/Trade-Not Otherwise Classified, Office', 'OLI_EMPTYPE_METALTRADEOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (533, 486, 'Metal Industry/Trades--Not Otherwise Classified, Engineer', 'OLI_EMPTYPE_METALTRADEENGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (534, 483, 'Metal Industry/Trades--Not Otherwise Classified, Skilled', 'OLI_EMPTYPE_METALTRADEOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (535, 487, 'Metallurgists--Office Duties Only', 'OLI_EMPTYPE_METALURGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (536, 488, 'Meteorologists', 'OLI_EMPTYPE_METEOROLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (537, 489, 'Meter Readers', 'OLI_EMPTYPE_METERREADER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (538, 490, 'Mica Mills, Skilled Workers', 'OLI_EMPTYPE_MICAMILLSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (539, 491, 'Mica Mills, Supervisory Duties', 'OLI_EMPTYPE_MICAMILLSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (540, 492, 'Midwives--Individ Consideration, Consult Home Office', 'OLI_EMPTYPE_MIDWIFE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (541, 859, 'Military', 'OLI_EMPTYPE_MILITARY', 'Those individuals on active duty in the military');
INSERT INTO `oli_lu_employmenttype` VALUES (542, 493, 'Millwrights', 'OLI_EMPTYPE_MILLWRIGHT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (543, 495, 'Mining/Quarry/Dressing/Concentrating Surface Operator', 'OLI_EMPTYPE_MININGMISC', '');
INSERT INTO `oli_lu_employmenttype` VALUES (544, 498, 'Mining/Quarrying/Ore/Concentrating Surface Operators', 'OLI_EMPTYPE_MININGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (545, 497, 'Mining/Quarrying/Ore-Surface Operator, Other Skilled', 'OLI_EMPTYPE_MININGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (546, 496, 'Mining/Quarrying Surface Operator, Office Duty Only', 'OLI_EMPTYPE_MININGOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (547, 494, 'Minister', 'OLI_EMPTYPE_MINISTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (548, 879, 'Missile Worker', 'OLI_EMPTYPE_MISSILEWKR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (549, 880, 'Model', 'OLI_EMPTYPE_MODEL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (550, 499, 'Monument Industry, Carvers, Engravers, Setters', 'OLI_EMPTYPE_MONUMENTSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (551, 501, 'Motion Picture/Theater, Management Personnel, Office', 'OLI_EMPTYPE_MOVIEOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (552, 502, 'Motion Picture/Theater, Projectionist In Theater,Bo', 'OLI_EMPTYPE_MOVIETHEATER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (553, 503, 'Motion Picture/Theater, Theater Manager/Proprietors', 'OLI_EMPTYPE_MOVIEMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (554, 500, 'Motion Picture/Theater Industry, Director/Producers', 'OLI_EMPTYPE_MOVIEDIRECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (555, 881, 'Motorcycle Racer', 'OLI_EMPTYPE_MOTORACER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (556, 504, 'Movers', 'OLI_EMPTYPE_MOVER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (557, 505, 'Musician (Sole Occupation),Concert/Theater/ Symphony', 'OLI_EMPTYPE_MUSICIAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (558, 506, 'Neonatologists', 'OLI_EMPTYPE_NEONASTOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (559, 507, 'Nephrologists', 'OLI_EMPTYPE_NEPHROLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (560, 509, 'Neurologists', 'OLI_EMPTYPE_NEUROLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (561, 508, 'Neuro Surgeons', 'OLI_EMPTYPE_NEUROSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (562, 511, 'News/Magazine Dealer, Newsstand Inside Duties', 'OLI_EMPTYPE_NEWSDEALER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (563, 510, 'News And Magazine Dealers, Light Delivery', 'OLI_EMPTYPE_NEWSDEALERDEL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (564, 512, 'Newspapers, Delivery', 'OLI_EMPTYPE_NEWSDELIVERY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (565, 513, 'Newspapers, Editors, Office Clerks', 'OLI_EMPTYPE_NEWSOFFICE', 'May also be classified as --> 263 OLI_EMPTYPE_EDITOR');
INSERT INTO `oli_lu_employmenttype` VALUES (566, 514, 'Newspapers, Helpers', 'OLI_EMPTYPE_NEWSHELPER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (567, 515, 'Newspapers, Reporters, Photographers (No Flying)', 'OLI_EMPTYPE_NEWSREPORTER', 'May also be classified as --> 649 OLI_EMPTYPE_REPORTERNEWS');
INSERT INTO `oli_lu_employmenttype` VALUES (568, 860, 'Nuclear energy industry', 'OLI_EMPTYPE_NUCLEAR', 'Workers in nuclear reactors, power generating plants, isotope production, research and testing facilities and waste conversion.');
INSERT INTO `oli_lu_employmenttype` VALUES (569, 516, 'Nuclear Medicine', 'OLI_EMPTYPE_NECLESEARMEDICINE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (570, 907, 'Nurse Anesthetist (CRNA)', 'OLI_EMPTYPE_NURANES', 'A Registered Nurse who has acquired graduate level education and who specializes in the administration of anaesthesia.');
INSERT INTO `oli_lu_employmenttype` VALUES (571, 908, 'Nurse Practioner (RNP)', 'OLI_EMPTYPE_NURPRAC', 'A registered nurse who has completed specific advanced nursing education (generally a masters degree or doctoral degree) and training in the diagnosis and management of common as well as a few complex medical conditions.');
INSERT INTO `oli_lu_employmenttype` VALUES (572, 517, 'Ob-Gyn', 'OLI_EMPTYPE_OBGYN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (573, 518, 'Obstetricians', 'OLI_EMPTYPE_OBSTETRICIAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (574, 519, 'Occupational Therapists', 'OLI_EMPTYPE_OCCUPATIONALTHERAPIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (575, 520, 'Office Clerk(Typist,Stenographer,General Office Help', 'OLI_EMPTYPE_OFFICECLERK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (576, 521, 'Office Machine Operators (Office Duties Only)', 'OLI_EMPTYPE_OFFICEMACHINEOPERATOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (577, 525, 'Oil/Natural Gas Industry Fire Protection Dept/Inspector', 'OLI_EMPTYPE_OILINSPECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (578, 526, 'Oil/Natural Gas Industry General, Boss/Chemist Process', 'OLI_EMPTYPE_OILMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (579, 527, 'Oil/Natural Gas Industry General, Other Skilled Work', 'OLI_EMPTYPE_OILOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (580, 528, 'Oil/Natural Gas Industry General/Chemist In Lab', 'OLI_EMPTYPE_OILLABTECH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (581, 524, 'Oil(Vegetable)Mill/Refinery, Unskilled Workers', 'OLI_EMPTYPE_OILUNSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (582, 522, 'Oil (Vegetable) Mill/Refinery All Processes, Skilled', 'OLI_EMPTYPE_OILSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (583, 523, 'Oil (Vegetable) Mill/Refinery Superintendent/Chemist', 'OLI_EMPTYPE_OILCHEMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (584, 861, 'Oil and natural gas industry', 'OLI_EMPTYPE_OILGAS', 'Workers involved in the exploration, drilling and production of oil and natural gas, at both on and off-shore locations.');
INSERT INTO `oli_lu_employmenttype` VALUES (585, 529, 'Oilers, Non-Hazardous Industries', 'OLI_EMPTYPE_OILER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (586, 530, 'Oncologists', 'OLI_EMPTYPE_ONCOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (587, 531, 'Ophthalmic Surgeons', 'OLI_EMPTYPE_OPPTHAALMICSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (588, 532, 'Ophthalmologists', 'OLI_EMPTYPE_OPPTHAALMOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (589, 533, 'Optician, Oculist, Selling And Fining Duties Only', 'OLI_EMPTYPE_OPTICIANSALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (590, 534, 'Opticians, Oculists', 'OLI_EMPTYPE_OPTICIAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (591, 535, 'Optometrists (No Selling Duties)', 'OLI_EMPTYPE_OPTOMETRIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (592, 536, 'Oral Surgeons', 'OLI_EMPTYPE_ORALSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (593, 537, 'Orthodontists', 'OLI_EMPTYPE_ORTHODONTIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (594, 538, 'Orthopedic Surgeons', 'OLI_EMPTYPE_ORTHOPEDICSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (595, 539, 'Orthopedists', 'OLI_EMPTYPE_ORTHOPEDIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (596, 540, 'Orthotists, Prosthetists; Sales, Fitters', 'OLI_EMPTYPE_ORTHOTIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (597, 541, 'Osteopaths', 'OLI_EMPTYPE_OSTEOPATH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (598, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (599, 542, 'Otolaryngolic Surgeons', 'OLI_EMPTYPE_ORTOARYYNGOLIC', '');
INSERT INTO `oli_lu_employmenttype` VALUES (600, 543, 'Otolaryngologists', 'OLI_EMPTYPE_ORTOARYYNGOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (601, 544, 'Paint/Varnish/Lacquer Manufacture, Foremen, Skilled Worker', 'OLI_EMPTYPE_PAINTSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (602, 545, 'Paint/Varnish/Lacquer Manufacture, Unskilled Workers', 'OLI_EMPTYPE_PAINTUNSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (603, 546, 'Paint/Varnish/Manufacture, Supervisory Duties Only', 'OLI_EMPTYPE_PAINTSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (604, 551, 'Painter/Lacquerer/Varnisher, Bridge & Railroad', 'OLI_EMPTYPE_PAINTBRIDGE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (605, 552, 'Painter/Lacquerer/Varnisher, Highway-Direct Line/Si', 'OLI_EMPTYPE_PAINTHWY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (606, 553, 'Painter/Lacquerer/Varnisher, House Painters', 'OLI_EMPTYPE_PAINTHOUSE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (607, 554, 'Painter/Lacquerer/Varnisher, Ship Painter (Hull/Interest)', 'OLI_EMPTYPE_PAINTSHIP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (608, 547, 'Painter/Lacquerer/Varnisher Shop Painter, Manufacturer', 'OLI_EMPTYPE_PAINTMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (609, 548, 'Painter/Lacquerer/Varnisher Sign Painter, Outside', 'OLI_EMPTYPE_PAINTSIGNOUTSIDE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (610, 549, 'Painter/Lacquerer/Varnisher Sign Painter, Shop Only', 'OLI_EMPTYPE_PAINTSIGNINSIDE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (611, 550, 'Painter/Lacquerer/Varnisher Sign Painter, Structural', 'OLI_EMPTYPE_PAINTSIGNSTRUCTURAL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (612, 556, 'Paper/Pulp Industries, Superintendents And Foremen', 'OLI_EMPTYPE_PAPERPULPSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (613, 555, 'Paper Hangers', 'OLI_EMPTYPE_PAPERHANGER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (614, 557, 'Paralegal', 'OLI_EMPTYPE_PARALEGAL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (615, 909, 'Park Ranger', 'OLI_EMPTYPE_PARKRANG', 'Person at the national, state or provincial level who is entrusted with protecting and preserving parklands.');
INSERT INTO `oli_lu_employmenttype` VALUES (616, 560, 'Parks (City/State/National), Superintendent-Supervisor', 'OLI_EMPTYPE_PARKSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (617, 558, 'Parks (City/State/National) Administration Employees', 'OLI_EMPTYPE_PARKADMIN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (618, 559, 'Parks (City/State/National) Maintenance & Operating', 'OLI_EMPTYPE_PARKMAINT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (619, 561, 'Pastor', 'OLI_EMPTYPE_PASTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (620, 562, 'Pathologists', 'OLI_EMPTYPE_PATHOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (621, 563, 'Pattern/Model Makers (Metal, Wood, Paper, Wax)', 'OLI_EMPTYPE_PATTERNMAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (622, 564, 'Pawnbrokers', 'OLI_EMPTYPE_PAWNBROKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (623, 565, 'Paymasters', 'OLI_EMPTYPE_PAYMASTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (624, 566, 'Pediatricians', 'OLI_EMPTYPE_PEDIATRICIAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (625, 567, 'Pedodontists', 'OLI_EMPTYPE_PEDODONTIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (626, 568, 'Perfusionists', 'OLI_EMPTYPE_FERFUSIONIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (627, 569, 'Periodontists', 'OLI_EMPTYPE_PERIDONTIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (628, 570, 'Personnel Recruiter', 'OLI_EMPTYPE_RECRUITER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (629, 571, 'Pharmacist, Registered--Clinical,Hospital,Research', 'OLI_EMPTYPE_PHARMACISTHOSPITAL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (630, 572, 'Pharmacists, Registered - Drug Store', 'OLI_EMPTYPE_PHARMACISTDRUGSTORE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (631, 573, 'Photoengravers', 'OLI_EMPTYPE_PHOTOENGRAVER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (632, 574, 'Photographer/Cameramen, Newspaper/Newsreel/Motion Picture', 'OLI_EMPTYPE_PHOTOGRAPHER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (633, 575, 'Photographer/Cameramen, X-Ray Technicians', 'OLI_EMPTYPE_PHOTOGRAPHERXRAY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (634, 576, 'Photographers And Cameramen, Commercial (Studio)', 'OLI_EMPTYPE_PHOTOGRAPHERSTUDIO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (635, 577, 'Photostat Operators', 'OLI_EMPTYPE_PHOTOSTAT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (636, 578, 'Physiatrists', 'OLI_EMPTYPE_PHYSIATRIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (637, 580, 'Physician\'s Assistants', 'OLI_EMPTYPE_PHYSICIANASSIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (638, 579, 'Physician - Rehabilitation Medicine', 'OLI_EMPTYPE_PHYSICIANREHAB', '');
INSERT INTO `oli_lu_employmenttype` VALUES (639, 581, 'Physicists', 'OLI_EMPTYPE_PHYSICIAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (640, 582, 'Physiotherapists', 'OLI_EMPTYPE_PHYSIOTHERAPIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (641, 583, 'Piano Repairers Or Tuners', 'OLI_EMPTYPE_PIANOTUNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (642, 584, 'Pile Driver Operators', 'OLI_EMPTYPE_PIPEDRIVER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (643, 840, 'Pilot', 'OLI_EMPTYPE_PILOT', 'A person who is trained to fly airplanes, airships, or hot air balloons.');
INSERT INTO `oli_lu_employmenttype` VALUES (644, 585, 'Pipefitters--Non-Hazardous Industries', 'OLI_EMPTYPE_PIPEFITTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (645, 586, 'Plasterers', 'OLI_EMPTYPE_PLASTERER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (646, 587, 'Plastic Industry Article Manufacture, Skilled Worker', 'OLI_EMPTYPE_PLASTICSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (647, 588, 'Plastic Industry Articles Manuf, Unskilled Workers', 'OLI_EMPTYPE_PLASTICUNSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (648, 589, 'Plastic Industry Plastic Foremen: Nitrating Dept', 'OLI_EMPTYPE_PLASTICFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (649, 591, 'Plastic Industry Plastic Manufacture, Baker/ Coolerm', 'OLI_EMPTYPE_PLASTICBAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (650, 590, 'Plastic Industry Plastic Manufacture Foremen/Supervisory', 'OLI_EMPTYPE_PLASTICMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (651, 593, 'Plastics Industry Articles Manufacture, Foremen', 'OLI_EMPTYPE_PLASTICMFGFORART', '');
INSERT INTO `oli_lu_employmenttype` VALUES (652, 594, 'Plastics Industry Plastic Manufacture, Others', 'OLI_EMPTYPE_PLASTICMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (653, 592, 'Plastic Surgeons', 'OLI_EMPTYPE_PLASTICSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (654, 595, 'Plater (Electroplater/Galvanizer/Tinners)', 'OLI_EMPTYPE_PLATER', 'May also be classified as --> 287 OLI_EMPTYPE_ELECTRPLATER or 353 OLI_EMPTYPE_GALVANIZER');
INSERT INTO `oli_lu_employmenttype` VALUES (655, 596, 'Plumbers', 'OLI_EMPTYPE_PLUMBER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (656, 597, 'Podiatrists', 'OLI_EMPTYPE_PODIATRIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (657, 600, 'Police/Law Enforcement Officer, Armed', 'OLI_EMPTYPE_POLICEARMED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (658, 601, 'Police/Law Enforcement Officer, Unarmed', 'OLI_EMPTYPE_POLICEUNARMED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (659, 602, 'Police/Law Enforcement Officer, Wardens', 'OLI_EMPTYPE_POLICEWARDEN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (660, 598, 'Police/Law Enforcement Officer All Other Employees', 'OLI_EMPTYPE_POLICEOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (661, 599, 'Police/Law Enforcement Officer Probation/Truant Officer', 'OLI_EMPTYPE_POLICETRUANT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (662, 862, 'Political appointments', 'OLI_EMPTYPE_POLITICAL', 'Embassy personnel, foreign diplomats and governmental officials.');
INSERT INTO `oli_lu_employmenttype` VALUES (663, 603, 'Pottery (China/Earthenware/Glazed Brick), All Others', 'OLI_EMPTYPE_POTTERYOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (664, 604, 'Pottery (China/Earthenware/Glazed Brick), Decorating', 'OLI_EMPTYPE_POTTERYDECORATER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (665, 605, 'Pottery China/Earthenware/Glazed Brick,Foremen', 'OLI_EMPTYPE_POTTERYFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (666, 606, 'Pottery China/Earthenware/Glazed Brick,Inspectors', 'OLI_EMPTYPE_POTTERYINSPECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (667, 607, 'Poultry--Dealer, Dresser, Raiser Or Breeder', 'OLI_EMPTYPE_POULTRY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (668, 608, 'Power Shovel Operator/Firemen, Non-Hazardous, Usually', 'OLI_EMPTYPE_POWERSHOVEL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (669, 609, 'Practical Nurse, Hospitals, Asylums, Nd Sanitariums', 'OLI_EMPTYPE_PRACTICALNURSE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (670, 610, 'Priest', 'OLI_EMPTYPE_PRIEST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (671, 611, 'Primary Care MD\'S', 'OLI_EMPTYPE_PRIMARYCAREMD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (672, 612, 'Printing And Publishing, All Others', 'OLI_EMPTYPE_PRINTOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (673, 613, 'Printing And Publishing, Office Duties Only', 'OLI_EMPTYPE_PRINTOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (674, 910, 'Private Investigator', 'OLI_EMPTYPE_PRIVINVES', 'Person who assist individuals, businesses and attorneys by finding and analyzing information by connecting clues to uncover facts about legal, financial or personal matters.');
INSERT INTO `oli_lu_employmenttype` VALUES (675, 614, 'Proctologists', 'OLI_EMPTYPE_PROCTOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (676, 863, 'Professional athletes', 'OLI_EMPTYPE_PROATHLETES', 'Those whose primary avocation is that of a paid athlete.');
INSERT INTO `oli_lu_employmenttype` VALUES (677, 882, 'Professional Racer', 'OLI_EMPTYPE_PRORACER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (678, 615, 'Proofreaders', 'OLI_EMPTYPE_PROOFREADER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (679, 616, 'Prosthodontists', 'OLI_EMPTYPE_PROSTHODONTIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (680, 617, 'Psychiatrists', 'OLI_EMPTYPE_PSYCHIATRIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (681, 618, 'Psychologists', 'OLI_EMPTYPE_PSYCHOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (682, 619, 'Publicity Agent Or Managers', 'OLI_EMPTYPE_PUBLICITY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (683, 620, 'Pulmonologists', 'OLI_EMPTYPE_PULMONOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (684, 621, 'Purchasing Agent', 'OLI_EMPTYPE_PURCHASING', '');
INSERT INTO `oli_lu_employmenttype` VALUES (685, 841, 'Pyrotechnist', 'OLI_EMPTYPE_PYROTECHNIST', 'A person who is skilled in the art of creating and using fireworks');
INSERT INTO `oli_lu_employmenttype` VALUES (686, 622, 'Rabbi', 'OLI_EMPTYPE_RABBI', '');
INSERT INTO `oli_lu_employmenttype` VALUES (687, 623, 'Radio/Television Broadcast Control: Maintenance Engineer', 'OLI_EMPTYPE_RADIOMAINTENGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (688, 625, 'Radio/Television Broadcasting Control: Chief Engineer', 'OLI_EMPTYPE_RADIOCHIEFENGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (689, 626, 'Radio/Television Broadcasting Transmit: Supervisors', 'OLI_EMPTYPE_RADIOCONTROLSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (690, 624, 'Radio/Television Broadcast Transmit: Operator/Engineer', 'OLI_EMPTYPE_RADIOOPERENGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (691, 627, 'Radio/Television Industry Broadcasting Studio: Announcer', 'OLI_EMPTYPE_RADIOBROADCASTSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (692, 628, 'Radio/Television Industry Manufacture, Proprietors', 'OLI_EMPTYPE_RADIOMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (693, 629, 'Radio/Television Industry Sales/Repairing, All Other', 'OLI_EMPTYPE_RADIOREPAIROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (694, 630, 'Radio/Television Industry Sales/Repairing, Clerical', 'OLI_EMPTYPE_RADIOREPAIROFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (695, 631, 'Radio/Television Manufacturing, All Others', 'OLI_EMPTYPE_RADIOMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (696, 632, 'Radio/Television Manufacturing, Supervisor/Foremen', 'OLI_EMPTYPE_RADIOMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (697, 633, 'Radiologists', 'OLI_EMPTYPE_RADIOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (698, 634, 'Radium Ore Reduction & Refining, Chemist/Lab Workers', 'OLI_EMPTYPE_RADIUMLAB', '');
INSERT INTO `oli_lu_employmenttype` VALUES (699, 635, 'Radium Ore Reduction & Refining, Watch/Dial Painters', 'OLI_EMPTYPE_RADIUMPAINTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (700, 911, 'Railroad Conductor', 'OLI_EMPTYPE_CNDCTR', 'Coordinates all activities of freight or passenger trains.');
INSERT INTO `oli_lu_employmenttype` VALUES (701, 636, 'Railroads, Executives And Office Workers', 'OLI_EMPTYPE_RAILROADOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (702, 637, 'Real Estate Developer', 'OLI_EMPTYPE_REALESTATEDEV', '');
INSERT INTO `oli_lu_employmenttype` VALUES (703, 638, 'Real Estate Salesperson', 'OLI_EMPTYPE_REALESTATESALES', 'Unclassified Real Estate sales, may not be licensed');
INSERT INTO `oli_lu_employmenttype` VALUES (704, 639, 'Receiving Or Shipping Clerks, All Others', 'OLI_EMPTYPE_RECIEVINGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (705, 640, 'Receiving Or Shipping Clerks, Light Goods Only', 'OLI_EMPTYPE_RECEIVINGLIGHT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (706, 641, 'Refrigerator Manufacture, Charging/Purifying Refrigerants', 'OLI_EMPTYPE_REFRIGMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (707, 642, 'Registered Nurses, Doctor\'s Office Only', 'OLI_EMPTYPE_REGISTEREDNURSEOFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (708, 643, 'Registered Nurses, Hospitals, Asylums, & Sanitariums', 'OLI_EMPTYPE_REGISTEREDNURSEHOSPITAL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (709, 644, 'Registered Nurses, Private Duty', 'OLI_EMPTYPE_REGISTEREDNURSEPFT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (710, 645, 'Rendering Plant (Animal/Fish)--Chemist/Lab Assistant', 'OLI_EMPTYPE_RENDERINGCHEMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (711, 646, 'Rendering Plant (Animal/Fish)--Not Slaughter/Packing', 'OLI_EMPTYPE_RENDERINGNOTSLAUGHTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (712, 647, 'Rendering Plant (Animals/Fish)--All Others', 'OLI_EMPTYPE_RENDERINGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (713, 648, 'Reporters, Court Reporter', 'OLI_EMPTYPE_REPORTERCOURT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (714, 649, 'Reporters, Newspaper', 'OLI_EMPTYPE_REPORTERNEWS', 'May also be classified as --> 515 OLI_EMPTYPE_NEWSREPORTER');
INSERT INTO `oli_lu_employmenttype` VALUES (715, 912, 'Respitory Therapist', 'OLI_EMPTYPE_RESPTHER', 'Also known as Respitory Care Practitioner, person who evaluates, treats and cares for patients with breathing or other cadiopulmonary disorders.');
INSERT INTO `oli_lu_employmenttype` VALUES (716, 211, 'Restaurant 1st Class 2nd Liquor, Cook', 'OLI_EMPTYPE_COOK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (717, 658, 'Restaurant 1st Class 2nd Liquor,Head Chef, Supervising', 'OLI_EMPTYPE_RESTAURANTCHEF', '');
INSERT INTO `oli_lu_employmenttype` VALUES (718, 652, 'Restaurant 1st Class 2nd Liquor Proprietor/Tend Bar', 'OLI_EMPTYPE_RESTAURANTBAR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (719, 656, 'Restaurant 1st Class 2nd Liquor Sale, Head Waiter/Matre\'d', 'OLI_EMPTYPE_RESTAURANTHEAD', '');
INSERT INTO `oli_lu_employmenttype` VALUES (720, 657, 'Restaurant 1st Class 2nd Liquor Sale,Prop,Supervising', 'OLI_EMPTYPE_RESTAURANTSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (721, 653, 'Restaurant 1st Class 2nd Liquor Sale Proprietor/Man', 'OLI_EMPTYPE_RESTAURANTMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (722, 654, 'Restaurant 1st Class 2nd Liquor Sale Tending Bar', 'OLI_EMPTYPE_RESTAURANTBARTEND', '');
INSERT INTO `oli_lu_employmenttype` VALUES (723, 655, 'Restaurant 1st Class 2nd Liquor Sale Waiters/Kitchen', 'OLI_EMPTYPE_RESTAURANTWAITER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (724, 650, 'Restaurant Mainly Liquor,Proprietors, Not Bar Tending', 'OLI_EMPTYPE_RESTAURANTNOBAR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (725, 651, 'Restaurant Mostly Liquor Sales, All Others', 'OLI_EMPTYPE_RESTAURANTOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (726, 659, 'Retail Outlet--Store Clerks, Usually', 'OLI_EMPTYPE_RETAIL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (727, 660, 'Retinal Surgeons', 'OLI_EMPTYPE_RETINALSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (728, 661, 'Rheumatologist', 'OLI_EMPTYPE_RHEUMATOLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (729, 662, 'Riggers, All Others', 'OLI_EMPTYPE_RIGGEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (730, 663, 'Riggers, Motion Picture Studios, Sign Erectors', 'OLI_EMPTYPE_RIGGERMOVIE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (731, 664, 'Rock Wool, All Others', 'OLI_EMPTYPE_ROCKWOOLOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (732, 665, 'Rock Wool,Insulating Building, Manufacturing-Foremen', 'OLI_EMPTYPE_ROCKWOOLFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (733, 883, 'Rodeo Performer', 'OLI_EMPTYPE_RODEO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (734, 666, 'Roofing Material Manufacture Asphalt/Asbestos, Foremen', 'OLI_EMPTYPE_ROOFINGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (735, 667, 'Roofing Material Manufacture Asphalt/Asbestos, Other', 'OLI_EMPTYPE_ROOFINGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (736, 669, 'Rubber/Rubber Product Manufacture, All Others', 'OLI_EMPTYPE_RUBBERMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (737, 670, 'Rubber/Rubber Product Manufacture, Foremen', 'OLI_EMPTYPE_RUBBERMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (738, 668, 'Rubber Products Manufacture, Superintendent/Chemist', 'OLI_EMPTYPE_RUBBERSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (739, 671, 'Safe And Machinery Movers', 'OLI_EMPTYPE_SAFEMOVER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (740, 672, 'Safety Engineers-Non-Hazardous Industries', 'OLI_EMPTYPE_SAFTYENGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (741, 673, 'Salesmen, Office & Outside Soliciting, No Delivering', 'OLI_EMPTYPE_SALESNODEL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (742, 674, 'Salesmen--Full Time--Delivering By Light Truck/Van', 'OLI_EMPTYPE_SALESDEL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (743, 675, 'Salesmen--Full Time--Installing/Repairing/Servicing', 'OLI_EMPTYPE_SALESSERVICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (744, 676, 'Salesmen--Full Time-Soliciting/Delivery By Auto Only', 'OLI_EMPTYPE_SALESDELAUTO', '');
INSERT INTO `oli_lu_employmenttype` VALUES (745, 677, 'Sandblaster, Building Cleaner/Glass/Pottery/Stone', 'OLI_EMPTYPE_SANDBLASTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (746, 678, 'School, Principal/Superintendents/Administrative Office', 'OLI_EMPTYPE_SCHOOL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (747, 679, 'Seamstresses And Dressmakers, In Shop', 'OLI_EMPTYPE_SEAMSTRESS', '');
INSERT INTO `oli_lu_employmenttype` VALUES (748, 680, 'Sewer/Sewage Disposal/Cesspool Worker Inspector, Forman', 'OLI_EMPTYPE_SEWERINSP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (749, 681, 'Sewer/Sewage Disposal/Cesspool Workers, Others', 'OLI_EMPTYPE_SEWEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (750, 682, 'Sewing Machine Operators And Repairmen', 'OLI_EMPTYPE_SEWING', '');
INSERT INTO `oli_lu_employmenttype` VALUES (751, 683, 'Sextons', 'OLI_EMPTYPE_SECTON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (752, 684, 'Sheet Metal Workers, Tinsmiths, Others', 'OLI_EMPTYPE_SHEETMETALOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (753, 685, 'Sheet Metal Workers, Tinsmiths, Shop Work Only', 'OLI_EMPTYPE_SHEETMETALSHOP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (754, 884, 'Ship Hull Worker', 'OLI_EMPTYPE_SHIPHULLWKR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (755, 687, 'Shoe Manufacture/Repair Factory, Unskilled Employees', 'OLI_EMPTYPE_SHOEMFGUNSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (756, 686, 'Shoe Manufacture/Repair Factory Worker, All Skilled', 'OLI_EMPTYPE_SHOEMFGSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (757, 688, 'Shoe Manufacture/Repair Non-Factory, Shoemaker/Repair', 'OLI_EMPTYPE_SHOEMFGREPAIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (758, 689, 'Shovel Operator (Power)/Firemen, Non-Hazardous', 'OLI_EMPTYPE_SHOVELOPRFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (759, 690, 'Sign/Billboard Erector/Builder, Bench Work Only', 'OLI_EMPTYPE_SIGNBENCH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (760, 691, 'Sign/Billboard Erectors Or Builders, All Others', 'OLI_EMPTYPE_SIGNERECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (761, 692, 'Silver Polishers', 'OLI_EMPTYPE_SILVERPOLISHER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (762, 693, 'Silversmiths', 'OLI_EMPTYPE_SILVERSMITH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (763, 694, 'Slot Machine (Legal), Collector/Distributor/Repairer', 'OLI_EMPTYPE_SLOTMACHREPAIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (764, 696, 'Soap/Detergent Manufacture, Workmen,Abrasive Grinding', 'OLI_EMPTYPE_SOAPMFGWORKMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (765, 695, 'Soap And Detergent Manufacture, All Others', 'OLI_EMPTYPE_SOAPMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (766, 697, 'Social Workers, All Others', 'OLI_EMPTYPE_SOCIALWORKEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (767, 698, 'Social Workers, Office Duties Only', 'OLI_EMPTYPE_SOCIALWORKEROFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (768, 700, 'Solderers, Non-Hazardous Industries, Usually', 'OLI_EMPTYPE_SOLDERER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (769, 699, 'Solder Makers', 'OLI_EMPTYPE_SOLDERMAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (770, 701, 'Speech Therapists', 'OLI_EMPTYPE_SPEECHTHERAPIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (771, 702, 'Spice Grinders And Packers', 'OLI_EMPTYPE_SPICEGRINDER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (772, 703, 'Sports (Pro)Owner/Manager/Coach/Scout (Non-Part)', 'OLI_EMPTYPE_SPORTSOWNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (773, 704, 'Sports Athletic Instructor/Director, School/College', 'OLI_EMPTYPE_SPORTSATHDIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (774, 705, 'Sports Beach/Pool/Billiard/Bowling Alley, Attendants', 'OLI_EMPTYPE_SPORTSATTNEDANT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (775, 706, 'Sports Beach/Pool/Billiard/Bowling Proprietor/Manager', 'OLI_EMPTYPE_SPORTSMANAGER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (776, 707, 'Sports Dance Hall/Skating, Proprietor/Manager, Fulltime', 'OLI_EMPTYPE_SPORTSSKATING', '');
INSERT INTO `oli_lu_employmenttype` VALUES (777, 708, 'Sports Racing Automobile: Mechanics, No Driving', 'OLI_EMPTYPE_SPORTSAUTONODRIVE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (778, 710, 'Sports Racing Horse/Dog: Starter/Judge/Steward/Office', 'OLI_EMPTYPE_SPORTSSTARTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (779, 709, 'Sports Racing Horse And Dog: Parimutuel Clerks', 'OLI_EMPTYPE_SPORTSCLERK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (780, 711, 'Sports Riding School, Proprietor/Manager (Supervision)', 'OLI_EMPTYPE_SPORTSRIDINGMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (781, 712, 'Sports Riding Schools, Instructors', 'OLI_EMPTYPE_SPORTSRIDINGINST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (782, 885, 'Stable Hand', 'OLI_EMPTYPE_STABLEHAND', '');
INSERT INTO `oli_lu_employmenttype` VALUES (783, 713, 'Starters, Taxicab, Elevator', 'OLI_EMPTYPE_STARTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (784, 714, 'Stationary Engineer/Firemen, Non-Hazardous Industry', 'OLI_EMPTYPE_STATIONARYENGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (785, 715, 'Statistician', 'OLI_EMPTYPE_STATISTICIAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (786, 716, 'Steamfitter--Non-hazardous Industries, Usually', 'OLI_EMPTYPE_STEAMFITTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (787, 886, 'Steeplejack', 'OLI_EMPTYPE_STEEPLEJACK', 'One whose work is building smokestacks, towers, or steeples or climbing up the outside of such structures to paint and make repairs.');
INSERT INTO `oli_lu_employmenttype` VALUES (788, 717, 'Stenographers', 'OLI_EMPTYPE_STENOGRAPHER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (789, 718, 'Stock And Bond Brokers Or Salespeople', 'OLI_EMPTYPE_STOCKSALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (790, 719, 'Stock Clerk/Keeper/Chaser, Light Goods Only', 'OLI_EMPTYPE_STOCKCLERK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (791, 720, 'Stock Clerks, Keepers Or Chasers, All Others', 'OLI_EMPTYPE_STOCKCLERKOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (792, 722, 'Stockyard/Slaughter/Packing House, Commission Men', 'OLI_EMPTYPE_STOCKYARDCOMMISSIONMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (793, 721, 'Stockyard/Slaughter/Packing House Superintendent', 'OLI_EMPTYPE_STOCKYARDSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (794, 723, 'Stone Industry Other Stone, All Others', 'OLI_EMPTYPE_STONEOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (795, 724, 'Stone Industry Other Stone, Foremen', 'OLI_EMPTYPE_STONEFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (796, 725, 'Street Cleaning, All Others Including Drivers', 'OLI_EMPTYPE_STREETCLEANER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (797, 726, 'Street Cleaning, Foremen (Inspectors)', 'OLI_EMPTYPE_STREETCLEANFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (798, 865, 'Student', 'OLI_EMPTYPE_STUDENT', 'One who is enrolled or attends classes at a school, college, or university on a full time basis');
INSERT INTO `oli_lu_employmenttype` VALUES (799, 852, 'Stunt men', 'OLI_EMPTYPE_STUNTMAN', 'Acting performers who may be involved in high-speed driving, leaps and dives and fire/explosive exposure.');
INSERT INTO `oli_lu_employmenttype` VALUES (800, 887, 'Subway Worker', 'OLI_EMPTYPE_SUBWAYWKR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (801, 730, 'Sugar Refinery (Starch/Corn), Kiln Cleaner/ Unskilled', 'OLI_EMPTYPE_SUGARUNSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (802, 728, 'Sugar Refinery (Starch/Corn Product), Superintendent', 'OLI_EMPTYPE_SUGARSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (803, 729, 'Sugar Refinery (Starch/Corn Products), All Others', 'OLI_EMPTYPE_SUGAROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (804, 727, 'Sugar Refinery (Starch And Corn Products), Foremen', 'OLI_EMPTYPE_SUGARFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (805, 731, 'Surveyors, Non-hazardous Industries, Usually', 'OLI_EMPTYPE_SURVEYOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (806, 732, 'Tailor (Working Away From Home), Not Pressing/Cleaning', 'OLI_EMPTYPE_TAILOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (807, 733, 'Tailors (Working Away From Home), General Duties', 'OLI_EMPTYPE_TAILORGEN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (808, 734, 'Talc Industry Mills, All Other Workers', 'OLI_EMPTYPE_TALCOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (809, 735, 'Talc Industry Mills, Foremen, Skilled Workers', 'OLI_EMPTYPE_TALCSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (810, 736, 'Taxicab Drivers', 'OLI_EMPTYPE_TAXICABDRIVER', 'May also be classified as --> 249 OLI_EMPTYPE_DRIVERTAXI');
INSERT INTO `oli_lu_employmenttype` VALUES (811, 737, 'Taxidermists', 'OLI_EMPTYPE_TAXIDERMIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (812, 740, 'Teacher,School/College (F/T)-Agri/Animal Husbandry', 'OLI_EMPTYPE_TEACHERANIMAL', '');
INSERT INTO `oli_lu_employmenttype` VALUES (813, 738, 'Teacher, School/College (Fulltime Employment)', 'OLI_EMPTYPE_TEACHER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (814, 739, 'Teacher, School/College (Part-time Employment)', 'OLI_EMPTYPE_TEACHERPARTTIMER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (815, 742, 'Telegraph/Telephone Inside Worker/Inspector/Installer', 'OLI_EMPTYPE_TELEPHONEINSTALLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (816, 743, 'Telegraph/Telephone Inside Worker/Operator/Exchange', 'OLI_EMPTYPE_TELEPHONEOPERATOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (817, 744, 'Telegraph/Telephone Inside Worker/Repairmen', 'OLI_EMPTYPE_TELEPHONEREPAIRMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (818, 745, 'Telegraph/Telephone Outside Line Construct/Maintenance', 'OLI_EMPTYPE_TELEPHONEMAINT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (819, 746, 'Telegraph/Telephone Outside Lines Constr, Maintenance', 'OLI_EMPTYPE_TELEPHONEMAINT2', '');
INSERT INTO `oli_lu_employmenttype` VALUES (820, 741, 'Telegraph And Telephone Inside Workers, All Others', 'OLI_EMPTYPE_TELEPHONEOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (821, 913, 'Telemarketer', 'OLI_EMPTYPE_TELEMKT', 'Person who solicits orders for goods and services over the telephone.');
INSERT INTO `oli_lu_employmenttype` VALUES (822, 747, 'Tent Makers', 'OLI_EMPTYPE_TENTMAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (823, 748, 'Textile Industry, Inspectors, Graders, Sorters', 'OLI_EMPTYPE_TEXTILESKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (824, 749, 'Textile Industry, Other Skilled Workers', 'OLI_EMPTYPE_TEXTILEOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (825, 750, 'Textile Industry, Superintendents And Foreman', 'OLI_EMPTYPE_TEXTILESUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (826, 751, 'Therapists--Occupational', 'OLI_EMPTYPE_THERAPISTOCCUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (827, 752, 'Thoracic Surgeons', 'OLI_EMPTYPE_THORASICSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (828, 753, 'Ticket Agents (Office Duties Only)', 'OLI_EMPTYPE_TICKETAGENT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (829, 754, 'Tile Layers/Setters, Pipers Or Drains Or Roofers', 'OLI_EMPTYPE_TILELAYER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (830, 755, 'Timekeepers', 'OLI_EMPTYPE_TIMEKEEPER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (831, 756, 'Tinners And Galvanizers (Not Roofers)', 'OLI_EMPTYPE_TINNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (832, 757, 'Tinsmiths, Others', 'OLI_EMPTYPE_TINSMITHOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (833, 758, 'Tinsmiths, Shop Work Only', 'OLI_EMPTYPE_TINSMITHSHOP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (834, 759, 'Tobacco Manufacture, Auctioneer/Buyer/Inspectors', 'OLI_EMPTYPE_TOBACCOBUYER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (835, 760, 'Tobacco Manufacture, Other Skilled Workers', 'OLI_EMPTYPE_TOBACCOOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (836, 761, 'Toll Collectors', 'OLI_EMPTYPE_TOLLCOLLECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (837, 762, 'Topographers', 'OLI_EMPTYPE_TOPOGRAPHER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (838, 763, 'Tour Directors Or Conductors', 'OLI_EMPTYPE_TOURDIRECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (839, 888, 'Tower Erector', 'OLI_EMPTYPE_TOWERERECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (840, 764, 'Traffic Managers (Office Duties Only)', 'OLI_EMPTYPE_TRAFFICMGR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (841, 765, 'Travel Agency, Agents', 'OLI_EMPTYPE_TRAVELAGENT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (842, 766, 'Travel Agency, Proprietors', 'OLI_EMPTYPE_TRAVELAGENTOWNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (843, 767, 'Tree Workers, Fumigators And Sprayers', 'OLI_EMPTYPE_TREEWORKERSPRAY', '');
INSERT INTO `oli_lu_employmenttype` VALUES (844, 768, 'Tree Workers, Surgeons And Trimmers', 'OLI_EMPTYPE_TREEWORKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (845, 889, 'Trotting Horse Driver', 'OLI_EMPTYPE_TROTTINGDRV', '');
INSERT INTO `oli_lu_employmenttype` VALUES (846, 890, 'Tunnel Worker', 'OLI_EMPTYPE_TUNNELWKR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (847, 769, 'Turpentine Industry, All Others', 'OLI_EMPTYPE_TURPENTINEOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (848, 770, 'Turpentine Industry, Superintendents', 'OLI_EMPTYPE_TURPENTINESUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (849, 771, 'Typists', 'OLI_EMPTYPE_TYPIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (850, 772, 'Umbrella Makers Or Repairers', 'OLI_EMPTYPE_UMBRELLAMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (851, 914, 'Umpire', 'OLI_EMPTYPE_UMPIRE', 'Person who officiates at competitive or sporting events by observing the play and impose penalties for infractions as established by the rules and regulations of various sports.');
INSERT INTO `oli_lu_employmenttype` VALUES (852, 774, 'Undertakers, Others', 'OLI_EMPTYPE_UNDERTAKEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (853, 775, 'Undertakers, Proprietors (Not Embalming)', 'OLI_EMPTYPE_UNDERTAKEROWNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (854, 776, 'Unemployed, Retired', 'OLI_EMPTYPE_RETIRED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (855, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (856, 777, 'Upholsterers', 'OLI_EMPTYPE_UPHOLSTERER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (857, 778, 'Urological Surgeons', 'OLI_EMPTYPE_UROLOGISTSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (858, 779, 'Urologists', 'OLI_EMPTYPE_UROLOGIST', '');
INSERT INTO `oli_lu_employmenttype` VALUES (859, 780, 'Vacuum Cleaner Dealer/Salesmen, No Repairing, Delivery', 'OLI_EMPTYPE_VACUUMSALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (860, 781, 'Vacuum Cleaner Dealers And Salesmen, Repairing', 'OLI_EMPTYPE_VACUUMREPAIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (861, 782, 'Vascular Surgeons', 'OLI_EMPTYPE_VASCULARSURGEON', '');
INSERT INTO `oli_lu_employmenttype` VALUES (862, 783, 'Vending Machine (Legal) Collector/Filler/ Installers', 'OLI_EMPTYPE_VENDINGMACHINE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (863, 784, 'Venetian Blinds--Installer', 'OLI_EMPTYPE_VENETIANBLINDINSTALLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (864, 785, 'Venetian Blinds--Makers Or Repairers', 'OLI_EMPTYPE_VENETIANBLINDNFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (865, 786, 'Veterinarian (DVM)--Large Animals', 'OLI_EMPTYPE_VETERINANRIANLARGE', 'May also be classified as --> 441 OLI_EMPTYPE_KENNELVETLARGE');
INSERT INTO `oli_lu_employmenttype` VALUES (866, 787, 'Veterinarians (DVM)--Small Animals', 'OLI_EMPTYPE_VETERINANRIANSMALL', 'May also be classified as --> 442 OLI_EMPTYPE_KENNELVETPET');
INSERT INTO `oli_lu_employmenttype` VALUES (867, 788, 'Vinegar Makers', 'OLI_EMPTYPE_VINEGARMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (868, 789, 'Violin Makers Or Repairers', 'OLI_EMPTYPE_VIOLINMFG', '');
INSERT INTO `oli_lu_employmenttype` VALUES (869, 790, 'Wall Paper, Designers', 'OLI_EMPTYPE_WALLPAPERDESIGNER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (870, 791, 'Wall Paper, Hangers Or Printers', 'OLI_EMPTYPE_WALLPAPERHANGER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (871, 792, 'Wall Paper, Makers', 'OLI_EMPTYPE_WALLPAPERMAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (872, 793, 'Warehousemen, All Other Warehouse Employees', 'OLI_EMPTYPE_WAREHOUSEMANOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (873, 794, 'Warehousemen, Checker/Crater/Foremen Or Packers', 'OLI_EMPTYPE_WAREHOUSEMANFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (874, 795, 'Warehousemen, Checkers, Not Handling Goods', 'OLI_EMPTYPE_WAREHOUSEMANCHECKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (875, 796, 'Washing Machine, Dealer/Salesmen, Not Delivery/Repair', 'OLI_EMPTYPE_WASHINGMACHINESALES', '');
INSERT INTO `oli_lu_employmenttype` VALUES (876, 797, 'Washing Machine, Delivering Or Repairing', 'OLI_EMPTYPE_WASHINGTMACHINEREPAIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (877, 798, 'Watch/Watch Cases, Maker/Repairer, Hand Tools Only', 'OLI_EMPTYPE_WATCHREPAIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (878, 800, 'Watches/Watch Case, Maker/Repairer, Using Other Tool', 'OLI_EMPTYPE_WATCHCASEREPAIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (879, 799, 'Watches Or Watch Cases, Testers, In Factory', 'OLI_EMPTYPE_WATCHTESTER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (880, 801, 'Watchmen', 'OLI_EMPTYPE_WATCHMAN', '');
INSERT INTO `oli_lu_employmenttype` VALUES (881, 802, 'Water Meters, Installers, Repairers, Or Testers', 'OLI_EMPTYPE_WATERMETERINSTALLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (882, 803, 'Water Meters, Readers Or Inspectors', 'OLI_EMPTYPE_WATERMETERREADER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (883, 804, 'Water Works, All Others Employees', 'OLI_EMPTYPE_WATERWORKSOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (884, 805, 'Water Works, Filtermen Or Pumpmen', 'OLI_EMPTYPE_WATERWORKSFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (885, 806, 'Water Works, Superintendent (Superintending Only)', 'OLI_EMPTYPE_WATERWORKSSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (886, 851, 'Weaponry, Chemical and biological', 'OLI_EMPTYPE_WEAPONS', 'Engaged in research, development, testing, storage, disposal or transportation of various toxic agents.');
INSERT INTO `oli_lu_employmenttype` VALUES (887, 807, 'Weather Observers', 'OLI_EMPTYPE_WEATHEROBSERVER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (888, 808, 'Weighers, Not Otherwise Classified', 'OLI_EMPTYPE_WEIGHERUNCLASSIFIED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (889, 809, 'Weighers, Office Duties Only', 'OLI_EMPTYPE_WEIGHEROFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (890, 810, 'Welders And Cutters (No Unusual Hazard)', 'OLI_EMPTYPE_WELDER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (891, 811, 'Welfare Workers, All Others', 'OLI_EMPTYPE_WELFAREWORKEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (892, 812, 'Welfare Workers, Office Duties Only', 'OLI_EMPTYPE_WELFAREWORKEROFFICE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (893, 813, 'Well (Not Gas/Oil/Salt), Borer/Diggers, No Explosive', 'OLI_EMPTYPE_WELLDIGGER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (894, 814, 'Wheelwrights, Not Using Machinery', 'OLI_EMPTYPE_WHEELWRIGHTNOMACHINE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (895, 815, 'Wheelwrights, Using Machinery', 'OLI_EMPTYPE_WHEELWRIGHTMACHINE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (896, 816, 'White Lead Manufacture, All Others', 'OLI_EMPTYPE_WHITELEADMFGOTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (897, 817, 'White Lead Manufacture, Foremen', 'OLI_EMPTYPE_WHITELEADMFGFOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (898, 818, 'White Lead Manufacture, Superintendent/Chemist', 'OLI_EMPTYPE_WHITELEADMFGSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (899, 819, 'Wig Makers', 'OLI_EMPTYPE_WIGMAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (900, 820, 'Window Industry, Cleaner Inside/Ground Floor Only', 'OLI_EMPTYPE_WINDOWCLEANER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (901, 821, 'Window Industry, Dresser/Trimmer, Shade Maker/Hanger', 'OLI_EMPTYPE_WINDOWDRESSER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (902, 822, 'Window Industry, Screen Makers Or Installers', 'OLI_EMPTYPE_WINDOWINSTALLER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (903, 823, 'Wire Fence Erectors', 'OLI_EMPTYPE_WIREFENCEERECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (904, 827, 'Wireless/Radio Operator, Lighthouse--Mainland Only', 'OLI_EMPTYPE_WIRELESSLIGHTHOUSE', '');
INSERT INTO `oli_lu_employmenttype` VALUES (905, 826, 'Wireless And Radio Operators, Shore Stations', 'OLI_EMPTYPE_WIRELESSOPERATOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (906, 824, 'Wire Mill Worker, Annealer/Drawer/Oiler/Laborers', 'OLI_EMPTYPE_WIREWORKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (907, 825, 'Wire Mill Workers, All Other Mill Employees', 'OLI_EMPTYPE_WIREWORKEROTH', '');
INSERT INTO `oli_lu_employmenttype` VALUES (908, 828, 'X-Ray, Operators, Salesmen, Technicians', 'OLI_EMPTYPE_XRAYOPERATOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (909, 829, 'X-Ray, Repairmen, Servicemen, Testers', 'OLI_EMPTYPE_XRAYREPAIR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (910, 830, 'Yarn Makers', 'OLI_EMPTYPE_YARNMAKER', '');
INSERT INTO `oli_lu_employmenttype` VALUES (911, 831, 'Yeast Maker, Superintendent/Foremen (Supervising Only)', 'OLI_EMPTYPE_YEASTMAKERSUP', '');
INSERT INTO `oli_lu_employmenttype` VALUES (912, 832, 'Yeast Makers, Process Workers', 'OLI_EMPTYPE_YEASTMAKERWRK', '');
INSERT INTO `oli_lu_employmenttype` VALUES (913, 833, 'Yeast Makers, Unskilled Workers', 'OLI_EMPTYPE_YEASTMAKERUNSKILLED', '');
INSERT INTO `oli_lu_employmenttype` VALUES (914, 834, 'YMCA/Similar Organizations, Officers, Directors', 'OLI_EMPTYPE_YMCEMGT', '');
INSERT INTO `oli_lu_employmenttype` VALUES (915, 835, 'YMCA/Similar Organizations, Physical Directors', 'OLI_EMPTYPE_YMCADIRECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (916, 836, 'Zoos, Zoo Director (No Contact With Animals)', 'OLI_EMPTYPE_ZOODIRECTOR', '');
INSERT INTO `oli_lu_employmenttype` VALUES (917, 837, 'Zoos, Zoo Keeper', 'OLI_EMPTYPE_ZOOKEEPER', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_gender
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_gender`;
CREATE TABLE `oli_lu_gender` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_gender_value_unique` (`value`),
  UNIQUE KEY `oli_lu_gender_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_gender
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_gender` VALUES (1, 2, 'Female', 'OLI_GENDER_FEMALE', 'A person with a specific set of physical anatomy (e.g. XX phenotype, vagina, ovaries, uterus, breasts, higher levels of estrogen, fine body hair) pursuant to this label.');
INSERT INTO `oli_lu_gender` VALUES (2, 6, 'Female to Male Transgender', 'OLI_GENDER_FTMTRANS', 'A person who has undergone medical treatments to change their biological sex from Female To Male, often times to align it with their gender identity.Also referred to as FTM. After he has completed his transition, he may identify simply as male.');
INSERT INTO `oli_lu_gender` VALUES (3, 5, 'Intersex', 'OLI_GENDER_INTERSEX', 'A person with a set of sexual anatomy that doesn\'t fit within the definition of female or male.');
INSERT INTO `oli_lu_gender` VALUES (4, 4, 'Issued on a combined rate blended from male and female', 'OLI_GENDER_COMBINED', '');
INSERT INTO `oli_lu_gender` VALUES (5, 1, 'Male', 'OLI_GENDER_MALE', 'A person with a specific set of anatomy (e.g. XY phenotype, penis, testis, higher levels of testosterone, coarse body hair, facial hair) pursuant to this label.');
INSERT INTO `oli_lu_gender` VALUES (6, 7, 'Male to Female Transgender', 'OLI_GENDER_MTFTRANS', 'A person who has undergone medical treatments to change their biological sex from Male To Female, often times to align it with their gender identity.Also referred to as MTF. After she has completed her transition, she may identify simply as female.');
INSERT INTO `oli_lu_gender` VALUES (7, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_gender` VALUES (8, 3, 'Unisex', 'OLI_GENDER_UNISEX', '');
INSERT INTO `oli_lu_gender` VALUES (9, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_govtidtc
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_govtidtc`;
CREATE TABLE `oli_lu_govtidtc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_govtidtc_value_unique` (`value`),
  UNIQUE KEY `oli_lu_govtidtc_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_govtidtc
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_govtidtc` VALUES (1, 5, 'ACN number Australia', 'OLI_GOVTID_ACN', '');
INSERT INTO `oli_lu_govtidtc` VALUES (2, 30, 'Age of Majority Card', 'OLI_GOVTID_AGEOFMAJ', 'Proof-of-age identification for purchasing alcoholic beverages.');
INSERT INTO `oli_lu_govtidtc` VALUES (3, 6, 'ARBN number Australia', 'OLI_GOVTID_ARBN', '');
INSERT INTO `oli_lu_govtidtc` VALUES (4, 31, 'Armed Forces ID', 'OLI_GOVTID_ARMEDFORID', '');
INSERT INTO `oli_lu_govtidtc` VALUES (5, 28, 'Birth Certificate', 'OLI_GOVTID_BIRTHCERT', '');
INSERT INTO `oli_lu_govtidtc` VALUES (6, 11, 'Canadian Business Number', 'OLI_GOVTID_CANBN', 'This is the business number assigned to an corporation by the Canadian Government');
INSERT INTO `oli_lu_govtidtc` VALUES (7, 13, 'Canadian Employer Identification Number', 'OLI_GOVTID_CANEIN', 'The Employer ID Number assigned to an corporation by the Canadian Government');
INSERT INTO `oli_lu_govtidtc` VALUES (8, 12, 'Canadian Quebec Enterprise Number', 'OLI_GOVTID_CANNEQ', 'This is the enterprise number assigned to an corporation by the Canadian Quebec Government');
INSERT INTO `oli_lu_govtidtc` VALUES (9, 37, 'Certificate of Indian Status', 'OLI_GOVTID_INDSTAT', 'First issued in 1956, the Certificate of Indian Status, more commonly referred to as a Status card, is an identity document issued for administrative reasons by Aboriginal Affairs and Northern Development Canada (AANDC) to confirm that the cardholder is registered as a Status Indian under the Indian Act.');
INSERT INTO `oli_lu_govtidtc` VALUES (10, 21, 'Chinese Military ID', 'OLI_GOVTID_CHINAMIL', 'China began a residential identity card system in 1985 which ruled that servicemen and armed police had separate military or armed police cards instead of civilian identity cards. A Law on Resident Identity Cards which came into effect in 2004 for the first time enlarged the card issuance scope to servicemen and armed police. OLI_GOVTID_CHINAMIL represents this card.');
INSERT INTO `oli_lu_govtidtc` VALUES (11, 29, 'Driver\'s License', 'OLI_GOVTID_DRIVLIC', '');
INSERT INTO `oli_lu_govtidtc` VALUES (12, 10, 'Generic Foreign ID', 'OLI_GOVTID_CITIZENSHIPID', 'A generic ID from a foreign country. The country may or may not be known.');
INSERT INTO `oli_lu_govtidtc` VALUES (13, 26, 'GIIN', 'OLI_GOVTID_GIIN', 'Global Intermediary Identification Number');
INSERT INTO `oli_lu_govtidtc` VALUES (14, 18, 'Green Card (US)', 'OLI_GOVTID_GREENCARD', 'Indicates the GovtID is a US issued \"Green Card\" (INS Alien Registration Receipt Card) Number or Identifier which is issued as proof of permanent residency for a non-US citizen living in the US.');
INSERT INTO `oli_lu_govtidtc` VALUES (15, 27, 'Health/Medical Card', 'OLI_GOVTID_HEALTHCARD', '');
INSERT INTO `oli_lu_govtidtc` VALUES (16, 25, 'Identification Number', 'OLI_GOVTID_IDNUM', 'Identification Number used to uniquely identify a person in a country.');
INSERT INTO `oli_lu_govtidtc` VALUES (17, 20, 'Medicaid Number', 'OLI_GOVTID_MEDICAIDNUM', 'The number entered is a Medicaid Number in the United States.');
INSERT INTO `oli_lu_govtidtc` VALUES (18, 38, 'Medicare Beneficiary Identifier (MBI)', 'OLI_GOVTID_MBI', 'The Medicare Beneficiary Identifier (MBI) replaces the Social Security number (SSN) on Medicare cards for Medicare transactions such as billing, eligibility status, and claim status.');
INSERT INTO `oli_lu_govtidtc` VALUES (19, 19, 'Medicare Number', 'OLI_GOVTID_MEDICARENUM', 'The number entered is a Medicare Number in the United States.');
INSERT INTO `oli_lu_govtidtc` VALUES (20, 22, 'National Provider Identifier (NPI)', 'OLI_GOVTID_NPI', 'A National Provider Identifier or NPI is a unique 10-digit identification number issued to health care providers in the United States by the Centers for Medicare and Medicaid Services');
INSERT INTO `oli_lu_govtidtc` VALUES (21, 36, 'Old Age Security Identification', 'OLI_GOVTID_OLDAGEID', 'The Old Age Security (OAS) Identification Card used to be sent out to seniors, who reached age 65 and have lived in Canada for at least 10 years. While no longer issued, it is still valid if previously obtained; and it may be previously captured/stored as part of client\'s historical record on inforce policies.');
INSERT INTO `oli_lu_govtidtc` VALUES (22, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_govtidtc` VALUES (23, 17, 'Passport Number', 'OLI_GOVTID_PASSPORTID', 'Indicates the GovtID is a Passport Number or Identifier.');
INSERT INTO `oli_lu_govtidtc` VALUES (24, 32, 'Permanent Resident Card', 'OLI_GOVTID_PERMRESCARD', '');
INSERT INTO `oli_lu_govtidtc` VALUES (25, 34, 'Photo ID Card', 'OLI_GOVTID_PHOTOID', 'Photo ID Card issued by a provincial, state, or territorial government.');
INSERT INTO `oli_lu_govtidtc` VALUES (26, 35, 'Proof of Citizenship or Naturalization', 'OLI_GOVTID_CITIZEN', '');
INSERT INTO `oli_lu_govtidtc` VALUES (27, 23, 'Railroad Retiree Medicare Number', 'OLI_GOVTID_RRMEDICARENBR', 'The number, generally the employee\'s Social Security Number with a prefix which describes familial relationship, used by the Railroad Retirement Board to identify an individual who has retired from a Railroad and who is now receiving Medicare benefits.');
INSERT INTO `oli_lu_govtidtc` VALUES (28, 24, 'Railroad Retiree Number', 'OLI_GOVTID_RAILROADRETIREENBR', 'The number, generally the employee\'s Social Security Number, used by the Railroad Retirement Board to identify an individual who is or has worked for a Railroad.');
INSERT INTO `oli_lu_govtidtc` VALUES (29, 33, 'Record of Landing', 'OLI_GOVTID_RECORDOFLAND', 'Provided at time of entry representing legal entry into the country.');
INSERT INTO `oli_lu_govtidtc` VALUES (30, 7, 'SIS number Australia', 'OLI_GOVTID_SIS', '');
INSERT INTO `oli_lu_govtidtc` VALUES (31, 3, 'Social Insurance Number in Canada', 'OLI_GOVTID_SIN', '');
INSERT INTO `oli_lu_govtidtc` VALUES (32, 1, 'Social Security Number US', 'OLI_GOVTID_SSN', '');
INSERT INTO `oli_lu_govtidtc` VALUES (33, 9, 'Tax ID for US non-resident alien', 'OLI_GOVTID_USNONRESTID', '');
INSERT INTO `oli_lu_govtidtc` VALUES (34, 2, 'Taxpayer Identification Number', 'OLI_GOVTID_TID', 'Taxpayer Identification Number (TIN) is a generic term that can be used to describe any form of tax id (e. g. Social Security Number for people, US Employer Identification Number for organizations).');
INSERT INTO `oli_lu_govtidtc` VALUES (35, 4, 'Tax Reference Number South Africa', 'OLI_GOVTID_TRN', '');
INSERT INTO `oli_lu_govtidtc` VALUES (36, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_govtidtc` VALUES (37, 8, 'US Employer Identification Number', 'OLI_GOVTID_USEMPID', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_holdpurpose
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_holdpurpose`;
CREATE TABLE `oli_lu_holdpurpose` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_holdpurpose_value_unique` (`value`),
  UNIQUE KEY `oli_lu_holdpurpose_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_holdpurpose
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_holdpurpose` VALUES (1, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (2, 1, 'None', 'OLI_HOLDPURP_NONE', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (3, 2, 'Retirement', 'OLI_HOLDPURP_RETIREMENT', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (4, 3, 'Business', 'OLI_HOLDPURP_BUSINESS', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (5, 4, 'Personal', 'OLI_HOLDPURP_PERSONAL', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (6, 5, 'Education', 'OLI_HOLDPURP_EDUCATION', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (7, 6, 'Executive Benefit', 'OLI_HOLDPURP_EXECBENEFIT', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (8, 7, 'Investment', 'OLI_HOLDPURP_INV', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (9, 8, 'Estate Liquidity', 'OLI_HOLDPURP_ESTLIQUID', 'Estate Conservation');
INSERT INTO `oli_lu_holdpurpose` VALUES (10, 9, 'Charitable Remainder Trust', 'OLI_HOLDPURP_CHARREMTRUST', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (11, 10, 'Group Carve Out', 'OLI_HOLDPURP_GRPCARVEOUT', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (12, 11, 'Split Dollar', 'OLI_HOLDPURP_SPLITDOLLAR', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (13, 12, 'Deferred Compensation', 'OLI_HOLDPURP_DEFCOMP', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (14, 13, 'Simplified Employee Retirement Plan', 'OLI_HOLDPURP_EMPRETPLAN', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (15, 14, 'Key man', 'OLI_HOLDPURP_KEYMAN', 'Key Employee');
INSERT INTO `oli_lu_holdpurpose` VALUES (16, 15, 'Buy/Sell', 'OLI_HOLDPURP_BUYSELL', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (17, 16, 'Executive Bonus', 'OLI_HOLDPURP_EXECBONUS', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (18, 17, 'Corporate Owned Life Insurance', 'OLI_HOLDPURP_COLI', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (19, 18, 'Bank Owned Life Insurance', 'OLI_HOLDPURP_BOLI', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (20, 19, 'Mass Marketing Life Insurance', 'OLI_HOLDPURP_MOLI', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (21, 20, 'Guaranteed Issue Life Insurance', 'OLI_HOLDPURP_HOLI', '');
INSERT INTO `oli_lu_holdpurpose` VALUES (22, 21, 'Family Income', 'OLI_HOLDPURP_FAMILYINC', 'Income Replacement');
INSERT INTO `oli_lu_holdpurpose` VALUES (23, 22, 'Family Protection', 'OLI_HOLDPURP_FAMILYPROTECTION', 'Debt Repayment');
INSERT INTO `oli_lu_holdpurpose` VALUES (24, 23, 'Creditor', 'OLI_HOLDPURP_CREDITOR', 'Secure Credit');
INSERT INTO `oli_lu_holdpurpose` VALUES (25, 24, 'Business Loan', 'OLI_HOLDPURP_BUSINESSLOAN', 'Sometimes a purpose for a Holding can be for a business loan.');
INSERT INTO `oli_lu_holdpurpose` VALUES (26, 25, 'Critical illness protection', 'OLI_HOLDPURP_CI', 'For reinsurance messages, the LREACT mappings treat the coverage level as the policy being insured with all riders and benefits being considered for reinsurance at that time described as options. Thus, certain codes that are traditionally riders are need');
INSERT INTO `oli_lu_holdpurpose` VALUES (27, 26, 'Disability income', 'OLI_HOLDPURP_DI', 'For reinsurance messages, the LREACT mappings treat the coverage level as the policy being insured with all riders and benefits being considered for reinsurance at that time described as options. Thus, certain codes that are traditionally riders are need');
INSERT INTO `oli_lu_holdpurpose` VALUES (28, 27, 'Partnership or closed corporation.', 'OLI_HOLDPURP_PARTNER', 'Repurchasing insured\'s business interest in an organization not having more than 5 principal owners');
INSERT INTO `oli_lu_holdpurpose` VALUES (29, 28, 'Estate Tax', 'OLI_HOLDPURP_ESTATE', 'An individual who wants to ensure that his estate will be settled in accordance with his wishes can choose this option. In the event of the insured\'s death, the benefit amount will be spent to pay the taxes and other debts and then the assets will be passed to his heirs.');
INSERT INTO `oli_lu_holdpurpose` VALUES (30, 29, 'Sole Proprietorship', 'OLI_HOLDPURP_SOLEPROP', '\"Sole Proprietorship\" is a purpose for personal insurance. It is an arrangement to continue the business and to provide the insured\'s estate with the funds needed to continue the business in the event of the insured\'s death. Proceeds can be used to pay taxes, bills, etc. as it may not be an opportune time to sell the business and the estate would suffer a loss if this insurance was not in place. This is not a Buy/Sell agreement as the purpose is not to provide the funds to buy the business.');
INSERT INTO `oli_lu_holdpurpose` VALUES (31, 30, 'Trust', 'OLI_HOLDPURP_TRUST', 'To fund a trust');
INSERT INTO `oli_lu_holdpurpose` VALUES (32, 31, 'Basic last expenses', 'OLI_HOLDPURP_LASTEXPENSE', 'Last expenses including funeral');
INSERT INTO `oli_lu_holdpurpose` VALUES (33, 32, 'Mortgage Protection', 'OLI_HOLDPURP_MORTGAGE', 'When the insured dies, certain bills, like mortgage may become payable. The benefit amount comes out from the policy will be used to settle the mortgage.');
INSERT INTO `oli_lu_holdpurpose` VALUES (34, 33, 'Charitable Giving', 'OLI_HOLDPURP_CHARITY', 'Once the insured dies, the benefit amount comes from the policy will be spent towards charity.');
INSERT INTO `oli_lu_holdpurpose` VALUES (35, 34, 'Loan Indemnification', 'OLI_HOLDPURP_LOAN', 'This is similar to Mortgage Protection but this option is available under Business Insurance. If the insured has taken a loan for his business, the benefit amount will be spent to pay the loan when he dies.');
INSERT INTO `oli_lu_holdpurpose` VALUES (36, 35, 'Cash Accumulation', 'OLI_HOLDPURP_CASHACCUM', 'Permanent life insurance can be used to accumulate savings that are available for future savings. For example: parents can use permanent life insurance to provide educational funds even if the parents are still living during the child\'s college years.');
INSERT INTO `oli_lu_holdpurpose` VALUES (37, 36, 'Succession Planning', 'OLI_HOLDPURP_SUCPLAN', 'For protection and preservation of the value of the business at an owners\' retirement, disability or death. The funds will be used to continue the business and overcome the set backs due to the loss of this person. The funds will also help through the process of identifying the successor and the transition period.');
INSERT INTO `oli_lu_holdpurpose` VALUES (38, 37, 'Qualified Plan', 'OLI_HOLDPURP_QUALPLAN', 'This insurance is being bought as a part of a qualified plan for a business. A qualified plan is a retirement savings plan. Qualified plans provide significant income tax advantages for employers and employees. Certain qualified retirement plans are permitted to own life insurance. There can be certain income tax advantages to having life insurance owned by a qualified plan.');
INSERT INTO `oli_lu_holdpurpose` VALUES (39, 38, 'Employee Benefit', 'OLI_HOLDPURP_EMPLOYEEBEN', 'Insurance being applied for will be paid for by the employer and provided to their employee as a benefit');
INSERT INTO `oli_lu_holdpurpose` VALUES (40, 39, 'Pension maximization', 'OLI_HOLDPURP_PENSION', 'Purchase of insurance is in lieu of contributions to a pension plan where the insurance policy will be of greater value than the pension');
INSERT INTO `oli_lu_holdpurpose` VALUES (41, 2147483647, 'Other', 'OLI_OTHER', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_marstat
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_marstat`;
CREATE TABLE `oli_lu_marstat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_marstat_value_unique` (`value`),
  UNIQUE KEY `oli_lu_marstat_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_marstat
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_marstat` VALUES (1, 11, 'Civil Union', 'OLI_MARITAL_CIVILUNION', 'A relationship status of an individual who is living with and sharing a common domestic life with a partner in a same sex union that is not a legal marriage or a domestic partnership.');
INSERT INTO `oli_lu_marstat` VALUES (2, 6, 'Common Law (De facto)', 'OLI_MARITAL_COMMONLAW', 'An informal marriage or marriage by habit and repute that is legally recognized in limited jurisdictions to be a legal marriage. It exists as a result of state/local laws governing the establishment of spousal rights by virtue of the amount of time a couple has been living together.');
INSERT INTO `oli_lu_marstat` VALUES (3, 3, 'Divorced', 'OLI_MARITAL_DIVORCED', '');
INSERT INTO `oli_lu_marstat` VALUES (4, 10, 'Domestic Partner', 'OLI_MARITAL_DOMESTICPARTNER', 'A relationship status of an individual who is living with and sharing a common domestic life with a partner that is not a legal marriage or a civil union.');
INSERT INTO `oli_lu_marstat` VALUES (5, 7, 'Estranged', 'OLI_MARITAL_ESTRANGED', 'When a married couple is not legally separated but is living apart.');
INSERT INTO `oli_lu_marstat` VALUES (6, 8, 'Head of Household', 'OLI_MARITAL_HEADOFHOUSEHOLD', 'Head of Household for tax withholding purposes');
INSERT INTO `oli_lu_marstat` VALUES (7, 5, 'Legally Separated', 'OLI_MARITAL_SEPARATED', '');
INSERT INTO `oli_lu_marstat` VALUES (8, 1, 'Married', 'OLI_MARITAL_MARRIED', '');
INSERT INTO `oli_lu_marstat` VALUES (9, 9, 'Married, withholding single.', 'OLI_MARITAL_MARRIEDSINGLEWTHHLD', 'Married, but withholding at a higher single rate');
INSERT INTO `oli_lu_marstat` VALUES (10, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_marstat` VALUES (11, 2, 'Single', 'OLI_MARITAL_SINGLE', '');
INSERT INTO `oli_lu_marstat` VALUES (12, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_marstat` VALUES (13, 4, 'Widowed', 'OLI_MARITAL_WIDOWED', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_measunits
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_measunits`;
CREATE TABLE `oli_lu_measunits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_measunits_value_unique` (`value`),
  UNIQUE KEY `oli_lu_measunits_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_measunits
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_measunits` VALUES (1, 66, '/40 lpf', 'OLI_MEASUNIT_HPF40', 'Per 40 Low Power Fieldlook at 4 fields, average the count and multiply by 10');
INSERT INTO `oli_lu_measunits` VALUES (2, 1, '%', 'OLI_MEASUNIT_PCT', 'Standard Percentage');
INSERT INTO `oli_lu_measunits` VALUES (3, 3, '%norm', 'OLI_MEASUNIT_PCTNORM', 'Percent Normal');
INSERT INTO `oli_lu_measunits` VALUES (4, 2, '%ref', 'OLI_MEASUNIT_PCTREF', 'Percent Reference');
INSERT INTO `oli_lu_measunits` VALUES (5, 73, '10^12/L', 'OLI_MEASUNIT_10TOPWR12LI', 'Ten to the power of 12 per liter - a unit of measure for cell counts.');
INSERT INTO `oli_lu_measunits` VALUES (6, 74, '10^9/L', 'OLI_MEASUNIT_10TOPWR9LI', 'Ten to the power of 9 per liter - a unit of measure for cell counts.');
INSERT INTO `oli_lu_measunits` VALUES (7, 4, 'AU/ml', 'OLI_MEASUNIT_AUPERML', 'Antibody Units per Milliliter');
INSERT INTO `oli_lu_measunits` VALUES (8, 22, 'copy/mL', 'OLI_MEASUNIT_COPYPERML', 'Copies per Milliliter');
INSERT INTO `oli_lu_measunits` VALUES (9, 67, 'Days', 'OLI_MEASUNITS_DAY', 'Duration of time measured in units of days.');
INSERT INTO `oli_lu_measunits` VALUES (10, 7, 'Degrees Celsius', 'OLI_MEASUNIT_DEGC', 'Temperature measured in degrees Celsius');
INSERT INTO `oli_lu_measunits` VALUES (11, 6, 'Degrees Fahrenheit', 'OLI_MEASUNIT_DEGF', 'Temperature measured in degrees Fahrenheit.');
INSERT INTO `oli_lu_measunits` VALUES (12, 5, 'EAI Units', 'OLI_MEASUNIT_EAIUNITS', 'Special units used in HIV testing');
INSERT INTO `oli_lu_measunits` VALUES (13, 23, 'fL', 'OLI_MEASUNIT_FL', 'Femptoliter');
INSERT INTO `oli_lu_measunits` VALUES (14, 75, 'Fraction', 'OLI_MEASUNIT_FRACTION', 'Fraction - a unit of measure for T3 Update and % Free PSA');
INSERT INTO `oli_lu_measunits` VALUES (15, 89, 'ft.', 'OLI_MEASUNIT_FT', 'Standard Feet (12 inches)');
INSERT INTO `oli_lu_measunits` VALUES (16, 25, 'g/dL', 'OLI_MEASUNIT_GPERDL', 'Grams per Deciliter');
INSERT INTO `oli_lu_measunits` VALUES (17, 96, 'g/L', 'OLI_MEASUNIT_GPERL', 'gram per liter (g/L or g/l)');
INSERT INTO `oli_lu_measunits` VALUES (18, 24, 'g%', 'OLI_MEASUNIT_GPCT', 'Grams Percent');
INSERT INTO `oli_lu_measunits` VALUES (19, 26, 'Hours', 'OLI_MEASUNIT_HOURS', 'Hours');
INSERT INTO `oli_lu_measunits` VALUES (20, 8, 'HPF', 'OLI_MEASUNIT_HPF', 'High Power Field');
INSERT INTO `oli_lu_measunits` VALUES (21, 14, 'Inches', 'OLI_MEASUNIT_INCHES', 'Standard Inches');
INSERT INTO `oli_lu_measunits` VALUES (22, 10, 'INDEX', 'OLI_MEASUNIT_INDEX', 'Used for values measured relative to a standard index.');
INSERT INTO `oli_lu_measunits` VALUES (23, 76, 'IU', 'OLI_MEASUNIT_IU', 'International Units');
INSERT INTO `oli_lu_measunits` VALUES (24, 11, 'IU/L', 'OLI_MEASUNIT_IUPERL', 'International Units per Liter');
INSERT INTO `oli_lu_measunits` VALUES (25, 12, 'IU/mL', 'OLI_MEASUNIT_IUPERML', 'International Units per Milliliter');
INSERT INTO `oli_lu_measunits` VALUES (26, 86, 'k', 'OLI_MEASUNIT_THOUSANDS', 'Thousands');
INSERT INTO `oli_lu_measunits` VALUES (27, 77, 'K/mL', 'OLI_MEASUNIT_KMCL', 'Thousand per microliter.');
INSERT INTO `oli_lu_measunits` VALUES (28, 27, 'k/mm3', 'OLI_MEASUNIT_KPERMM3', 'Thousands per Cubic Millimeter');
INSERT INTO `oli_lu_measunits` VALUES (29, 93, 'kg', 'OLI_MEASUNIT_KG', 'Kilograms');
INSERT INTO `oli_lu_measunits` VALUES (30, 94, 'Km', 'OLI_MEASUNIT_KM', 'Kilometers');
INSERT INTO `oli_lu_measunits` VALUES (31, 28, 'KU/L', 'OLI_MEASUNIT_KUPERL', 'Killiunits per Liter');
INSERT INTO `oli_lu_measunits` VALUES (32, 95, 'Life Expectancy', 'OLI_MEASUNIT_LIFEEXPECTANCY', 'Used to specify a time period estimating the life expectancy of a person.');
INSERT INTO `oli_lu_measunits` VALUES (33, 87, 'Lifetime', 'OLI_MEASUNIT_LIFETIME', 'Used to specify a time period extending for the entire lifetime of a person.');
INSERT INTO `oli_lu_measunits` VALUES (34, 9, 'LPF', 'OLI_MEASUNIT_LPF', 'Low Power Field');
INSERT INTO `oli_lu_measunits` VALUES (35, 91, 'm', 'OLI_MEASUNIT_METER', 'Meters');
INSERT INTO `oli_lu_measunits` VALUES (36, 29, 'm/mm3', 'OLI_MEASUNIT_MPERMM3', 'Millions per Cubic Millimeter');
INSERT INTO `oli_lu_measunits` VALUES (37, 81, 'm/uL', 'OLI_MEASUNIT_MPERUL', 'Millions per microliter');
INSERT INTO `oli_lu_measunits` VALUES (38, 30, 'mEq/24hr', 'OLI_MEASUNIT_MEQPER24HR', 'Milliequivalent per 24 hours');
INSERT INTO `oli_lu_measunits` VALUES (39, 31, 'mEq/L', 'OLI_MEASUNIT_MEQPERL', 'Milliequivalents per Liter');
INSERT INTO `oli_lu_measunits` VALUES (40, 38, 'mg/24hr', 'OLI_MEASUNIT_MG24HR', 'Milligrams per 24 hours');
INSERT INTO `oli_lu_measunits` VALUES (41, 40, 'mg/dL', 'OLI_MEASUNIT_MGPERDL', 'Milligrams per Deciliter');
INSERT INTO `oli_lu_measunits` VALUES (42, 41, 'mg/gCREA', 'OLI_MEASUNIT_MGPERDCREA', 'Milligrams per Gram of CreatinineMeasurement unit to be used for Lab Results only');
INSERT INTO `oli_lu_measunits` VALUES (43, 39, 'mg/L', 'OLI_MEASUNIT_MGPERL', 'Milligrams per Liter');
INSERT INTO `oli_lu_measunits` VALUES (44, 79, 'mg/mgCREA', 'OLI_MEASUNIT_MGPERMGCREA', 'Milligrams per milligram creatinine');
INSERT INTO `oli_lu_measunits` VALUES (45, 80, 'mg/mmolCREA', 'OLI_MEASUNIT_MGMMCREA', 'Milligrams per millimole creatinine');
INSERT INTO `oli_lu_measunits` VALUES (46, 37, 'mg%', 'OLI_MEASUNIT_MGPCT', 'Milligrams Percent');
INSERT INTO `oli_lu_measunits` VALUES (47, 90, 'mi.', 'OLI_MEASUNIT_MI', 'Standard Miles (5280 feet)');
INSERT INTO `oli_lu_measunits` VALUES (48, 42, 'min', 'OLI_MEASUNIT_MINUTES', 'Minutes');
INSERT INTO `oli_lu_measunits` VALUES (49, 32, 'mIU/L', 'OLI_MEASUNIT_MIUPERL', 'Milli-International Units per Liter');
INSERT INTO `oli_lu_measunits` VALUES (50, 33, 'mIU/mL', 'OLI_MEASUNIT_MIUPERML', 'Milli-International Units per Milliliter');
INSERT INTO `oli_lu_measunits` VALUES (51, 34, 'mL', 'OLI_MEASUNIT_ML', 'Milliliters');
INSERT INTO `oli_lu_measunits` VALUES (52, 35, 'mL/min', 'OLI_MEASUNIT_MLPERMIN', 'Milliters per Minute');
INSERT INTO `oli_lu_measunits` VALUES (53, 44, 'mm/hr', 'OLI_MEASUNIT_MMPERHR', 'Millimeters per Hour');
INSERT INTO `oli_lu_measunits` VALUES (54, 45, 'mm3', 'OLI_MEASUNIT_MM3', 'Cubic millimeter');
INSERT INTO `oli_lu_measunits` VALUES (55, 43, 'mm Hg', 'OLI_MEASUNIT_MMHG', 'Millimeters of Mercury');
INSERT INTO `oli_lu_measunits` VALUES (56, 46, 'mmol/24hr', 'OLI_MEASUNIT_MMOLPER24HR', 'Millimoles per 24 hours');
INSERT INTO `oli_lu_measunits` VALUES (57, 78, 'mmol/gCREA', 'OLI_MEASUNIT_MMGMCREA', 'Millimoles per gram creatinine');
INSERT INTO `oli_lu_measunits` VALUES (58, 47, 'mmol/L', 'OLI_MEASUNIT_MMOLPERL', 'Millimoles per Liter');
INSERT INTO `oli_lu_measunits` VALUES (59, 97, 'mmols/mo', 'OLI_MEASUNIT_MMOLPERMOL', 'HbA1c (IFCC) Measurement');
INSERT INTO `oli_lu_measunits` VALUES (60, 48, 'months', 'OLI_MEASUNIT_MONTHS', 'Months');
INSERT INTO `oli_lu_measunits` VALUES (61, 15, 'mOsm/kg', 'OLI_MEASUNIT_MOSMPERKG', 'Miliosmoles per Kilogram');
INSERT INTO `oli_lu_measunits` VALUES (62, 88, 'mph', 'OLI_MEASUNIT_MPH', 'Miles per hour');
INSERT INTO `oli_lu_measunits` VALUES (63, 36, 'mU/min', 'OLI_MEASUNIT_MUPERMIN', 'Milli-Units per Milliliter');
INSERT INTO `oli_lu_measunits` VALUES (64, 49, 'ng/dl', 'OLI_MEASUNIT_NGPERDL', 'Nanograms per Deciliter to measure volume');
INSERT INTO `oli_lu_measunits` VALUES (65, 82, 'ng/dL', 'OLI_MEASUNIT_NGPERDLDEPLAB', 'Nanograms per deciliter used as a measuring unit on Lab Services reports');
INSERT INTO `oli_lu_measunits` VALUES (66, 50, 'ng/mL', 'OLI_MEASUNIT_NGPERML', 'Nanograms per Milliliter to measure volume');
INSERT INTO `oli_lu_measunits` VALUES (67, 83, 'ng/mL', 'OLI_MEASUNIT_NGMPERL', 'Nanograms per milliliter used as a measuring unit on Lab Services Reports');
INSERT INTO `oli_lu_measunits` VALUES (68, 51, 'nmol/L', 'OLI_MEASUNIT_NMOLPERL', 'Nanomoles per Liter to measure volume');
INSERT INTO `oli_lu_measunits` VALUES (69, 84, 'nmol/L', 'OLI_MEASUNIT_NMOLPERLLAB', 'Nanomoles per liter used as a measuring unit on Lab Services reports');
INSERT INTO `oli_lu_measunits` VALUES (70, 16, 'OD Ratio', 'OLI_MEASUNIT_ODRATIO', 'Special ratio used in HIV screening.');
INSERT INTO `oli_lu_measunits` VALUES (71, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_measunits` VALUES (72, 52, 'pg', 'OLI_MEASUNIT_PG', 'Picograms');
INSERT INTO `oli_lu_measunits` VALUES (73, 53, 'pg/dl', 'OLI_MEASUNIT_PGPERDL', 'Picograms per Deciliter');
INSERT INTO `oli_lu_measunits` VALUES (74, 54, 'pg/mL', 'OLI_MEASUNIT_PGPERML', 'Picograms per Milliliter');
INSERT INTO `oli_lu_measunits` VALUES (75, 85, 'pmol', 'OLI_MEASUNIT_PMOL', 'Picomoles');
INSERT INTO `oli_lu_measunits` VALUES (76, 13, 'Pounds', 'OLI_MEASUNIT_LBS', 'Standard Pounds');
INSERT INTO `oli_lu_measunits` VALUES (77, 17, 'PPB', 'OLI_MEASUNIT_PPB', 'Parts per Billion');
INSERT INTO `oli_lu_measunits` VALUES (78, 72, 'Quarters', 'OLI_MEASUNIT_QUARTERS', 'Duration of time measured in units of quarters of a year (three month segments)');
INSERT INTO `oli_lu_measunits` VALUES (79, 55, 'seconds', 'OLI_MEASUNIT_SECONDS', 'Seconds');
INSERT INTO `oli_lu_measunits` VALUES (80, 18, 'Titer', 'OLI_MEASUNIT_TITER', 'Often used to express a substance\'s concentration in a given sample.');
INSERT INTO `oli_lu_measunits` VALUES (81, 20, 'U/gHb', 'OLI_MEASUNIT_UPERGHB', 'Units per Gram of HGB');
INSERT INTO `oli_lu_measunits` VALUES (82, 19, 'U/L', 'OLI_MEASUNIT_UPERL', 'Units per Liter');
INSERT INTO `oli_lu_measunits` VALUES (83, 21, 'U/mL', 'OLI_MEASUNIT_UPERML', 'Units per Milliliter');
INSERT INTO `oli_lu_measunits` VALUES (84, 65, 'u3', 'OLI_MEASUNIT_CUBICMICRONS', 'Cubic Microns');
INSERT INTO `oli_lu_measunits` VALUES (85, 58, 'ug/24hr', 'OLI_MEASUNIT_UGPER24HR', 'Micrograms per 24 hours');
INSERT INTO `oli_lu_measunits` VALUES (86, 60, 'ug/dL', 'OLI_MEASUNIT_UGPERDL', 'Micorgrams per Deciliter');
INSERT INTO `oli_lu_measunits` VALUES (87, 61, 'ug/g', 'OLI_MEASUNIT_UGPERG', 'Micrograms per Gram');
INSERT INTO `oli_lu_measunits` VALUES (88, 62, 'ug/gCREA', 'OLI_MEASUNIT_UGPERGCREA', 'Micrograms per Gram of CreatinineMeasurement unit to be used for Lab Results only');
INSERT INTO `oli_lu_measunits` VALUES (89, 59, 'ug/L', 'OLI_MEASUNIT_UGPERL', 'Micrograms per Liter');
INSERT INTO `oli_lu_measunits` VALUES (90, 63, 'ug/mL', 'OLI_MEASUNIT_UGPERML', 'Micrograms per Milliter');
INSERT INTO `oli_lu_measunits` VALUES (91, 56, 'uIU/mL', 'OLI_MEASUNIT_UIUPERML', 'Micro International Units per Milliliter');
INSERT INTO `oli_lu_measunits` VALUES (92, 57, 'uM3', 'OLI_MEASUNIT_UM3', 'Cubic Micrometers');
INSERT INTO `oli_lu_measunits` VALUES (93, 64, 'umol/L', 'OLI_MEASUNIT_UMOLPERL', 'Micromoles per Liter');
INSERT INTO `oli_lu_measunits` VALUES (94, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_measunits` VALUES (95, 69, 'Weeks', 'OLI_MEASUNIT_WEEKS', 'Duration of time measured in units of weeks');
INSERT INTO `oli_lu_measunits` VALUES (96, 92, 'yd.', 'OLI_MEASUNIT_YD', 'Standard Yards (3 feet)');
INSERT INTO `oli_lu_measunits` VALUES (97, 68, 'Years', 'OLI_MEASUNITS_YEAR', 'Duration of time measured in units of years');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_nation
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_nation`;
CREATE TABLE `oli_lu_nation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_nation_value_unique` (`value`),
  UNIQUE KEY `oli_lu_nation_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_nation
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_nation` VALUES (1, 93, 'Afghanistan', 'OLI_NATION_AFGHANISTAN', '');
INSERT INTO `oli_lu_nation` VALUES (2, 248, 'Aland Islands', 'OLI_NATION_ALANDISLANDS', 'Since 1921, an autonomous region of Finland.');
INSERT INTO `oli_lu_nation` VALUES (3, 355, 'Albania', 'OLI_NATION_ALBANIA', '');
INSERT INTO `oli_lu_nation` VALUES (4, 213, 'Algeria', 'OLI_NATION_ALGERIA', '');
INSERT INTO `oli_lu_nation` VALUES (5, 684, 'American Samoa', 'OLI_NATION_AMERICANSAMOA', '');
INSERT INTO `oli_lu_nation` VALUES (6, 376, 'Andorra', 'OLI_NATION_ANDORRA', '');
INSERT INTO `oli_lu_nation` VALUES (7, 244, 'Angola', 'OLI_NATION_ANGOLA', '');
INSERT INTO `oli_lu_nation` VALUES (8, 1001, 'Anguilla', 'OLI_NATION_ANGUILLA', '');
INSERT INTO `oli_lu_nation` VALUES (9, 672, 'Antarctica', 'OLI_NATION_ANTARCTICA', '');
INSERT INTO `oli_lu_nation` VALUES (10, 268, 'Antigua and Barbuda', 'OLI_NATION_ANTIGUABARBUDA', '');
INSERT INTO `oli_lu_nation` VALUES (11, 54, 'Argentina', 'OLI_NATION_ARGENTINA', '');
INSERT INTO `oli_lu_nation` VALUES (12, 374, 'Armenia', 'OLI_NATION_ARMENIA', '');
INSERT INTO `oli_lu_nation` VALUES (13, 297, 'Aruba', 'OLI_NATION_ARUBA', '');
INSERT INTO `oli_lu_nation` VALUES (14, 247, 'Ascension Islands', 'OLI_NATION_ASCENSIONISLANDS', 'Use Saint Helena, Ascension and Tristan da Cunha.  Saint Helena, Ascension and Tristan da Cunha are a British overseas territory consisting of the islands of Saint Helena, Ascension Island and the Tristan da Cunha group. Previously known as Saint Helena and Dependencies until 1 September 2009, when a new constitution came into force giving the three islands equal status within the territory.');
INSERT INTO `oli_lu_nation` VALUES (15, 61, 'Australia', 'OLI_NATION_AUSTRALIA', '');
INSERT INTO `oli_lu_nation` VALUES (16, 43, 'Austria', 'OLI_NATION_AUSTRIA', '');
INSERT INTO `oli_lu_nation` VALUES (17, 994, 'Azerbaijan', 'OLI_NATION_AZERBAIJAN', '');
INSERT INTO `oli_lu_nation` VALUES (18, 242, 'Bahamas', 'OLI_NATION_BAHAMAS', '');
INSERT INTO `oli_lu_nation` VALUES (19, 973, 'Bahrain', 'OLI_NATION_BAHRAIN', '');
INSERT INTO `oli_lu_nation` VALUES (20, 880, 'Bangladesh', 'OLI_NATION_BANGLADESH', '');
INSERT INTO `oli_lu_nation` VALUES (21, 246, 'Barbados', 'OLI_NATION_BARBADOS', '');
INSERT INTO `oli_lu_nation` VALUES (22, 375, 'Belarus', 'OLI_NATION_BELARUS', '');
INSERT INTO `oli_lu_nation` VALUES (23, 32, 'Belgium', 'OLI_NATION_BELGIUM', '');
INSERT INTO `oli_lu_nation` VALUES (24, 501, 'Belize', 'OLI_NATION_BELIZE', '');
INSERT INTO `oli_lu_nation` VALUES (25, 229, 'Benin', 'OLI_NATION_BENIN', '');
INSERT INTO `oli_lu_nation` VALUES (26, 441, 'Bermuda', 'OLI_NATION_BERMUDA', '');
INSERT INTO `oli_lu_nation` VALUES (27, 975, 'Bhutan', 'OLI_NATION_BHUTAN', '');
INSERT INTO `oli_lu_nation` VALUES (28, 591, 'Bolivia', 'OLI_NATION_BOLIVIA', '');
INSERT INTO `oli_lu_nation` VALUES (29, 535, 'Bonaire, Sint Eustatius and Saba', 'OLI_NATION_BONAIRESINTEUSTAS', 'Located in the Caribbean, they are semi-autonomous entities within the Kingdom of the Netherlands. Also known as the BES Islands.');
INSERT INTO `oli_lu_nation` VALUES (30, 387, 'Bosnia and Herzegovina', 'OLI_NATION_BOSNIAHERZEGOVINA', '');
INSERT INTO `oli_lu_nation` VALUES (31, 267, 'Botswana', 'OLI_NATION_BOTSWANA', '');
INSERT INTO `oli_lu_nation` VALUES (32, 1009, 'Bouvet Island', 'OLI_NATION_BOUVETISLAND', '');
INSERT INTO `oli_lu_nation` VALUES (33, 55, 'Brazil', 'OLI_NATION_BRAZIL', '');
INSERT INTO `oli_lu_nation` VALUES (34, 1011, 'British Indian Ocean Territory', 'OLI_NATION_BRITISHINDIANOCNTERR', '');
INSERT INTO `oli_lu_nation` VALUES (35, 673, 'Brunei Darussalam', 'OLI_NATION_BRUNEI', '');
INSERT INTO `oli_lu_nation` VALUES (36, 359, 'Bulgaria', 'OLI_NATION_BULGARIA', '');
INSERT INTO `oli_lu_nation` VALUES (37, 226, 'Burkina Faso', 'OLI_NATION_BURKINAFASO', '');
INSERT INTO `oli_lu_nation` VALUES (38, 95, 'Burma (Union Of Myanmar)', 'OLI_NATION_BURMA', 'Use 950 - Myanmar instead');
INSERT INTO `oli_lu_nation` VALUES (39, 257, 'Burundi', 'OLI_NATION_BURUNDI', '');
INSERT INTO `oli_lu_nation` VALUES (40, 855, 'Cambodia', 'OLI_NATION_CAMBODIA', '');
INSERT INTO `oli_lu_nation` VALUES (41, 237, 'Cameroon', 'OLI_NATION_CAMEROON', '');
INSERT INTO `oli_lu_nation` VALUES (42, 2, 'Canada', 'OLI_NATION_CANADA', '');
INSERT INTO `oli_lu_nation` VALUES (43, 238, 'Cape Verde', 'OLI_NATION_CAPEVERDEISLAND', '');
INSERT INTO `oli_lu_nation` VALUES (44, 345, 'Cayman Islands', 'OLI_NATION_CAYMANIS', '');
INSERT INTO `oli_lu_nation` VALUES (45, 236, 'Central African Republic', 'OLI_NATION_CENTRALAFRICANREP', '');
INSERT INTO `oli_lu_nation` VALUES (46, 235, 'Chad', 'OLI_NATION_CHAD', '');
INSERT INTO `oli_lu_nation` VALUES (47, 56, 'Chile', 'OLI_NATION_CHILE', '');
INSERT INTO `oli_lu_nation` VALUES (48, 86, 'China', 'OLI_NATION_CHINA', '');
INSERT INTO `oli_lu_nation` VALUES (49, 1024, 'Christmas Island', 'OLI_NATION_CHRISTMASISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (50, 1012, 'Cocoa Islands', 'OLI_NATION_COCOAISLANDS', 'Use 1007 - Cocos (Keeling) Islands');
INSERT INTO `oli_lu_nation` VALUES (51, 1007, 'Cocos (Keeling) Islands', 'OLI_NATION_COCOS', '');
INSERT INTO `oli_lu_nation` VALUES (52, 57, 'Colombia', 'OLI_NATION_COLUMBIA', '');
INSERT INTO `oli_lu_nation` VALUES (53, 269, 'Comoros', 'OLI_NATION_COMOROS', '');
INSERT INTO `oli_lu_nation` VALUES (54, 1027, 'Congo', 'OLI_NATION_CONGO', '');
INSERT INTO `oli_lu_nation` VALUES (55, 271, 'Congo, the Democratic Republic of the', 'OLI_NATION_CONGODEMREP', 'Formerly Zaire');
INSERT INTO `oli_lu_nation` VALUES (56, 682, 'Cook Islands', 'OLI_NATION_COOKISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (57, 506, 'Costa Rica', 'OLI_NATION_COSTARICA', '');
INSERT INTO `oli_lu_nation` VALUES (58, 1003, 'Cote d\'Ivoire', 'OLI_NATION_COTEDIVORIE', 'Formerly Ivory Coast');
INSERT INTO `oli_lu_nation` VALUES (59, 385, 'Croatia', 'OLI_NATION_CROATIA', '');
INSERT INTO `oli_lu_nation` VALUES (60, 53, 'Cuba', 'OLI_NATION_CUBA', '');
INSERT INTO `oli_lu_nation` VALUES (61, 1026, 'Curacao', 'OLI_NATION_CURACAO', 'A self governing country within the kingdom of the Netherlands since October, 2010 with the dissolution of the Netherland Antilles.');
INSERT INTO `oli_lu_nation` VALUES (62, 357, 'Cyprus', 'OLI_NATION_CYPRUS', '');
INSERT INTO `oli_lu_nation` VALUES (63, 42, 'Czechoslovakia', 'OLI_NATION_CZECHLOSLOVAKIA', 'Use 420 - Czech Republic or 421 - Slovakia');
INSERT INTO `oli_lu_nation` VALUES (64, 420, 'Czech Republic', 'OLI_NATION_CZECHREPUBLIC', '');
INSERT INTO `oli_lu_nation` VALUES (65, 45, 'Denmark', 'OLI_NATION_DENMARK', '');
INSERT INTO `oli_lu_nation` VALUES (66, 1030, 'Diego Garcia', 'OLI_NATION_DIEGOGARCIA', 'Use 1011 - British Indian Ocean Territory.');
INSERT INTO `oli_lu_nation` VALUES (67, 253, 'Djibouti', 'OLI_NATION_DJIBOUTI', '');
INSERT INTO `oli_lu_nation` VALUES (68, 767, 'Dominica', 'OLI_NATION_DOMINICA', '');
INSERT INTO `oli_lu_nation` VALUES (69, 809, 'Dominican Republic', 'OLI_NATION_DOMINICANREPUBLIC', '');
INSERT INTO `oli_lu_nation` VALUES (70, 593, 'Ecuador', 'OLI_NATION_ECUADOR', '');
INSERT INTO `oli_lu_nation` VALUES (71, 20, 'Egypt', 'OLI_NATION_EGYPT', '');
INSERT INTO `oli_lu_nation` VALUES (72, 503, 'El Salvador', 'OLI_NATION_ELSALVADOR', '');
INSERT INTO `oli_lu_nation` VALUES (73, 240, 'Equatorial Guinea', 'OLI_NATION_EQUATORIALGUINEA', '');
INSERT INTO `oli_lu_nation` VALUES (74, 1004, 'Eritrea', 'OLI_NATION_ERITREA', '');
INSERT INTO `oli_lu_nation` VALUES (75, 372, 'Estonia', 'OLI_NATION_ESTONIA', '');
INSERT INTO `oli_lu_nation` VALUES (76, 251, 'Ethiopia', 'OLI_NATION_ETHIOPIA', '');
INSERT INTO `oli_lu_nation` VALUES (77, 500, 'Falkland Islands (Malvinas)', 'OLI_NATION_FALKLANDISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (78, 298, 'Faroe Islands', 'OLI_NATION_FAEROEISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (79, 679, 'Fiji', 'OLI_NATION_FIJI', '');
INSERT INTO `oli_lu_nation` VALUES (80, 358, 'Finland', 'OLI_NATION_FINLAND', '');
INSERT INTO `oli_lu_nation` VALUES (81, 33, 'France', 'OLI_NATION_FRANCE', '');
INSERT INTO `oli_lu_nation` VALUES (82, 594, 'French Guiana', 'OLI_NATION_FRENCHGUIANA', '');
INSERT INTO `oli_lu_nation` VALUES (83, 689, 'French Polynesia', 'OLI_NATION_FRENCHPOLYNESIA', '');
INSERT INTO `oli_lu_nation` VALUES (84, 1015, 'French Southern Territories', 'OLI_NATION_FRENCHSOUTHERNTERRITIOIES', '');
INSERT INTO `oli_lu_nation` VALUES (85, 241, 'Gabon', 'OLI_NATION_GABON', '');
INSERT INTO `oli_lu_nation` VALUES (86, 220, 'Gambia', 'OLI_NATION_GAMBIA', '');
INSERT INTO `oli_lu_nation` VALUES (87, 995, 'Georgia', 'OLI_NATION_GEORGIA', '');
INSERT INTO `oli_lu_nation` VALUES (88, 49, 'Germany', 'OLI_NATION_GERMANY', '');
INSERT INTO `oli_lu_nation` VALUES (89, 233, 'Ghana', 'OLI_NATION_GHANA', '');
INSERT INTO `oli_lu_nation` VALUES (90, 350, 'Gibraltar', 'OLI_NATION_GIBRALTAR', '');
INSERT INTO `oli_lu_nation` VALUES (91, 30, 'Greece', 'OLI_NATION_GREECE', '');
INSERT INTO `oli_lu_nation` VALUES (92, 299, 'Greenland', 'OLI_NATION_GREENLAND', '');
INSERT INTO `oli_lu_nation` VALUES (93, 473, 'Grenada', 'OLI_NATION_CRENADA', '');
INSERT INTO `oli_lu_nation` VALUES (94, 590, 'Guadeloupe', 'OLI_NATION_GUADALOUPE', '');
INSERT INTO `oli_lu_nation` VALUES (95, 671, 'Guam', 'OLI_NATION_GUAM', '');
INSERT INTO `oli_lu_nation` VALUES (96, 502, 'Guatemala', 'OLI_NATION_GUATEMALA', '');
INSERT INTO `oli_lu_nation` VALUES (97, 360, 'Guernsey', 'OLI_NATION_GUERNSEY', '');
INSERT INTO `oli_lu_nation` VALUES (98, 224, 'Guinea', 'OLI_NATION_GUINEA', '');
INSERT INTO `oli_lu_nation` VALUES (99, 270, 'Guinea-Bissau', 'OLI_NATION_GUINEABISSAU', 'Former Portuguese Guinea');
INSERT INTO `oli_lu_nation` VALUES (100, 592, 'Guyana', 'OLI_NATION_GUYANA', '');
INSERT INTO `oli_lu_nation` VALUES (101, 509, 'Haiti', 'OLI_NATION_HAITI', '');
INSERT INTO `oli_lu_nation` VALUES (102, 1016, 'Heard Island and McDonald Islands', 'OLI_NATION_HEARDISLISLAND', '');
INSERT INTO `oli_lu_nation` VALUES (103, 1029, 'Holy See (Vatican City State)', 'OLI_NATION_HOLYSEE', '');
INSERT INTO `oli_lu_nation` VALUES (104, 504, 'Honduras', 'OLI_NATION_HONDURAS', '');
INSERT INTO `oli_lu_nation` VALUES (105, 852, 'Hong Kong', 'OLI_NATION_HONGKONG', '');
INSERT INTO `oli_lu_nation` VALUES (106, 36, 'Hungary', 'OLI_NATION_HUNGARY', '');
INSERT INTO `oli_lu_nation` VALUES (107, 354, 'Iceland', 'OLI_NATION_ICELAND', '');
INSERT INTO `oli_lu_nation` VALUES (108, 91, 'India', 'OLI_NATION_INDIA', '');
INSERT INTO `oli_lu_nation` VALUES (109, 62, 'Indonesia', 'OLI_NATION_INDONESIA', '');
INSERT INTO `oli_lu_nation` VALUES (110, 98, 'Iran, Islamic Republic of', 'OLI_NATION_IRAN', '');
INSERT INTO `oli_lu_nation` VALUES (111, 964, 'Iraq', 'OLI_NATION_IRAQ', '');
INSERT INTO `oli_lu_nation` VALUES (112, 353, 'Ireland', 'OLI_NATION_IRELAND', '');
INSERT INTO `oli_lu_nation` VALUES (113, 1035, 'Isle of Man', 'OLI_NATION_ISLEOFMAN', 'Isle of Man is a British crown dependency which functions in some respects as an independent country. Do not use this code to indicate Nationality. Use \"44\" (United Kingdom) instead');
INSERT INTO `oli_lu_nation` VALUES (114, 972, 'Israel', 'OLI_NATION_ISRAEL', '');
INSERT INTO `oli_lu_nation` VALUES (115, 39, 'Italy', 'OLI_NATION_ITALY', '');
INSERT INTO `oli_lu_nation` VALUES (116, 225, 'Ivory Coast, Republic Of', 'OLI_NATION_IVORYCOAST', 'Use 1003 - Cote d\'Ivorie');
INSERT INTO `oli_lu_nation` VALUES (117, 876, 'Jamaica', 'OLI_NATION_JAMAICA', '');
INSERT INTO `oli_lu_nation` VALUES (118, 81, 'Japan', 'OLI_NATION_JAPAN', '');
INSERT INTO `oli_lu_nation` VALUES (119, 1034, 'Jersey', 'OLI_NATION_JERSEY', 'Jersey is a British crown dependency which functions in some respects as an independent country.  Do not use this code to indicate Nationality. Use \"44\" (United Kingdom) instead');
INSERT INTO `oli_lu_nation` VALUES (120, 962, 'Jordan', 'OLI_NATION_JORDAN', '');
INSERT INTO `oli_lu_nation` VALUES (121, 1005, 'Kazakhstan', 'OLI_NATION_KAZAKHSTAN', '');
INSERT INTO `oli_lu_nation` VALUES (122, 254, 'Kenya', 'OLI_NATION_KENYA', '');
INSERT INTO `oli_lu_nation` VALUES (123, 686, 'Kiribati', 'OLI_NATION_KIRIBATI', '');
INSERT INTO `oli_lu_nation` VALUES (124, 82, 'Korea', 'OLI_NATION_KOREA', 'Use Democratic Peoples\' Republic of OR Korea, Republic of');
INSERT INTO `oli_lu_nation` VALUES (125, 952, 'Korea, Democratic People\'s Republic of', 'OLI_NATION_KOREADEMPEOPLEREP', 'North Korea');
INSERT INTO `oli_lu_nation` VALUES (126, 951, 'Korea, Republic of', 'OLI_NATION_KOREAREPUBLIC', 'South Korea');
INSERT INTO `oli_lu_nation` VALUES (127, 390, 'Kosovo', 'OLI_NATION_KOSOVO', 'A former province of Serbia which declared independence in 2008. Formally known as the Republic of Kosovo.');
INSERT INTO `oli_lu_nation` VALUES (128, 965, 'Kuwait', 'OLI_NATION_KUWAIT', '');
INSERT INTO `oli_lu_nation` VALUES (129, 1006, 'Kyrgyzstan', 'OLI_NATION_KYRGYZSTAN', '');
INSERT INTO `oli_lu_nation` VALUES (130, 856, 'Lao People\'s Democratic Republic', 'OLI_NATION_LAOS', '');
INSERT INTO `oli_lu_nation` VALUES (131, 371, 'Latvia', 'OLI_NATION_LATVIA', '');
INSERT INTO `oli_lu_nation` VALUES (132, 961, 'Lebanon', 'OLI_NATION_LEBANON', '');
INSERT INTO `oli_lu_nation` VALUES (133, 266, 'Lesotho', 'OLI_NATION_LESOTHO', '');
INSERT INTO `oli_lu_nation` VALUES (134, 231, 'Liberia', 'OLI_NATION_LIBERIA', '');
INSERT INTO `oli_lu_nation` VALUES (135, 218, 'Libya', 'OLI_NATION_LIBYA', 'Formerly Libyan Arab Jamahiriya');
INSERT INTO `oli_lu_nation` VALUES (136, 423, 'Liechtenstein', 'OLI_NATION_LIECHTENSTEIN', '');
INSERT INTO `oli_lu_nation` VALUES (137, 370, 'Lithuania', 'OLI_NATION_LITHUANIA', '');
INSERT INTO `oli_lu_nation` VALUES (138, 352, 'Luxembourg', 'OLI_NATION_LUXEMBOURG', '');
INSERT INTO `oli_lu_nation` VALUES (139, 853, 'Macao', 'OLI_NATION_MACAO', '');
INSERT INTO `oli_lu_nation` VALUES (140, 389, 'Macedonia, The Former Yugoslav Republic of', 'OLI_NATION_MACEDONIA', '');
INSERT INTO `oli_lu_nation` VALUES (141, 261, 'Madagascar', 'OLI_NATION_MADAGASCAR', '');
INSERT INTO `oli_lu_nation` VALUES (142, 265, 'Malawi', 'OLI_NATION_MALAWI', '');
INSERT INTO `oli_lu_nation` VALUES (143, 60, 'Malaysia', 'OLI_NATION_MALAYSIA', '');
INSERT INTO `oli_lu_nation` VALUES (144, 1023, 'Maldives', 'OLI_NATION_MALDIVES', '');
INSERT INTO `oli_lu_nation` VALUES (145, 223, 'Mali', 'OLI_NATION_MALI', '');
INSERT INTO `oli_lu_nation` VALUES (146, 356, 'Malta', 'OLI_NATION_MALTA', '');
INSERT INTO `oli_lu_nation` VALUES (147, 694, 'Marshall Islands', 'OLI_NATION_MARSHALLISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (148, 596, 'Martinique', 'OLI_NATION_MARTINIQUE', 'Formerly French Antilles.');
INSERT INTO `oli_lu_nation` VALUES (149, 222, 'Mauritania', 'OLI_NATION_MAURITANIA', '');
INSERT INTO `oli_lu_nation` VALUES (150, 230, 'Mauritius', 'OLI_NATION_MAURITIUS', '');
INSERT INTO `oli_lu_nation` VALUES (151, 1017, 'Mayotte', 'OLI_NATION_MAYOTTEISLAND', '');
INSERT INTO `oli_lu_nation` VALUES (152, 52, 'Mexico', 'OLI_NATION_MEXICO', '');
INSERT INTO `oli_lu_nation` VALUES (153, 695, 'Micronesia, Federated States of', 'OLI_NATION_MICRONESIA', '');
INSERT INTO `oli_lu_nation` VALUES (154, 373, 'Moldova, Republic of', 'OLI_NATION_MOLDOVA', '');
INSERT INTO `oli_lu_nation` VALUES (155, 1028, 'Monaco', 'OLI_NATION_MONACO', '');
INSERT INTO `oli_lu_nation` VALUES (156, 1008, 'Mongolia', 'OLI_NATION_MONGOLIA', '');
INSERT INTO `oli_lu_nation` VALUES (157, 1037, 'Montenegro', 'OLI_NATION_MONTENEGRO', 'Montenegro has been an independent country since June 3 2006. It was formerly part of Serbia and Montenegro and before that, a part of Yugoslavia.');
INSERT INTO `oli_lu_nation` VALUES (158, 664, 'Montserrat', 'OLI_NATION_MONTSERRAT', '');
INSERT INTO `oli_lu_nation` VALUES (159, 212, 'Morocco', 'OLI_NATION_MOROCCO', '');
INSERT INTO `oli_lu_nation` VALUES (160, 258, 'Mozambique', 'OLI_NATION_MOZAMBIQUE', '');
INSERT INTO `oli_lu_nation` VALUES (161, 950, 'Myanmar', 'OLI_NATION_MYANMAR', 'Formerly Burma');
INSERT INTO `oli_lu_nation` VALUES (162, 264, 'Namibia', 'OLI_NATION_NAMIBIA', '');
INSERT INTO `oli_lu_nation` VALUES (163, 674, 'Nauru', 'OLI_NATION_NAURU', '');
INSERT INTO `oli_lu_nation` VALUES (164, 977, 'Nepal', 'OLI_NATION_NEPAL', '');
INSERT INTO `oli_lu_nation` VALUES (165, 31, 'Netherlands', 'OLI_NATION_NETHERLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (166, 599, 'Netherlands Antilles', 'OLI_NATION_NETHERLANDSANTILLES', 'Dissolved in October, 2010 when Curacao, Sint Maarten (Dutch Part) and Bonaire, Sint Eustatius and Saba became autonomous territories of the Kingdom of the Netherlands.');
INSERT INTO `oli_lu_nation` VALUES (167, 687, 'New Caledonia', 'OLI_NATION_NEWCALEDONIA', '');
INSERT INTO `oli_lu_nation` VALUES (168, 64, 'New Zealand', 'OLI_NATION_NEWZEALAND', '');
INSERT INTO `oli_lu_nation` VALUES (169, 505, 'Nicaragua', 'OLI_NATION_NICARAGUA', '');
INSERT INTO `oli_lu_nation` VALUES (170, 227, 'Niger', 'OLI_NATION_NIGER', '');
INSERT INTO `oli_lu_nation` VALUES (171, 234, 'Nigeria', 'OLI_NATION_NIGERIA', '');
INSERT INTO `oli_lu_nation` VALUES (172, 683, 'Niue', 'OLI_NATION_NIUE', '');
INSERT INTO `oli_lu_nation` VALUES (173, 1025, 'Norfolk Island', 'OLI_NATION_NORFOLKISLAND', '');
INSERT INTO `oli_lu_nation` VALUES (174, 691, 'Northern Mariana Islands', 'OLI_NATION_NORTHMARIANAISLANDS', 'A commonwealth in political union with the US, located in N Pacific.  Depending on usage, this entity may be treated as a Nation or a State');
INSERT INTO `oli_lu_nation` VALUES (175, 1038, 'North Yemen', 'OLI_NATION_NORTHYEMEN', 'Present-day northern and western provinces of Yemen.  This nation code represents a country that no longer exists and is used in situations where it is necessary to specify a historical country at a specific point in time.');
INSERT INTO `oli_lu_nation` VALUES (176, 47, 'Norway', 'OLI_NATION_NORWAY', '');
INSERT INTO `oli_lu_nation` VALUES (177, 968, 'Oman', 'OLI_NATION_OMAN', '');
INSERT INTO `oli_lu_nation` VALUES (178, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_nation` VALUES (179, 92, 'Pakistan', 'OLI_NATION_PAKISTAN', '');
INSERT INTO `oli_lu_nation` VALUES (180, 693, 'Palau', 'OLI_NATION_PALAU', '');
INSERT INTO `oli_lu_nation` VALUES (181, 1032, 'Palestine, State of', 'OLI_NATION_PALESTINE', 'Formerly Palestinian Territory, Occupied.');
INSERT INTO `oli_lu_nation` VALUES (182, 1002, 'Panama (also known as Canal Zone)', 'OLI_NATION_PANAMA', 'Freestate has the same code as Panama = 507. Thus, a new code had to be selected.');
INSERT INTO `oli_lu_nation` VALUES (183, 675, 'Papua New Guinea', 'OLI_NATION_PAPUANEWGUINEA', '');
INSERT INTO `oli_lu_nation` VALUES (184, 595, 'Paraguay', 'OLI_NATION_PARAGUAY', '');
INSERT INTO `oli_lu_nation` VALUES (185, 51, 'Peru', 'OLI_NATION_PERU', '');
INSERT INTO `oli_lu_nation` VALUES (186, 63, 'Philippines', 'OLI_NATION_PHILIPPINES', '');
INSERT INTO `oli_lu_nation` VALUES (187, 1018, 'Pitcairn', 'OLI_NATION_PITCARINISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (188, 48, 'Poland', 'OLI_NATION_POLAND', '');
INSERT INTO `oli_lu_nation` VALUES (189, 351, 'Portugal', 'OLI_NATION_PORTUGAL', '');
INSERT INTO `oli_lu_nation` VALUES (190, 510, 'Puerto Rico', 'OLI_NATION_PUERTORICO', '');
INSERT INTO `oli_lu_nation` VALUES (191, 974, 'Qatar', 'OLI_NATION_QATAR', '');
INSERT INTO `oli_lu_nation` VALUES (192, 262, 'Reunion', 'OLI_NATION_REUNIONISLAND', '');
INSERT INTO `oli_lu_nation` VALUES (193, 40, 'Romania', 'OLI_NATION_ROMANIA', '');
INSERT INTO `oli_lu_nation` VALUES (194, 7, 'Russian Federation', 'OLI_NATION_RUSSIA', '');
INSERT INTO `oli_lu_nation` VALUES (195, 250, 'Rwanda', 'OLI_NATION_RWANDA', '');
INSERT INTO `oli_lu_nation` VALUES (196, 652, 'Saint Barthelemy', 'OLI_NATION_SAINTBARTHELEMY', 'Since 2007, a French overseas collectivity. Also known as Saint Barts.');
INSERT INTO `oli_lu_nation` VALUES (197, 290, 'Saint Helena, Ascension and Tristan da Cunha', 'OLI_NATION_STHELENA', 'Saint Helena, Ascension and Tristan da Cunha are a British overseas territory consisting of the islands of Saint Helena, Ascension Island and the Tristan da Cunha group. Previously known as Saint Helena and Dependencies until 1 September 2009, when a new constitution came into force giving the three islands equal status within the territory.');
INSERT INTO `oli_lu_nation` VALUES (198, 869, 'Saint Kitts and Nevis', 'OLI_NATION_STKITTSNEVIS', '');
INSERT INTO `oli_lu_nation` VALUES (199, 758, 'Saint Lucia', 'OLI_NATION_STLUCIA', '');
INSERT INTO `oli_lu_nation` VALUES (200, 663, 'Saint Martin (French Part)', 'OLI_NATION_SAINTMARTINFRENCH', 'Since 2007, a French overseas collectivity.');
INSERT INTO `oli_lu_nation` VALUES (201, 508, 'Saint Pierre and Miquelon', 'OLI_NATION_STPIERRE', '');
INSERT INTO `oli_lu_nation` VALUES (202, 784, 'Saint Vincent and the Grenadines', 'OLI_NATION_STVINCENT', '');
INSERT INTO `oli_lu_nation` VALUES (203, 670, 'Saipan', 'OLI_NATION_SAIPAN', 'Use 691 - Northern Mariana Islands.');
INSERT INTO `oli_lu_nation` VALUES (204, 1013, 'Samoa', 'OLI_NATION_SAMOA', '');
INSERT INTO `oli_lu_nation` VALUES (205, 378, 'San Marino', 'OLI_NATION_SANMARINO', '');
INSERT INTO `oli_lu_nation` VALUES (206, 239, 'Sao Tome and Principe', 'OLI_NATION_SAOTOME', '');
INSERT INTO `oli_lu_nation` VALUES (207, 966, 'Saudi Arabia', 'OLI_NATION_SAUDIARABIA', '');
INSERT INTO `oli_lu_nation` VALUES (208, 221, 'Senegal', 'OLI_NATION_SENEGAL', '');
INSERT INTO `oli_lu_nation` VALUES (209, 1036, 'Serbia', 'OLI_NATION_SERBIA', 'Serbia is an independent country derived from the old Socialist Republic of Yugoslavia.');
INSERT INTO `oli_lu_nation` VALUES (210, 1010, 'Seychelles', 'OLI_NATION_SEYCHELLES', '');
INSERT INTO `oli_lu_nation` VALUES (211, 232, 'Sierra Leone', 'OLI_NATION_SIERRALEONE', '');
INSERT INTO `oli_lu_nation` VALUES (212, 65, 'Singapore', 'OLI_NATION_SINGAPORE', '');
INSERT INTO `oli_lu_nation` VALUES (213, 534, 'Sint Maarten (Dutch Part)', 'OLI_NATION_SINTMAARTEN', 'A self governing country within the kingdom of the Netherlands since October, 2010 with the dissolution of the Netherland Antilles.');
INSERT INTO `oli_lu_nation` VALUES (214, 421, 'Slovakia', 'OLI_NATION_SLOVAKIA', '');
INSERT INTO `oli_lu_nation` VALUES (215, 386, 'Slovenia', 'OLI_NATION_SLOVENIA', '');
INSERT INTO `oli_lu_nation` VALUES (216, 677, 'Solomon Islands', 'OLI_NATION_SOLOMONISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (217, 252, 'Somalia', 'OLI_NATION_SOMALIA', '');
INSERT INTO `oli_lu_nation` VALUES (218, 27, 'South Africa', 'OLI_NATION_SOUTHAFRICA', '');
INSERT INTO `oli_lu_nation` VALUES (219, 512, 'South Georgia and the South Sandwich Islands', 'OLI_NATION_SOUTHGEORGIASANDWICH', 'Collection of Islands in South Atlantic.');
INSERT INTO `oli_lu_nation` VALUES (220, 728, 'South Sudan', 'OLI_NATION_SOUTH_SUDAN', '');
INSERT INTO `oli_lu_nation` VALUES (221, 1039, 'South Yemen', 'OLI_NATION_SOUTHYEMEN', 'Present-day southern and eastern provinces of Yemen.  This nation code represents a country that no longer exists and is used in situations where it is necessary to specify a historical country at a specific point in time.');
INSERT INTO `oli_lu_nation` VALUES (222, 34, 'Spain', 'OLI_NATION_SPAIN', '');
INSERT INTO `oli_lu_nation` VALUES (223, 94, 'Sri Lanka', 'OLI_NATION_SRILANKA', '');
INSERT INTO `oli_lu_nation` VALUES (224, 249, 'Sudan', 'OLI_NATION_SUDAN', '');
INSERT INTO `oli_lu_nation` VALUES (225, 597, 'Suriname', 'OLI_NATION_SURINAME', '');
INSERT INTO `oli_lu_nation` VALUES (226, 1019, 'Svalbard and Jan Mayen', 'OLI_NATION_SVALBARDISLAND', '');
INSERT INTO `oli_lu_nation` VALUES (227, 1031, 'Swaziland', 'OLI_NATION_SWAZILAND', '');
INSERT INTO `oli_lu_nation` VALUES (228, 46, 'Sweden', 'OLI_NATION_SWEDEN', '');
INSERT INTO `oli_lu_nation` VALUES (229, 41, 'Switzerland', 'OLI_NATION_SWITZERLAND', '');
INSERT INTO `oli_lu_nation` VALUES (230, 963, 'Syrian Arab Republic', 'OLI_NATION_SYRIA', '');
INSERT INTO `oli_lu_nation` VALUES (231, 886, 'Taiwan, Province of China', 'OLI_NATION_TAIWAN', '');
INSERT INTO `oli_lu_nation` VALUES (232, 992, 'Tajikistan', 'OLI_NATION_TAJIKISTAN', '');
INSERT INTO `oli_lu_nation` VALUES (233, 255, 'Tanzania, United Republic of', 'OLI_NATION_TANZANIA', '');
INSERT INTO `oli_lu_nation` VALUES (234, 66, 'Thailand', 'OLI_NATION_THAILAND', '');
INSERT INTO `oli_lu_nation` VALUES (235, 1014, 'Timor-Leste', 'OLI_NATION_EASTTIMOR', 'Formerly East Timor');
INSERT INTO `oli_lu_nation` VALUES (236, 228, 'Togo', 'OLI_NATION_TOGO', '');
INSERT INTO `oli_lu_nation` VALUES (237, 1020, 'Tokelau', 'OLI_NATION_TOKELAU', '');
INSERT INTO `oli_lu_nation` VALUES (238, 676, 'Tonga', 'OLI_NATION_TONGAISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (239, 868, 'Trinidad and Tobago', 'OLI_NATION_TRINIDADTOBAGO', '');
INSERT INTO `oli_lu_nation` VALUES (240, 216, 'Tunisia', 'OLI_NATION_TUNISIA', '');
INSERT INTO `oli_lu_nation` VALUES (241, 90, 'Turkey', 'OLI_NATION_TURKEY', '');
INSERT INTO `oli_lu_nation` VALUES (242, 993, 'Turkmenistan', 'OLI_NATION_TURKMENISTAN', '');
INSERT INTO `oli_lu_nation` VALUES (243, 649, 'Turks and Caicos Islands', 'OLI_NATION_TURKSCAICOSIS', '');
INSERT INTO `oli_lu_nation` VALUES (244, 688, 'Tuvalu', 'OLI_NATION_TUVALU', '');
INSERT INTO `oli_lu_nation` VALUES (245, 256, 'Uganda', 'OLI_NATION_UGANDA', '');
INSERT INTO `oli_lu_nation` VALUES (246, 380, 'Ukraine', 'OLI_NATION_UKRAINE', '');
INSERT INTO `oli_lu_nation` VALUES (247, 1040, 'Union of Soviet Socialist Republics', 'OLI_NATION_USSR', 'More commonly known as USSR, or Soviet Union.  This nation code represents a country that no longer exists and is used in situations where it is necessary to specify a historical country at a specific point in time.');
INSERT INTO `oli_lu_nation` VALUES (248, 971, 'United Arab Emirates', 'OLI_NATION_UNITEDARABEMIRATES', '');
INSERT INTO `oli_lu_nation` VALUES (249, 44, 'United Kingdom', 'OLI_NATION_UK', '');
INSERT INTO `oli_lu_nation` VALUES (250, 1021, 'United States Minor Outlying Islands', 'OLI_NATION_USMINOROUTLYINGISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (251, 1, 'United States of America', 'OLI_NATION_USA', '');
INSERT INTO `oli_lu_nation` VALUES (252, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_nation` VALUES (253, 598, 'Uruguay', 'OLI_NATION_URUGUAY', '');
INSERT INTO `oli_lu_nation` VALUES (254, 998, 'Uzbekistan', 'OLI_NATION_UZBEKISTAN', '');
INSERT INTO `oli_lu_nation` VALUES (255, 678, 'Vanuatu', 'OLI_NATION_VANUATU', '');
INSERT INTO `oli_lu_nation` VALUES (256, 58, 'Venezuela', 'OLI_NATION_VENEZUELA', '');
INSERT INTO `oli_lu_nation` VALUES (257, 84, 'Viet Nam', 'OLI_NATION_VIETNAM', '');
INSERT INTO `oli_lu_nation` VALUES (258, 284, 'Virgin Islands, British', 'OLI_NATION_BRITISHVIRGINIS', '');
INSERT INTO `oli_lu_nation` VALUES (259, 511, 'Virgin Islands, US', 'OLI_NATION_VIRGINISLANDSUS', '');
INSERT INTO `oli_lu_nation` VALUES (260, 681, 'Wallis and Futuna', 'OLI_NATION_WALLISISLANDS', '');
INSERT INTO `oli_lu_nation` VALUES (261, 1022, 'Western Sahara', 'OLI_NATION_WESTERNSARAHA', '');
INSERT INTO `oli_lu_nation` VALUES (262, 685, 'Western Samoa', 'OLI_NATION_WESTERNSAMOA', 'Use 1013 - Samoa - Name changed in 1998.');
INSERT INTO `oli_lu_nation` VALUES (263, 967, 'Yemen', 'OLI_NATION_YEMEN', '');
INSERT INTO `oli_lu_nation` VALUES (264, 38, 'Yugoslavia', 'OLI_NATION_YUGOSLAVIA', 'Yugoslavia devolved in 1992 into independent constituents: Slovenia, Croatia, Bosnia and Herzegovina, Serbia and Montenegro, and The Former Yugoslav Republic of Macedonia.');
INSERT INTO `oli_lu_nation` VALUES (265, 243, 'Zaire', 'OLI_NATION_ZAIRE', 'Use 271 - Congo, the Democratic Republic of the.');
INSERT INTO `oli_lu_nation` VALUES (266, 260, 'Zambia', 'OLI_NATION_ZAMBIA', '');
INSERT INTO `oli_lu_nation` VALUES (267, 263, 'Zimbabwe', 'OLI_NATION_ZIMBABWE', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_opttype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_opttype`;
CREATE TABLE `oli_lu_opttype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_opttype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_opttype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_opttype
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_opttype` VALUES (1, 1, 'Accelerated Benefit', 'OLI_OPTTYPE_ABE', 'This accelerated benefit rider allows the client to take an advance on the policy\'s death benefit due to long-term, catastrophic, or terminal illness. Also known as living benefits.');
INSERT INTO `oli_lu_opttype` VALUES (2, 153, 'Accelerated Benefit for Cognitive Impairment', 'OLI_OPTTYPE_ABCOGIMP', 'This accelerated benefit rider allows the client to take an advance on the policy\'s death benefit due to a cognitive impairment.');
INSERT INTO `oli_lu_opttype` VALUES (3, 152, 'Accelerated Benefit for Nursing Home Care', 'OLI_OPTTYPE_ABNURSINGHOME', 'This accelerated benefit rider allows the client to take an advance on the policy\'s death benefit for nursing home care.');
INSERT INTO `oli_lu_opttype` VALUES (4, 3, 'Accidental Death and Dismemberment', 'OLI_OPTTYPE_ADD', 'The face amount of a life insurance policy is payable if the insured dies or loses any two limbs or the sight of both eyes as the result of an accident.');
INSERT INTO `oli_lu_opttype` VALUES (5, 2, 'Accidental Death Benefit', 'OLI_OPTTYPE_ADB', 'The face amount of a life insurance policy is payable only if the insured dies as the result of an accident. OR It can be sold as a supplementary death benefit rider that provides for an amount of money in addition to the face amount of a life insurance policy. This additional amount is also payable only if the insured dies as the result of an accident.');
INSERT INTO `oli_lu_opttype` VALUES (6, 43, 'Accidental Death Benefit - Joint Insured Only', 'OLI_OPTTYPE_ADBJOINT', '');
INSERT INTO `oli_lu_opttype` VALUES (7, 126, 'Accounting Benefit', 'OLI_OPTTYPE_ACCOUNTINGBNFT', 'This rider provides a higher cash surrender value on large business cases that meet specified criteria. This rider waives surrender charges for the lifetime of the policy.');
INSERT INTO `oli_lu_opttype` VALUES (8, 74, 'Additional Coverage Scheduled Option', 'OLI_OPTTYPE_ADDSCHED', 'A Rider or Option that allows the policyholder to add additional coverage or buy an additional policy within a scheduled period of time. The exercise of the Rider/Option may or may not require special underwriting business rules based upon the carrier\'s process.');
INSERT INTO `oli_lu_opttype` VALUES (9, 61, 'Adjustable Survivorship Life', 'OLI_OPTTYPE_ADJSURVL', 'Survivorship life coverage that is adjustable');
INSERT INTO `oli_lu_opttype` VALUES (10, 55, 'Affiliation Discount', 'OLI_OPTTYPE_AFFILIATION', 'Provides a discount if the applicant is affiliated or otherwise is eligible for a insurer discount.');
INSERT INTO `oli_lu_opttype` VALUES (11, 47, 'AIDS', 'OLI_OPTTYPE_AIDS', 'This benefit adds the coverage of AIDS and AIDS related diseases to a coverage');
INSERT INTO `oli_lu_opttype` VALUES (12, 103, 'Airbag Benefit', 'OLI_OPTTYPE_AIRBAG', 'An additional benefit is provided if an air bag is deployed for the covered person during the accident.');
INSERT INTO `oli_lu_opttype` VALUES (13, 127, 'Alternate Cash Surrender Value', 'OLI_OPTTYPE_ALTCASHSURRVAL', 'This rider provides Net Surrender Values for the certain percentage range of specified number of years\' premium in highly funded scenarios. Surrender Value prior to a specified anniversary is increased by a percent of cumulative policy loads plus a percentage of surrender charges through a specified policy year.');
INSERT INTO `oli_lu_opttype` VALUES (14, 137, 'Alternative Cash Value Rider', 'OLI_OPTTYPE_ALTCV', 'This rider lowers the base face amount charges of a policy, while increasing the enhanced no-lapse guarantee rider premium.');
INSERT INTO `oli_lu_opttype` VALUES (15, 138, 'Assured Distribution Option', 'OLI_OPTTYPE_ASSUREDDISTOPTION', 'This option guarantees the client a specified stream of distributions from their policy value dependent upon the amount of money in the policy\'s account value.');
INSERT INTO `oli_lu_opttype` VALUES (16, 132, 'Auto Adjust of death benefit for tax exempt status', 'OLI_OPTTYPE_AUTOADJUST', 'Automatic Adjustment of death benefit for tax exempt status.This option allows for the automatic adjustment of the policy value to the minimum amount necessary to maintain the policy tax exempt status.');
INSERT INTO `oli_lu_opttype` VALUES (17, 52, 'Automatic Fixed Percentage Premium Increase', 'OLI_OPTTYPE_AFPPREMINC', 'A contractually agreed increase on the premium payable. This increase percentage if fixed for the period of the contract');
INSERT INTO `oli_lu_opttype` VALUES (18, 4, 'Automatic Increase Option', 'OLI_OPTTYPE_AUTOINC', 'Like cost of living adjustment but is not based on percentage you indicate (e.g. 5%).');
INSERT INTO `oli_lu_opttype` VALUES (19, 51, 'Automatic Index Linked Premium Increase', 'OLI_OPTTYPE_AILPREMINC', 'A contractually agreed increase on the premium payable. This increase is not fixed, but linked to a specified index, i.e. CPI, Stock Exchange indices');
INSERT INTO `oli_lu_opttype` VALUES (20, 70, 'Aviation Exclusion Rider', 'OLI_OPTTYPE_AVIATION', 'An Aviation Exclusion Rider is an addendum that basically makes a policy void should the insured die in an aviation-related accident other than as a fare-paying passenger on a scheduled airline.');
INSERT INTO `oli_lu_opttype` VALUES (21, 19, 'Beneficiary Insurance', 'OLI_OPTTYPE_BENEINSUR', 'Term insurance on a beneficiary.');
INSERT INTO `oli_lu_opttype` VALUES (22, 139, 'Benefit Distribution Rider', 'OLI_OPTTYPE_BDR', 'Allows the policyowner to designate a portion of the policy\'s death benefit proceeds to be paid in specified modal payments.');
INSERT INTO `oli_lu_opttype` VALUES (23, 32, 'Benefit Increase Provision', 'OLI_OPTTYPE_BINCPROV', '');
INSERT INTO `oli_lu_opttype` VALUES (24, 140, 'Benefit Selection Option', 'OLI_OPTTYPE_BSO', 'This option allows the clients to reduce the cost of their policy\'s death benefit by reducing certain charges deducted from the policy.');
INSERT INTO `oli_lu_opttype` VALUES (25, 25, 'Business Value Increase', 'OLI_OPTTYPE_BUSVALUEINC', 'Automatic increase option that is tied to valuation of the business. As the business value goes up, the face amount of policy increases.');
INSERT INTO `oli_lu_opttype` VALUES (26, 39, 'Cash Value Transfer Option', 'OLI_OPTTYPE_CVTRANSFER', 'This is a conversion option to transfer funds from one account to another.');
INSERT INTO `oli_lu_opttype` VALUES (27, 26, 'Change of Insured', 'OLI_OPTTYPE_CHGINS', 'It is used in deferred comp cases (COLI) where a number of executives are covered and you change executives, you can transfer the plan to the other person.');
INSERT INTO `oli_lu_opttype` VALUES (28, 23, 'Charge to Earnings Elimination', 'OLI_OPTTYPE_CHGEARNELIM', 'Should say \'Charge\'. In early years of policy, where cash value would ordinarily be less than cumulative premiums paid. This causes cash value to be equal to cumulative premiums paid.');
INSERT INTO `oli_lu_opttype` VALUES (29, 141, 'Charitable Giving Benefit', 'OLI_OPTTYPE_CHARITY', 'This rider provides an additional death benefit of a specified percentage of the base face amount to a charity designated by the policy owner.');
INSERT INTO `oli_lu_opttype` VALUES (30, 108, 'Childcare Benefit', 'OLI_OPTTYPE_CHILDCARE', '');
INSERT INTO `oli_lu_opttype` VALUES (31, 40, 'Childhood Disease', 'OLI_OPTTYPE_CHILDDISEASE', 'Childhood Disease is a specified disease benefit election for select products that provide protection for childhood diseases as defined in the insurance contract.');
INSERT INTO `oli_lu_opttype` VALUES (32, 78, 'Children\'s Conversion Option', 'OLI_OPTTYPE_EXPCHILD', 'The Children\'s Conversion rider/option allows the policyholder to buy an additional policy for the insured child when the insured child attains the age where they are no longer considered a child (and therefore covered) on the existing policy.');
INSERT INTO `oli_lu_opttype` VALUES (33, 6, 'Children\'s Term Benefit', 'OLI_OPTTYPE_CTB', 'Kind of term insurance that covers all of the children of the insured regardless of age or number. Children do not have to be born at the time policy is taken out for them to be covered. Demographic information about the individual children is not collected.');
INSERT INTO `oli_lu_opttype` VALUES (34, 142, 'Chronic Illness Rider', 'OLI_OPTTYPE_CHRONICILL', 'This accelerated benefit rider allows the client to take an advance on the policy\'s death benefit due to a chronic illness.');
INSERT INTO `oli_lu_opttype` VALUES (35, 143, 'Convalescent Care Benefits Rider', 'OLI_OPTTYPE_CONVALESCARE', 'Accelerates the rider\'s benefit limit for covered long-term care expenses for a specific time period {e.g., 2 years (24 months) or 3 years (36 months)}. The rider\'s benefit limit is equal to the specified amount of coverage which the insured selects at issue.');
INSERT INTO `oli_lu_opttype` VALUES (36, 5, 'Cost of Living Increase or inflation guard', 'OLI_OPTTYPE_COLI', 'Tied to government index, usually CPI.');
INSERT INTO `oli_lu_opttype` VALUES (37, 57, 'Critical illness premium waiver', 'OLI_OPTTYPE_WPCRIT', 'Covers cost of the policy contributions in the event of the principal insured becoming severely ill.');
INSERT INTO `oli_lu_opttype` VALUES (38, 50, 'Death, Disability or Critical Illness', 'OLI_OPTTYPE_DBDISCRITILL', 'Payment of the Coverage Sum Assured will happen in the event of Death, Disability or Critical Illness');
INSERT INTO `oli_lu_opttype` VALUES (39, 48, 'Death Benefit', 'OLI_OPTTYPE_DB', 'Payment of the Coverage Sum Assured will happen in the event of death');
INSERT INTO `oli_lu_opttype` VALUES (40, 144, 'Death Benefit Guarantee', 'OLI_OPTTYPE_DEATHBENGUAR', 'This rider ensures that a policy will not lapse before the Insured attains a specified age if premiums paid equal or exceed the death benefit guarantee premium requirement.');
INSERT INTO `oli_lu_opttype` VALUES (41, 33, 'Default Premium Payment Option', 'OLI_OPTTYPE_DEFPAYMNT', '');
INSERT INTO `oli_lu_opttype` VALUES (42, 64, 'Designate Second Life', 'OLI_OPTTYPE_DSL', 'Benefit that allows owner to designate a second life on the policy');
INSERT INTO `oli_lu_opttype` VALUES (43, 7, 'Disability Benefit', 'OLI_OPTTYPE_DIB', 'A feature added to some life insurance policies providing for waiver of premium and sometimes payment of monthly income, if the policyholder becomes totally and permanently disabled.');
INSERT INTO `oli_lu_opttype` VALUES (44, 49, 'Disability or Critical Illness', 'OLI_OPTTYPE_DISCRITILL', 'Payment of the Coverage Sum Assured will happen in the event of disability or critical illness.');
INSERT INTO `oli_lu_opttype` VALUES (45, 105, 'Disappearance', 'OLI_OPTTYPE_DISAPP', 'Benefits are provided in the event that person is declared legally dead following a disappearance.');
INSERT INTO `oli_lu_opttype` VALUES (46, 18, 'Double/Triple Indemnity', 'OLI_OPTTYPE_DBLINDEM', 'Double: An additional accidental death benefit that is equal to the face amount of the life insurance policy. Triple: A type of additional accidental death benefit coverage that pays an additional benefit equal to twice the policy\'s basic death benefit if the accident is sustained while the insured is a passenger in a public conveyance operated by a licensed common carrier, such as a bus, train, or airplane.');
INSERT INTO `oli_lu_opttype` VALUES (47, 145, 'Downside Protection Rider', 'OLI_OPTTYPE_DOWNSIDEPROTECT', 'This rider provides protection from extended market losses, protection from policy lapse and minimum death benefit up to specific age.');
INSERT INTO `oli_lu_opttype` VALUES (48, 101, 'Dread Disease', 'OLI_OPTTYPE_DRDISEASE', 'A defined percentage of the coverage amount is paid as a lump sum if the life insured is diagnosed with any of a range of defined diseases or medical conditions.');
INSERT INTO `oli_lu_opttype` VALUES (49, 35, 'Enhanced Accidental Death Benefit', 'OLI_OPTTYPE_ADC', 'Accidental Death Benefit with extra benefit for accident on a common carrier (i.e. an airline, taxi, etc.).');
INSERT INTO `oli_lu_opttype` VALUES (50, 38, 'Enhanced Cash Value Option', 'OLI_OPTTYPE_ENHANCEDCV', 'Provides an enhanced first year cash surrender value if certain premium requirements are met.');
INSERT INTO `oli_lu_opttype` VALUES (51, 128, 'Enhanced Death Benefit', 'OLI_OPTTYPE_ENHCDDTHBNFT', 'Modifies the death benefit to be equal to or higher than what is required to qualify as life insurance. The Death benefit is modified to be at a higher percentage, based on age.');
INSERT INTO `oli_lu_opttype` VALUES (52, 146, 'Estate Preservation Rider', 'OLI_OPTTYPE_ESTATEPRESERVE', 'Provides extra non-convertible coverage during a specified period for future estate tax liability that may be incurred when an existing life insurance policy is transferred to an irrevocable trust.');
INSERT INTO `oli_lu_opttype` VALUES (53, 22, 'Estate Protection', 'OLI_OPTTYPE_ESTATEPROT', 'The preparation of a plan of administration and disposition of one\'s property before or after death including will, trusts, gifts, power of attorney, etc.');
INSERT INTO `oli_lu_opttype` VALUES (54, 147, 'Estate Tax Repeal Rider', 'OLI_OPTTYPE_ESTATETAXREPEAL', 'This rider permits the policyowner to terminate the policy without charge if the federal estate tax imposed under the Internal Revenue Code or any similar body of law is repealed.');
INSERT INTO `oli_lu_opttype` VALUES (55, 65, 'Exchange of Insured Option', 'OLI_OPTTYPE_EXCIO', 'Option to exchange the insured on the policy');
INSERT INTO `oli_lu_opttype` VALUES (56, 8, 'Exchange Provision', 'OLI_OPTTYPE_EXCHANGE', 'Provides ability to exchange this policy for a different one (e.g. a term policy for a permanent policy) without submitting evidence for insurability.');
INSERT INTO `oli_lu_opttype` VALUES (57, 28, 'Extended Maturity', 'OLI_OPTTYPE_EXTMATURITY', 'If person lives past the maturity date, it allows you to extend the maturity of the policy past that date.');
INSERT INTO `oli_lu_opttype` VALUES (58, 31, 'Extension of Benefit Option', 'OLI_OPTTYPE_EXTBO', '');
INSERT INTO `oli_lu_opttype` VALUES (59, 135, 'Extension of Conversion Period Option', 'OLI_OPTTYPE_ECPO', 'Extension of Conversion Period Option - If elected, extends the conversion privilege to equal the level premium paying period chosen for the policy, giving the policyowner a greater opportunity to take advantage of the valuable conversion privilege and upgrade to permanent cash value insurance. Issue ages limits may apply.');
INSERT INTO `oli_lu_opttype` VALUES (60, 77, 'Extra Protection Option', 'OLI_OPTTYPE_EXPEXTRA', 'A Rider or Option on a Coverage which is available until the insured reaches an age specified in the policy documentation. This Option allows the policyholder to add additional coverage or buy an additional policy until he/she reaches the agreed upon age. The exercise of the Rider/Option may or may not require special underwriting business rules based upon the carrier\'s process.');
INSERT INTO `oli_lu_opttype` VALUES (61, 123, 'Family Benefit', 'OLI_OPTTYPE_FAMILY', 'This type of option provides life insurance coverage on the insured\'s family, including spouse and children. The coverage provided through such an option is term insurance and is often sold on the basis of coverage units and does not vary by actual number of individuals covered. Coverage on the child expires when the child reaches a specified age. Future children are automatically insured after birth, legal adoption, legal guardianship, etc. depending on policy provisions.Family options include the privilege to convert the term part of the contract to permanent insurance, this insurance on dependents will become paid up when the primary insured dies, and there is a decrease in the premium and/or automatic increase in the amount of insurance on the primary insured if his or her spouse dies first.');
INSERT INTO `oli_lu_opttype` VALUES (62, 84, 'Female Add-On Benefit', 'OLI_OPTTYPE_FEMDRDDISEASE', 'Covers specific female dread diseases or impairments. It will pay out if diagnosed with one of those diseases or impairments in a lump sum.');
INSERT INTO `oli_lu_opttype` VALUES (63, 116, 'Functional Impairment', 'OLI_OPTTYPE_FUNCIMP', 'Pays in the event of specified functional impairments.');
INSERT INTO `oli_lu_opttype` VALUES (64, 100, 'Funeral Benefit', 'OLI_OPTTYPE_FUNERAL', 'The specified Funeral Benefit amount forms part of the death benefit available to a beneficiary who has been nominated by the policyholder.');
INSERT INTO `oli_lu_opttype` VALUES (65, 109, 'Group to Individual Policy Conversion', 'OLI_OPTTYPE_LIFECONV', 'A group policy benefit can be converted to an individual policy');
INSERT INTO `oli_lu_opttype` VALUES (66, 66, 'Guaranteed Insurance Option', 'OLI_OPTTYPE_GUARIR', 'Additional life insurance purchased that has been issued on a guaranteed basis');
INSERT INTO `oli_lu_opttype` VALUES (67, 136, 'Guaranteed Issue Option at specified Life Events', 'OLI_OPTTYPE_GRNTEISSUE', 'An Option that allows the policyholder to add additional coverage or buy an additional policy at life events specified in the policy without the need to produce evidence of insurability or health, except for a negative HIV test.');
INSERT INTO `oli_lu_opttype` VALUES (68, 76, 'Guaranteed Issue Option due to Birth or Adoption', 'OLI_OPTTYPE_ADDCHILD', 'A Rider or Option that allows the policyholder to add additional coverage or buy an additional policy in the event that the policyholder\'s family increases by birth or adoption of a child or children. The exercise of the Rider/Option may or may not require special underwriting business rules based upon the carrier\'s process.');
INSERT INTO `oli_lu_opttype` VALUES (69, 75, 'Guaranteed Issue Option due to Marriage', 'OLI_OPTTYPE_ADDMARR', 'A Rider or Option that allows the policyholder to add additional coverage or buy an additional policy in the event that the policyholder gets married. The exercise of the Rider/Option may or may not require special underwriting business rules based upon the carrier\'s process.');
INSERT INTO `oli_lu_opttype` VALUES (70, 148, 'Healthy Engagement Rider', 'OLI_OPTTYPE_HEALTHY', 'This rider provides an opportunity for the policy value to earn rider credits based on healthy actions taken by the insured each year through a specified age.');
INSERT INTO `oli_lu_opttype` VALUES (71, 37, 'HIV Accelerated Benefit Option', 'OLI_OPTTYPE_HIV', 'Accelerated benefit rider which pays a portion of death benefit while living, but only in the case of HIV illness.');
INSERT INTO `oli_lu_opttype` VALUES (72, 87, 'Hospice Care', 'OLI_OPTTYPE_HOSPICECARE', 'A rider available for care that is intended to provide comfort for the terminal patient and support for their family.');
INSERT INTO `oli_lu_opttype` VALUES (73, 82, 'Hospital Benefit', 'OLI_OPTTYPE_HOSP', 'Covers in the event of the insured being hospitalized, but is linked to the insured amount, not to the amount of hospitalization expenses incurred by the insured');
INSERT INTO `oli_lu_opttype` VALUES (74, 131, 'Joint Last to Die Payment on First Death', 'OLI_OPTTYPE_JOINTPAY', 'The election of the percentage of policy value to be paid to the surviving insured when the first joint insured dies.');
INSERT INTO `oli_lu_opttype` VALUES (75, 114, 'Known and Unknown', 'OLI_OPTTYPE_CATCHALL', 'Covers all known and unknown, serious and permanent medical or physical conditions (lump  sum benefit)');
INSERT INTO `oli_lu_opttype` VALUES (76, 20, 'Living Needs Benefit', 'OLI_OPTTYPE_LIVNEEDS', 'This accelerated benefit rider allows the client to take an advance on the policy\'s death benefit due to long-term, catastrophic, or terminal illness. Also known as accelerated death benefits.');
INSERT INTO `oli_lu_opttype` VALUES (77, 30, 'Long Term Care Accelerated Benefit Option', 'OLI_OPTTYPE_LTCABO', '');
INSERT INTO `oli_lu_opttype` VALUES (78, 42, 'Long Term Care Non-forfeiture', 'OLI_OPTTYPE_LTCNONFOR', 'An optional benefit that provides continued (extended) benefits for a shortened duration or a cash refund if a policy lapses after it has been in force for a specified number of years.');
INSERT INTO `oli_lu_opttype` VALUES (79, 121, 'Loyalty Discount', 'OLI_OPTTYPE_LOYALTY', '');
INSERT INTO `oli_lu_opttype` VALUES (80, 119, 'Marital Discount', 'OLI_OPTTYPE_MARITAL', 'This discount applies because the individual is married. This is different then Spousal Discount which applies because both spouses are applying together.');
INSERT INTO `oli_lu_opttype` VALUES (81, 41, 'Maternity', 'OLI_OPTTYPE_MATERNITY', 'Maternity is an income protection benefit that covers loss of income and/or defined medical expenses due to a woman\'s pregnancy.');
INSERT INTO `oli_lu_opttype` VALUES (82, 46, 'Medical aid premium waiver', 'OLI_OPTTYPE_WPMED', 'Covers cost of medical aid contributions in the event of the principal insured becoming severely ill, disabled or dies');
INSERT INTO `oli_lu_opttype` VALUES (83, 117, 'Military Aviation', 'OLI_OPTTYPE_MILITARYAVIATION', 'Used to identify whether or not an aviation extra is charged for coverage as the result of the insured\'s military flying. May also be used under Exclusion to identify that an insured is specifically not covered in the event of death related to military flying.');
INSERT INTO `oli_lu_opttype` VALUES (84, 9, 'No Lapse Guarantee Option', 'OLI_OPTTYPE_NOLAPSE', 'An agreement by the insurance company to keep the Universal Life Insurance in force, even if the Cash Value becomes zero or less than zero, provided that a specified Minimum Continuation Premium is made at the required time.');
INSERT INTO `oli_lu_opttype` VALUES (85, 83, 'Occupation Specific Disability Benefit', 'OLI_OPTTYPE_DISSIMOCC', 'Benefit pays in the event of own occupation disability (Permanent Incapacity). This applies to disability payments in event of being unable to exercise own occupation.');
INSERT INTO `oli_lu_opttype` VALUES (86, 36, 'Option to Purchase Add\'l Ins Underwriting Req\'d', 'OLI_OPTTYPE_FTO', 'Option to Purchase Additional Insurance, but some underwriting is still required. If accepted, the increased coverage will be issued at the original issue age, not the current attained age.');
INSERT INTO `oli_lu_opttype` VALUES (87, 10, 'Option to Purchase Additional Insurance', 'OLI_OPTTYPE_OPAI', 'Guaranteed insurability rider – has option to increase face amount without evidence of insurability at certain intervals.');
INSERT INTO `oli_lu_opttype` VALUES (88, 34, 'Option to Purchase Paid-Up Additions', 'OLI_OPTTYPE_OPPUA', '');
INSERT INTO `oli_lu_opttype` VALUES (89, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_opttype` VALUES (90, 122, 'Overloan Protection Rider', 'OLI_OPTTYPE_OPR', 'The Overloan Protection Rider offers a level of protection to policyholders against lapsing their policy due to excess policy debt. The benefit is specifically designed for clients who take substantial loans. May also be referred to as \"Overload Protection Rider.\"');
INSERT INTO `oli_lu_opttype` VALUES (91, 11, 'Payor Death Benefit', 'OLI_OPTTYPE_PAYORDB', 'This option waives the premium if the policy\'s payor dies. This rider is typically offered to traditional products whose insured is a juvenile.');
INSERT INTO `oli_lu_opttype` VALUES (92, 12, 'Payor Disability', 'OLI_OPTTYPE_PAYORDI', 'This option waives the premium if the policy\'s payor (as opposed to insured) becomes disabled. This rider is typically offered to traditional products whose insured is a juvenile.');
INSERT INTO `oli_lu_opttype` VALUES (93, 81, 'Permanent or Partial Incapacity', 'OLI_OPTTYPE_PPINC', 'Combination benefit that covers permanent and or partial incapacitation.');
INSERT INTO `oli_lu_opttype` VALUES (94, 13, 'Persistency Bonus Option', 'OLI_OPTTYPE_PERSIST', 'If you keep the policy for some minimum number of years, insurance company will give you some \'kick in\' - typically an interest kicker as a bonus.');
INSERT INTO `oli_lu_opttype` VALUES (95, 115, 'Physical Impairment', 'OLI_OPTTYPE_PHYSIMP', 'Provides cover for physical impairments in the event of diagnosis or occurrence of such impairments, and subject to any applicable waiting period.');
INSERT INTO `oli_lu_opttype` VALUES (96, 15, 'Policy Split Option', 'OLI_OPTTYPE_SPLIT', 'Divorce option, joint survivorship policy – if you get divorced, both spouses have option of converting it into 2 single life policies without proving insurability and incurring surrender charges.');
INSERT INTO `oli_lu_opttype` VALUES (97, 125, 'Pool of Money', 'OLI_OPTTYPE_POOLOFMONEY', 'A maximum dollar amount established for the policy which defines the cumulative limit for benefits to be paid based on carrier rules. Commonly, the amount of the pool is established by benefit amount multiplied by benefit time period.');
INSERT INTO `oli_lu_opttype` VALUES (98, 110, 'Portability of Health Coverage', 'OLI_OPTTYPE_PORT', 'Complies with requirements of HIPAA. The Health Insurance Portability and Accountability Act (HIPAA) provides rights and protections for participants and beneficiaries in group health plans. HIPAA includes protections for coverage under group health plans that limit exclusions for preexisting conditions; prohibit discrimination against employees and dependents based on their health status; and allow a special opportunity to enroll in a new plan to individuals in certain circumstances. HIPAA may also give you a right to purchase individual coverage if you have no group health plan coverage available, and have exhausted COBRA or other continuation coverage.');
INSERT INTO `oli_lu_opttype` VALUES (99, 14, 'Premium Guarantee Option', 'OLI_OPTTYPE_PGO', 'The premium will remain the same – neither increase nor decrease.');
INSERT INTO `oli_lu_opttype` VALUES (100, 151, 'Premium Holiday (Waiver)', 'OLI_OPTTYPE_PREMHOLIDAY', 'The Premium Holiday is a benefit that allows the Contracting Party to miss a premium during times of financial difficulty such as retrenchment, unemployment, maternity leave and study leave.');
INSERT INTO `oli_lu_opttype` VALUES (101, 149, 'Premium Reserve Rider', 'OLI_OPTTYPE_PREMRESERVE', 'This rider allows the client to pay premiums in addition to those paid for the policy and have these amounts accumulate in the same manner as the policy without being subject to all charges and expenses of the policy.');
INSERT INTO `oli_lu_opttype` VALUES (102, 44, 'Premium Waiver - Joint Insured Only', 'OLI_OPTTYPE_WPJOINT', '');
INSERT INTO `oli_lu_opttype` VALUES (103, 53, 'Pre-Pay Discount', 'OLI_DISCOUNT_PREPAY', 'Provides a discount if some portion of future premiums are pre-paid along with the initial premium.');
INSERT INTO `oli_lu_opttype` VALUES (104, 88, 'Presumptive Disability for a Specific Loss', 'OLI_OPTTYPE_PRESUMPTDISABLE', 'An option available which indicates that the parent rider or coverage, which covers a specific loss, provides a presumption of disability even if the covered individual is still working after the loss. The presumption of disability option causes the claim to be paid if the loss is suffered regardless of actual disability.');
INSERT INTO `oli_lu_opttype` VALUES (105, 45, 'PVT Met Values Plus Option', 'OLI_OPTTYPE_VALUESPLUS', 'Values Plus is an option that can be added to a Life Policy to ensure that another carrier\'s policy\'s cash values can be \"rolled into\" this Life Policy');
INSERT INTO `oli_lu_opttype` VALUES (106, 58, 'Qualified Adult Discount', 'OLI_OPTTYPE_QUALADLT', 'Provides a discount if a \"qualified adults\" apply together for policies. Qualified Adult is a person of the same or opposite sex who meets all the criteria listed below.1) He or she is over the age of 18.2) He or she has lived with you for at least 12 months.3) He or she has a serious and committed relationship with you.4) He or she is not legally married nor a Domestic Partner to anyone else.5) He or she is financially interdependent with you Financially interdependent means that you and this person are jointly responsible for the cost of food and housing');
INSERT INTO `oli_lu_opttype` VALUES (107, 24, 'Relaxation of Minimum Premium', 'OLI_OPTTYPE_RELAXMINPREM', 'Allows policyholder to pay less than administrative minimum premium. A minimum cash value is required before this option will be supported. Generally has a time frame associated with it.');
INSERT INTO `oli_lu_opttype` VALUES (108, 107, 'Repatriation of Remains', 'OLI_OPTTYPE_REMAINS', 'Covers the costs of logistics of preparing and returning your remains to desired location');
INSERT INTO `oli_lu_opttype` VALUES (109, 133, 'Respread option for joint/multi-life on 1st death', 'OLI_OPTTYPE_RESPREAD', 'Respread or reallocation option for joint/multiple life coverages on first death.This option allows the owner to exercise at the first death of the lives insured, additional insurance coverage on each of the surviving lives insured equal to the amount of the death benefit on the first life, without providing evidence of insurability.');
INSERT INTO `oli_lu_opttype` VALUES (110, 134, 'Retrenchment', 'OLI_OPTTYPE_RETRENCH', 'An income replacement type benefit should the client become retrenched from his job (unemployed).This benefit is sold as a standalone OR it can be sold as a supplementary benefit.');
INSERT INTO `oli_lu_opttype` VALUES (111, 118, 'Return of Premium - End of Specified Term', 'OLI_OPTTYPE_ROPT', 'As defined by the contract, Return of Premium provides for the return of eligible premiums at the end of a defined period, if the insured is still living and the policy is in force.');
INSERT INTO `oli_lu_opttype` VALUES (112, 21, 'Return of Premium - on Death', 'OLI_OPTTYPE_COSTREC', 'Term insurance rider whose death benefit is equal to the eligible cumulative premiums paid to the policy purpose being if a person dies in any given year, you get back all the premiums. Also known as Cost Recovery.');
INSERT INTO `oli_lu_opttype` VALUES (113, 154, 'Return of Premium - on First Death', 'OLI_OPTTYPE_COSTREC1ST', 'For joint life policies, the eligible cumulative premium is returned upon the death of the first person. Also known as Cost Recovery.');
INSERT INTO `oli_lu_opttype` VALUES (114, 155, 'Return of Premium - on Second Death', 'OLI_OPTTYPE_COSTREC2ND', 'For joint life policies, the eligible cumulative premium is returned upon the death of the second person. Also known as Cost Recovery.');
INSERT INTO `oli_lu_opttype` VALUES (115, 29, 'Return of Premium - on Surrender', 'OLI_OPTTYPE_MBGUAR', 'On a full surrender, the return of eligible premiums (initial, unplanned, and any Benefit Increase premiums). Also known as Money Back Guarantee.');
INSERT INTO `oli_lu_opttype` VALUES (116, 27, 'Salary Increase', 'OLI_OPTTYPE_SALINCREASE', 'In the case of life insurance, this is a form of automatic increase option that is tied to multiple of insured\'s salary.');
INSERT INTO `oli_lu_opttype` VALUES (117, 102, 'Seatbelt Benefit', 'OLI_OPTTYPE_SEATBELT', 'An additional benefit is provided if a seatbelt was used for the covered person during the accident.');
INSERT INTO `oli_lu_opttype` VALUES (118, 54, 'Select Health Discount', 'OLI_OPTTYPE_SELECTHEALTH', 'Provides a discount if the applicant qualifies for the carriers definition of select or good health.');
INSERT INTO `oli_lu_opttype` VALUES (119, 120, 'Small Business Discount', 'OLI_OPTTYPE_SMALLBUS', '');
INSERT INTO `oli_lu_opttype` VALUES (120, 56, 'Spousal Discount', 'OLI_OPTTYPE_SPOUSAL', 'Provides a discount if a couple applies together for policies.');
INSERT INTO `oli_lu_opttype` VALUES (121, 111, 'Suicide', 'OLI_OPTTYPE_SUICIDE', 'Benefits provided in the event of suicide.');
INSERT INTO `oli_lu_opttype` VALUES (122, 80, 'Suicide Clause', 'OLI_OPTTYPE_SUICIDECLAUSE', 'Death attributed to suicide is not covered by some policies for a certain period of time');
INSERT INTO `oli_lu_opttype` VALUES (123, 129, 'Surrender Charge Adjustment', 'OLI_OPTTYPE_SURRCHARGEADJ', 'This rider provides a reduction of surrender charges in a carrier defined or optionally selected number of Policy Years. In some cases the surrender charge listed in the contract is multiplied by a percentage that is based on the policy year in which the surrender occurs.');
INSERT INTO `oli_lu_opttype` VALUES (124, 130, 'Surrender Value Enhancement', 'OLI_OPTTYPE_SURRVALUEENHANCE', 'This rider enhances the policy\'s net surrender value. This is commonly done by crediting a portion of cumulative premiums paid and by reducing the surrender charges. The benefit may be only available upon full surrender of the policy and the rider requires a minimum premium.');
INSERT INTO `oli_lu_opttype` VALUES (125, 79, 'Surviving Insured Conversion', 'OLI_OPTTYPE_SURJTTERM', 'The Surviving Insured Conversion rider/option allows the surviving insured on a joint policy to convert that policy to an individual policy after the death of the other joint insured.');
INSERT INTO `oli_lu_opttype` VALUES (126, 67, 'Survivorship Additional Benefit', 'OLI_OPTTYPE_SURVAB', 'Retirement income benefit of survivor of an insured individual');
INSERT INTO `oli_lu_opttype` VALUES (127, 68, 'Survivorship Insurance Rider', 'OLI_OPTTYPE_SURVIR', 'Death benefit paid after all insureds dieFor reinsurance messages, the LREACT mappings treat the base coverage as the policy with all riders being sent as options on the base coverage. Thus, certain codes that are traditionally riders are needed as options.');
INSERT INTO `oli_lu_opttype` VALUES (128, 150, 'Terminal Illness Rider', 'OLI_OPTTYPE_TERMINALILL', 'This accelerated benefit rider allows the client to take an advance on the policy\'s death benefit due to a terminal illness.');
INSERT INTO `oli_lu_opttype` VALUES (129, 113, 'Terrorism Benefit', 'OLI_OPTTYPE_TERROR', '');
INSERT INTO `oli_lu_opttype` VALUES (130, 104, 'Travel Assistance Program', 'OLI_OPTTYPE_TRAVEL', '');
INSERT INTO `oli_lu_opttype` VALUES (131, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_opttype` VALUES (132, 16, 'Waiver of Monthly Deductions (WMD)', 'OLI_OPTTYPE_WMD', 'In flexible premium policies, the WMD rider causes the monthly deductions of the policy to be waived upon the disability of the primary insured.The WMD rider also keeps no lapse guarantee provisions in effect.');
INSERT INTO `oli_lu_opttype` VALUES (133, 17, 'Waiver of Premium', 'OLI_OPTTYPE_WP', 'A provision that sets certain conditions under which an insurance policy will be kept in full force by the company without the payment of premiums. It is used most frequently for those policyholders that become totally and permanently disabled but may be available in certain other cases.ORThe waiver of premium rider provides that the insurance company will not collect premiums for a period of time during which the insured is disabled.This type of rider is typically used for products that have a fixed premium structure such as traditional whole life or term.');
INSERT INTO `oli_lu_opttype` VALUES (134, 124, 'Waiver of Surr Chrgs on Nursing Home Confinement', 'OLI_OPTTYPE_WSCNH', 'The benefit provides that if the insured is confined to a nursing home or similar facility by a physician and requests a withdrawal from his/her policy, the surrender charge, if any, and withdrawal charge will be waived for that withdrawal (assuming all other business criteria have been met).No charges will be waived under this benefit resulting from a decrease in the basic insurance amount or a change on the type of death benefit.');
INSERT INTO `oli_lu_opttype` VALUES (135, 112, 'War Risk', 'OLI_OPTTYPE_WAR', '');
INSERT INTO `oli_lu_opttype` VALUES (136, 106, 'Worksite modification', 'OLI_OPTTYPE_WORKSITE', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_orgform
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_orgform`;
CREATE TABLE `oli_lu_orgform` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_orgform_value_unique` (`value`),
  UNIQUE KEY `oli_lu_orgform_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_orgform
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_orgform` VALUES (1, 13, '\"C\" Corporation', 'OLI_ORG_CTP', 'A business which is a completely separate entity from its owners, unlike a partnership.');
INSERT INTO `oli_lu_orgform` VALUES (2, 6, '\"S\" Corporation', 'OLI_ORG_STP', 'A form of corporation, allowed by the IRS for most companies with 75 or fewer shareholders, which enables the company to enjoy the benefits of incorporation but be taxed as if it were a partnership. also called Subchapter S Corporation.');
INSERT INTO `oli_lu_orgform` VALUES (3, 10, 'Association', 'OLI_ORG_ASSOC', 'A group of individuals who meet for a common purpose.');
INSERT INTO `oli_lu_orgform` VALUES (4, 11, 'Charitable Organization', 'OLI_ORG_CHARIT', 'A tax-exempt organization recognized by the IRS as a charity.');
INSERT INTO `oli_lu_orgform` VALUES (5, 19, 'Closed Corporation', 'OLI_ORG_CLOSECORP', 'A corporation in which all of the voting stock is held by a few shareholders, such as management or family members. also called private company.');
INSERT INTO `oli_lu_orgform` VALUES (6, 23, 'Corporation (general)', 'OLI_ORG_CORPORATION', 'This is used when nothing is known about the form of corporation, otherwise the correct type should be used');
INSERT INTO `oli_lu_orgform` VALUES (7, 27, 'Credit Union', 'OLI_ORG_CREDITUNION', '');
INSERT INTO `oli_lu_orgform` VALUES (8, 24, 'Estate', 'OLI_ORG_ESTATE', '');
INSERT INTO `oli_lu_orgform` VALUES (9, 15, 'Franchise', 'OLI_ORG_FRANCHISE', 'A form of business organization in which a firm which already has a successful product or service (the franchisor) enters into a continuing contractual relationship with other businesses (franchisees) operating under the franchisor\'s trade name and usually with the franchisor\'s guidance, in exchange for a fee.');
INSERT INTO `oli_lu_orgform` VALUES (10, 9, 'Government Agency', 'OLI_ORG_GOVERN', 'An administrative unit of government. Examples include \"the Central Intelligence Agency\"; \"the Census Bureau\"; \"Office of Management and Budget\";\"Tennessee Valley Authority\".');
INSERT INTO `oli_lu_orgform` VALUES (11, 22, 'Internal', 'OLI_ORG_INTERNAL', '');
INSERT INTO `oli_lu_orgform` VALUES (12, 14, 'Limited Liability Company (LLC)', 'OLI_ORG_LTDLIAB', 'LLC (Limited Liability Company). A type of company whose owners and managers receive the limited liability and (usually) tax benefits of an S Corporation without having to conform to the S corporation restrictions.');
INSERT INTO `oli_lu_orgform` VALUES (13, 30, 'Limited Liability Limited Partnership (LLLP)', 'OLI_ORG_LTDLIABLTDPARTNER', 'Limited Liability Limited Partnership (LLLP) is a type of Limited Partnership in which both general and limited partners are protected from liabilities of the partnership such as occurs when the partnership is exposed to a lawsuit. It also provides asset protection for the partnership\'s assets when the partners are sued personally.');
INSERT INTO `oli_lu_orgform` VALUES (14, 29, 'Limited Liability Partnership (LLP)', 'OLI_ORG_LTDLIABPARTNER', 'Limited Liability Partnership (LLP) is a type of General Partnership in which each of the partners shares in the profits, losses, and debts of the LLP. In an LLP, a partner is not responsible or liable for another partner\'s misconduct or negligence. It therefore exhibits elements of both partnerships and corporations.');
INSERT INTO `oli_lu_orgform` VALUES (15, 3, 'Limited Partnership (LP)', 'OLI_ORG_LTDPART', 'Limited Partnership (LP) is a business organization with one or more general partners, who manage the business and assume legal debts and obligations, and one or more limited partners, who are liable only to the extent of their investments. Limited partners also enjoy rights to the partnership\'s cash flow, but are not liable for company obligations.');
INSERT INTO `oli_lu_orgform` VALUES (16, 18, 'Mutual Company', 'OLI_ORG_MUTCO', 'A company whose profits are distributed in proportion to the amount of business each participant does with the company. Examples include federal savings and loan associations, state-chartered mutual savings banks, and mutual insurance companies.');
INSERT INTO `oli_lu_orgform` VALUES (17, 12, 'Nonprofit Organization', 'OLI_ORG_NONPROF', 'An incorporated organization which exists for educational or charitable reasons, and from which its shareholders or trustees do not benefit financially. also called not-for-profit organization.');
INSERT INTO `oli_lu_orgform` VALUES (18, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_orgform` VALUES (19, 2, 'Partnership', 'OLI_ORG_PARTNER', 'A partnership is the relationship existing between two or more persons who join to carry on a trade or business. Each person contributes money, property, labor, or skill, and expects to share equally in the profits and losses or liabilities of the business. The partnership itself does not pay income taxes, but each partner has to report their share of business profits or losses on their individual tax return.');
INSERT INTO `oli_lu_orgform` VALUES (20, 8, 'Personal Services Corp.', 'OLI_ORG_PERSERV', 'A business whose principal activity is the performance of personal services. The fields of health, law, engineering, architecture, accounting, actuarial sciences, performing arts, and consulting are examples of personal service activities.');
INSERT INTO `oli_lu_orgform` VALUES (21, 17, 'Plan', 'OLI_LU_ORGPLAN', 'A Plan is a unique type of legal organization which is similar to (but *is not* the same as) a Trust. A Plan has specific requirements with regard to the charter and provisions, based on the reason for incorporation (the type of pension plan for which the Plan entity is being established).');
INSERT INTO `oli_lu_orgform` VALUES (22, 25, 'Plan Administrator', 'OLI_LU_ORGPLANADM', 'A plan administrator is the entity or group of entities specified as the administrator by the instrument under which the plan is operated.');
INSERT INTO `oli_lu_orgform` VALUES (23, 4, 'Private Corporation', 'OLI_ORG_PRVCORP', 'A company whose shares are not traded on the open market. opposite of public company. Often referred to as Privately Held.');
INSERT INTO `oli_lu_orgform` VALUES (24, 7, 'Professional Corporation', 'OLI_ORG_PROCORP', 'Corporation which is organized for the purpose of engaging in a learned profession such as law, medicine or architecture. Professional Corporations must file articles of incorporation with the state which meet the state\'s requirements for professional corporations.');
INSERT INTO `oli_lu_orgform` VALUES (25, 20, 'Pty. Ltd.', 'OLI_ORG_PTYLTD', '');
INSERT INTO `oli_lu_orgform` VALUES (26, 5, 'Public Corporation', 'OLI_ORG_PUBCORP', 'A company which has issued securities through an offering, and which are now traded on the open market. also called publicly held or publicly traded. Opposite of private company.');
INSERT INTO `oli_lu_orgform` VALUES (27, 26, 'Religious Organization', 'OLI_ORG_RELIGIOUSORG', 'IRC 501(d) As defined by the Internal Revenue Service, an organization which was organized for the purpose of operating a communal religious community.');
INSERT INTO `oli_lu_orgform` VALUES (28, 1, 'Sole Proprietorship', 'OLI_ORG_SOLEP', 'A sole proprietorship is an unincorporated business that is owned by one individual. It is the simplest form of business organization to start and maintain. The business has no existence apart from the owner. Its liabilities are the owner\'s personal liabilities. He undertakes the risks of the business for all assets owned, whether used in the business or personally owned, and includes the income and expenses of the business on his tax return.');
INSERT INTO `oli_lu_orgform` VALUES (29, 21, 'Superannuation Fund', 'OLI_ORG_SUPERANN', 'A concessionally taxed investment fund for superannuation monies. These funds can accept both ETPs and other contributions. Generally balances cannot be withdrawn until age 55 and fully retired. These can be run by an employer as a company fund, a fund manager as a personal fund or can be self managed by an individual.');
INSERT INTO `oli_lu_orgform` VALUES (30, 16, 'Trust', 'OLI_ORG_TRUST', 'Organization which acts as a fiduciary, trustee or agent for individuals and businesses in the administration of trust funds, estates and custodial arrangements.');
INSERT INTO `oli_lu_orgform` VALUES (31, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_partfreq
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_partfreq`;
CREATE TABLE `oli_lu_partfreq` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_partfreq_value_unique` (`value`),
  UNIQUE KEY `oli_lu_partfreq_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_partfreq
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_partfreq` VALUES (1, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_partfreq` VALUES (2, 1, 'Per day', 'OLI_USAGEFREQ_PERDAY', '');
INSERT INTO `oli_lu_partfreq` VALUES (3, 7, 'Per Lifetime', 'OLI_USAGEFREQ_PERLIFETIME', 'Used to specify a time period extending for the entire lifetime of a person.');
INSERT INTO `oli_lu_partfreq` VALUES (4, 3, 'Per month', 'OLI_USAGEFREQ_PERMONTH', '');
INSERT INTO `oli_lu_partfreq` VALUES (5, 2, 'Per week', 'OLI_USAGEFREQ_PERWEEK', '');
INSERT INTO `oli_lu_partfreq` VALUES (6, 4, 'Per year', 'OLI_USAGEFREQ_PERYEAR', '');
INSERT INTO `oli_lu_partfreq` VALUES (7, 6, 'Random', 'OLI_USAGEFREQ_RANDOM', '');
INSERT INTO `oli_lu_partfreq` VALUES (8, 5, 'Single', 'OLI_USAGEFREQ_SINGLE', '');
INSERT INTO `oli_lu_partfreq` VALUES (9, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_paymethod
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_paymethod`;
CREATE TABLE `oli_lu_paymethod` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_paymethod_value_unique` (`value`),
  UNIQUE KEY `oli_lu_paymethod_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_paymethod
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_paymethod` VALUES (1, 15, 'Automatic Premium Loan', 'OLI_PAYMETH_APL', '');
INSERT INTO `oli_lu_paymethod` VALUES (2, 10, 'Collection Institution', 'OLI_PAYMETH_COLLECTION', 'Payments are being collected by a firm/institution whose purpose is to resolve amounts owed on delinquent accounts.');
INSERT INTO `oli_lu_paymethod` VALUES (3, 14, 'Combined Billing', 'OLI_PAYMETH_COMBBILL', 'This is usually used for a private policy owner who has numerous personal policies for himself / herself and maybe for others intheir household.');
INSERT INTO `oli_lu_paymethod` VALUES (4, 9, 'Credit Card Billing', 'OLI_PAYMETH_CREDCARD', 'A premium payment method under which policyowners authorize their credit card issuer (bank/financial institution) to pay premiums automatically on due dates to the insurer.');
INSERT INTO `oli_lu_paymethod` VALUES (5, 31, 'Deferred Premium Facility', 'OLI_PAYMETH_DPF', 'This indicates that premiums have been deferred until a future date as the Savings Benefit is being used as security for the deferred premiums.');
INSERT INTO `oli_lu_paymethod` VALUES (6, 16, 'Discounted Premium', 'OLI_PAYMETH_DISCPREM', '');
INSERT INTO `oli_lu_paymethod` VALUES (7, 28, 'Distributor Has Requested Release of Funds', 'OLI_PAYMETH_DISTRIREQ', 'The Distributor has requested the release of funds, which will follow. For a new policy, the carrier should initiate the set up of the policy.');
INSERT INTO `oli_lu_paymethod` VALUES (8, 17, 'Dividends on Deposit', 'OLI_PAYMETH_DIVDEP', 'Premiums are paid systematically from the dividend accumulations on deposit.');
INSERT INTO `oli_lu_paymethod` VALUES (9, 7, 'Electronic Funds Transfer', 'OLI_PAYMETH_ETRANS', 'A premium payment method under which policyowners authorize their banks to pay premiums automatically on due dates by transferring funds by wire from the bank to the insurer. This method includes Traditional EFT, like ACH (Automated Clearing House).');
INSERT INTO `oli_lu_paymethod` VALUES (10, 8, 'Government Allotment', 'OLI_PAYMENT_GOVALLOT', 'Fractional amounts are collected via payroll deduction by a government agency and submitted to the carrier (without a \"bill\"), and the carrier aggregates these amounts until enough to pay the next modal premium is accumulated.');
INSERT INTO `oli_lu_paymethod` VALUES (11, 3, 'Irregular Billing', 'OLI_PAYMETH_IRREGBILL', '');
INSERT INTO `oli_lu_paymethod` VALUES (12, 5, 'List Bill', 'OLI_PAYMENT_LISTBILL', 'Multiple policy bills are sent in a single logical \"bill\" (physical or electronic), and that the recipient of the bill (e.g. a corporate owner) is the source of the funds to pay the bill.');
INSERT INTO `oli_lu_paymethod` VALUES (13, 1, 'No Billing', 'OLI_PAYMETH_NOBILL', 'All the premiums had been paid. Also, known as paid up policy.');
INSERT INTO `oli_lu_paymethod` VALUES (14, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_paymethod` VALUES (15, 25, 'Paid based on premium offset', 'OLI_PAYMETH_PREMOFF', 'Premium offset method in effect is defined using Life.PremOffsetMethod. That field indicates what premium offset method is selected. This value identifies when it has been invoked.');
INSERT INTO `oli_lu_paymethod` VALUES (16, 4, 'Paid in Advance', 'OLI_PAYMETH_PAID', 'Premium paid before the due date. For example, a premium is due on July 1, 1997, but insured actually makes the premium payment on January 1, 1997, receiving a premium discount.');
INSERT INTO `oli_lu_paymethod` VALUES (17, 12, 'Pay from a Premium Deposit Fund', 'OLI_PAYMETH_PREMDEPFUND', '');
INSERT INTO `oli_lu_paymethod` VALUES (18, 13, 'Pay From Special Accounts', 'OLI_PAYMETH_SPECACCT', 'The payment for the policy will come from \"special accounts\". An example is Salary Savings. Special Accounts payment method would be any payments outside of modal or bank draft. IE. salary savings, commercial company payments, etc.');
INSERT INTO `oli_lu_paymethod` VALUES (19, 6, 'Payroll Deduction', 'OLI_PAYMENT_PAYROLL', 'A premium payment method under which an employer deducts individual life insurance premiums directly from an employees paycheck and sends these premiums to the insurance company.Multiple policy bills for these employees may be sent to the employer as one logical bill in a manner similar to a list bill.');
INSERT INTO `oli_lu_paymethod` VALUES (20, 26, 'Pre-Authorized Check', 'OLI_PAYMETH_PAC', 'A form of electronic fund transfer that may be processed differently from ACH (Automatic Clearing House). Includes Pre-Arranged Withdrawal (PAW).');
INSERT INTO `oli_lu_paymethod` VALUES (21, 30, 'Premium Waiver', 'OLI_PAYMETH_WAIVER', 'A premium waiver is in effect');
INSERT INTO `oli_lu_paymethod` VALUES (22, 29, 'Pre-signed, post dated cheques', 'OLI_PAYMETH_POSTDATECHK', 'The cheques are signed in advance and are post dated to correlate with premium due dates.');
INSERT INTO `oli_lu_paymethod` VALUES (23, 27, 'Receiving Carrier to Request Release of Funds', 'OLI_PAYMETH_CARRIERREQ', 'The Receiving Carrier will need to Request the release of funds, based upon paperwork to follow or on instructions included with the transaction.');
INSERT INTO `oli_lu_paymethod` VALUES (24, 2, 'Regular Billing', 'OLI_PAYMETH_REGBILL', 'Premiums are billed on a regular basis either by direct deduction from the bank account or through the mail.');
INSERT INTO `oli_lu_paymethod` VALUES (25, 11, 'Suspended Billing', 'OLI_PAYMETH_SUSPNDBILL', '');
INSERT INTO `oli_lu_paymethod` VALUES (26, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_paymode
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_paymode`;
CREATE TABLE `oli_lu_paymode` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_paymode_value_unique` (`value`),
  UNIQUE KEY `oli_lu_paymode_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_paymode
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_paymode` VALUES (1, 30, 'Annual Calendar', 'OLI_PAYMODE_ANNUALCAL', 'Payment is paid annually, and is driven off of calendar year as opposed to policy anniversary.');
INSERT INTO `oli_lu_paymode` VALUES (2, 1, 'Annual or Annually', 'OLI_PAYMODE_ANNUAL', '');
INSERT INTO `oli_lu_paymode` VALUES (3, 100, 'Any Paymode is allowed', 'OLI_PAYMODE_ANY', 'Used in Product Definitions only');
INSERT INTO `oli_lu_paymode` VALUES (4, 7, 'Bi-Weekly (every two weeks)', 'OLI_PAYMODE_BIWKLY', '');
INSERT INTO `oli_lu_paymode` VALUES (5, 8, 'Day or Daily', 'OLI_PAYMODE_DAILY', '');
INSERT INTO `oli_lu_paymode` VALUES (6, 21, 'Every 10 months', 'OLI_PAYMODE_EVERY10MTHS', '');
INSERT INTO `oli_lu_paymode` VALUES (7, 22, 'Every 11 months', 'OLI_PAYMODE_EVERY11MTHS', '');
INSERT INTO `oli_lu_paymode` VALUES (8, 15, 'Every 2 months', 'OLI_PAYMODE_EVERY2MTHS', '');
INSERT INTO `oli_lu_paymode` VALUES (9, 16, 'Every 4 months', 'OLI_PAYMODE_EVERY4MTHS', '');
INSERT INTO `oli_lu_paymode` VALUES (10, 12, 'Every 4 weeks (4 weekly)', 'OLI_PAYMODE_4WKLY', '');
INSERT INTO `oli_lu_paymode` VALUES (11, 17, 'Every 5 months', 'OLI_PAYMODE_EVERY5MTHS', '');
INSERT INTO `oli_lu_paymode` VALUES (12, 18, 'Every 7 months', 'OLI_PAYMODE_EVERY7MTHS', '');
INSERT INTO `oli_lu_paymode` VALUES (13, 19, 'Every 8 months', 'OLI_PAYMODE_EVERY8MTHS', '');
INSERT INTO `oli_lu_paymode` VALUES (14, 20, 'Every 9 months', 'OLI_PAYMODE_EVERY9MTHS', '');
INSERT INTO `oli_lu_paymode` VALUES (15, 24, 'Every three weeks', 'OLI_PAYMODE_EVERY3WKS', '');
INSERT INTO `oli_lu_paymode` VALUES (16, 23, 'Fiscal Quarterly mode of payment', 'OLI_PAYMODE_FISCALQUARTER', 'Assumes fiscal date is based off start date');
INSERT INTO `oli_lu_paymode` VALUES (17, 51, 'Hour or Hourly', 'OLI_PAYMODE_HOURLY', '');
INSERT INTO `oli_lu_paymode` VALUES (18, 40, 'Lifetime', 'OLI_PAYMODE_LIFETIME', 'Used to define a Lifetime period of time');
INSERT INTO `oli_lu_paymode` VALUES (19, 98, 'Mixed', 'OLI_PAYMODE_MIXED', 'Used when a payment schedule is comprised of portions of premium that are paid on different schedules. For instance, one portion may be paid monthly while another is paid annually. For example, the details of each portion would be specified via an Arrangement object.');
INSERT INTO `oli_lu_paymode` VALUES (20, 13, 'Monthly for 10 months', 'OLI_PAYMODE_MNTH410', '');
INSERT INTO `oli_lu_paymode` VALUES (21, 14, 'Monthly for 8 months', 'OLI_PAYMODE_MNTH48', '');
INSERT INTO `oli_lu_paymode` VALUES (22, 10, 'Monthly for Nine months', 'OLI_PAYMODE_MNTH49', '');
INSERT INTO `oli_lu_paymode` VALUES (23, 4, 'Month or Monthly', 'OLI_PAYMODE_MNTHLY', '');
INSERT INTO `oli_lu_paymode` VALUES (24, 99, 'None', 'OLI_PAYMODE_NONE', '');
INSERT INTO `oli_lu_paymode` VALUES (25, 31, 'Once every 5 years', 'OLI_PAYMODE_5YEARS', '');
INSERT INTO `oli_lu_paymode` VALUES (26, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_paymode` VALUES (27, 41, 'Payment is made once every three years', 'OLI_PAYMODE_TRIANNUAL', '');
INSERT INTO `oli_lu_paymode` VALUES (28, 29, 'Payment made 5 times a year', 'OLI_PAYMODE_QTRFIVE', 'Policy is paid on a quarterly basis with first payment being paid at beginning of billing cycle, and final payment being paid at end of billing cycle.');
INSERT INTO `oli_lu_paymode` VALUES (29, 43, 'Payments made 10 times a year', 'OLI_PAYMODE_TENTHLY', '');
INSERT INTO `oli_lu_paymode` VALUES (30, 26, 'Payments made 11 times per year.', 'OLI_PAYMODE_ELEVENTHLY', '');
INSERT INTO `oli_lu_paymode` VALUES (31, 44, 'Payments made 13 times a year', 'OLI_PAYMODE_THIRTTEENLY', '');
INSERT INTO `oli_lu_paymode` VALUES (32, 27, 'Payments made 14 times per year.', 'OLI_PAYMODE_FOURTEENTHLY', '');
INSERT INTO `oli_lu_paymode` VALUES (33, 45, 'Payments made 16 times a year', 'OLI_PAYMODE_SIXTEENTHLY', '');
INSERT INTO `oli_lu_paymode` VALUES (34, 46, 'Payments made 18 times a year', 'OLI_PAYMODE_EIGTHTEENLY', '');
INSERT INTO `oli_lu_paymode` VALUES (35, 47, 'Payments made 19 times a year', 'OLI_PAYMODE_NINETEENLY', '');
INSERT INTO `oli_lu_paymode` VALUES (36, 48, 'Payments made 20 times a year', 'OLI_PAYMODE_TWENTYLY', '');
INSERT INTO `oli_lu_paymode` VALUES (37, 49, 'Payments made 21 times a year', 'OLI_PAYMODE_TWENTHFIRSTLY', '');
INSERT INTO `oli_lu_paymode` VALUES (38, 50, 'Payments made 22 times a year', 'OLI_PAYMODE_TWENTYSECONDLY', '');
INSERT INTO `oli_lu_paymode` VALUES (39, 28, 'Payments made 28 times per year.', 'OLI_PAYMODE_TWENTYEIGHTHLY', '');
INSERT INTO `oli_lu_paymode` VALUES (40, 25, 'Payments made 7 times per year.', 'OLI_PAYMODE_SEVENTHLY', '');
INSERT INTO `oli_lu_paymode` VALUES (41, 42, 'Payments made 9 times a year', 'OLI_PAYMODE_NINETHLY', '');
INSERT INTO `oli_lu_paymode` VALUES (42, 3, 'Quarter or Quarterly', 'OLI_PAYMODE_QUARTLY', '');
INSERT INTO `oli_lu_paymode` VALUES (43, 11, 'Random', 'OLI_PAYMODE_RANDOM', 'Random means \"Triggered by a random event\"');
INSERT INTO `oli_lu_paymode` VALUES (44, 2, 'Semi-Annual (twice a year)', 'OLI_PAYMODE_BIANNUAL', '');
INSERT INTO `oli_lu_paymode` VALUES (45, 5, 'Semi-Monthly (twice a month)', 'OLI_PAYMODE_BIMNTHLY', '');
INSERT INTO `oli_lu_paymode` VALUES (46, 9, 'Single Payment', 'OLI_PAYMODE_SINGLEPAY', '');
INSERT INTO `oli_lu_paymode` VALUES (47, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_paymode` VALUES (48, 6, 'Week or Weekly', 'OLI_PAYMODE_WKLY', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_phonetype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_phonetype`;
CREATE TABLE `oli_lu_phonetype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_phonetype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_phonetype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_phonetype
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_phonetype` VALUES (1, 16, '\"General\" voice number unspecified as to location', 'OLI_PHONETYPE_VOICE', '');
INSERT INTO `oli_lu_phonetype` VALUES (2, 20, 'Agent customer service phone number', 'OLI_PHONETYPE_AGENTCSA', 'Carrier\'s phone number agent will use for customer service.');
INSERT INTO `oli_lu_phonetype` VALUES (3, 2, 'Business', 'OLI_PHONETYPE_BUS', '');
INSERT INTO `oli_lu_phonetype` VALUES (4, 4, 'Business Fax', 'OLI_PHONETYPE_BUSFAX', '');
INSERT INTO `oli_lu_phonetype` VALUES (5, 17, 'Business Toll-Free', 'OLI_PHONETYPE_BUSTOLLFREE', 'This is a business toll free number for a Corporation. i.e. 1-800..');
INSERT INTO `oli_lu_phonetype` VALUES (6, 18, 'Claim Center', 'OLI_PHONETYPE_CLAIMCENTER', 'Indicates that the phone number is the phone number for claim inquiries or claim processing information.');
INSERT INTO `oli_lu_phonetype` VALUES (7, 21, 'Client customer service phone number', 'OLI_PHONETYPE_CLIENTCSA', 'Carrier\'s phone number the client will use for customer service.');
INSERT INTO `oli_lu_phonetype` VALUES (8, 7, 'Corporate Office', 'OLI_PHONETYPE_CORPOFFICE', '');
INSERT INTO `oli_lu_phonetype` VALUES (9, 10, 'Emergency', 'OLI_PHONETYPE_EMERG', '');
INSERT INTO `oli_lu_phonetype` VALUES (10, 19, 'Fax', 'OLI_PHONETYPE_FAX', 'This value is used when a fax number is given and the party does not indicate whether or not it is their business or personal fax number.If a more specific fax type code is available, it should be used instead of this code. This code should only be used when a fax number is provided and there is no indication as to whether it is a home or business fax.');
INSERT INTO `oli_lu_phonetype` VALUES (11, 22, 'Headquarters Main Phone Number', 'OLI_PHONETYPE_HDQRTRS', 'The main phone number for a company or organization\'s headquarters location.');
INSERT INTO `oli_lu_phonetype` VALUES (12, 1, 'Home', 'OLI_PHONETYPE_HOME', '');
INSERT INTO `oli_lu_phonetype` VALUES (13, 15, 'Home Fax', 'OLI_PHONETYPE_HOMEFAX', '');
INSERT INTO `oli_lu_phonetype` VALUES (14, 6, 'Marine', 'OLI_PHONETYPE_YACHT', '');
INSERT INTO `oli_lu_phonetype` VALUES (15, 12, 'Mobile', 'OLI_PHONETYPE_MOBILE', '');
INSERT INTO `oli_lu_phonetype` VALUES (16, 14, 'Modem/data line', 'OLI_PHONETYPE_MODEM', '');
INSERT INTO `oli_lu_phonetype` VALUES (17, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_phonetype` VALUES (18, 13, 'Pager (beeper)', 'OLI_PHONETYPE_PAGER', '');
INSERT INTO `oli_lu_phonetype` VALUES (19, 28, 'Previous', 'OLI_PHONETYPE_PREVIOUS', '\"Previous\" where type (Home, Business, etc.) is unknown or not applicable.');
INSERT INTO `oli_lu_phonetype` VALUES (20, 26, 'Primary Phone', 'OLI_PHONETYPE_PRIMARY', 'A phone number that has been designated as the primary number for contact by phone.');
INSERT INTO `oli_lu_phonetype` VALUES (21, 9, 'Regional Office', 'OLI_PHONETYPE_REGOFFICE', '');
INSERT INTO `oli_lu_phonetype` VALUES (22, 27, 'Secondary or Alternate Phone', 'OLI_PHONETYPE_ALTERNATE', 'A phone number that has been designated as the secondary or alternate number for contact by phone.');
INSERT INTO `oli_lu_phonetype` VALUES (23, 29, 'Short Message Service (SMS) Text Message', 'OLI_PHONETYPE_SMSTEXT', 'Used to designate a phone number that is able to receive SMS text messages.');
INSERT INTO `oli_lu_phonetype` VALUES (24, 11, 'Temporary', 'OLI_PHONETYPE_TEMP', '');
INSERT INTO `oli_lu_phonetype` VALUES (25, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_phonetype` VALUES (26, 3, 'Vacation', 'OLI_PHONETYPE_VAC', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_poldelmethod
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_poldelmethod`;
CREATE TABLE `oli_lu_poldelmethod` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_poldelmethod_value_unique` (`value`),
  UNIQUE KEY `oli_lu_poldelmethod_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_poldelmethod
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_poldelmethod` VALUES (1, 2, 'Deliver policy by overnight mail', 'OLI_POLDELMETHOD_OVERNITE', 'Use the ReqPolicyDeliverToPartyID to locate the correct address to use for overnight mail.');
INSERT INTO `oli_lu_poldelmethod` VALUES (2, 1, 'Deliver policy by regular mail', 'OLI_POLDELMETHOD_MAIL', 'Use the ReqPolicyDeliverToPartyID to locate the correct address.');
INSERT INTO `oli_lu_poldelmethod` VALUES (3, 5, 'Deliver policy in person', 'OLI_POLDELMETHOD_INPERSON', 'Deliver policy in person by a hand-delivery method, such as by messenger/courier, agent, or other individual.Use the ReqPolicyDeliverToPartyID to locate the correct physical address.');
INSERT INTO `oli_lu_poldelmethod` VALUES (4, 6, 'Deliver policy via Electronic Portal', 'OLI_POLDELMETHOD_PORTAL', 'Use the ReqPolicyDeliverToPartyID to locate the correct email address that would have received the information for retrieving the policy from the portal.');
INSERT INTO `oli_lu_poldelmethod` VALUES (5, 3, 'Deliver policy via e-mail', 'OLI_POLDELMETHOD_EMAIL', 'Use the ReqPolicyDeliverToPartyID to locate the correct email address.');
INSERT INTO `oli_lu_poldelmethod` VALUES (6, 4, 'Deliver policy via fax.', 'OLI_POLDELMETHOD_FAX', 'Use the ReqPolicyDeliverToPartyID to locate the correct fax number.');
INSERT INTO `oli_lu_poldelmethod` VALUES (7, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_poldelmethod` VALUES (8, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_polissue
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_polissue`;
CREATE TABLE `oli_lu_polissue` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_polissue_value_unique` (`value`),
  UNIQUE KEY `oli_lu_polissue_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_polissue
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_polissue` VALUES (1, 10, 'Aviation', 'OLI_COVISSU_AVIATION', 'Underwriting rules used to issue the coverage are specific to those required to issue aviation based life insurance');
INSERT INTO `oli_lu_polissue` VALUES (2, 8, 'Blended (Policy has Underwritten and Guaranteed Issue coverages.) Only applies at Policy Level', 'OLI_COVISSU_PERCOVERAGE', '');
INSERT INTO `oli_lu_polissue` VALUES (3, 11, 'Conversion - Non-contractual', 'OLI_COVISSU_NONCNTRCTCONVERT', 'Non-contractual conversion - Underwriting is needed');
INSERT INTO `oli_lu_polissue` VALUES (4, 9, 'Conversion - No underwriting done', 'OLI_COVISSU_CONVERTED', '');
INSERT INTO `oli_lu_polissue` VALUES (5, 12, 'Express Underwriting', 'OLI_COVISSU_EXPRESS', 'Express Underwriting is a data-driven underwriting process used to render a decision without the need for invasive requirements such as a physical examination or an Attending Physician Statement (APS).');
INSERT INTO `oli_lu_polissue` VALUES (6, 4, 'Field Issue', 'OLI_COVISSU_FIELDISSUE', '');
INSERT INTO `oli_lu_polissue` VALUES (7, 5, 'Financial Underwriting', 'OLI_COVISSU_FINANCIALUNDERWRITTEN', '');
INSERT INTO `oli_lu_polissue` VALUES (8, 1, 'Full Underwriting', 'OLI_COVISSU_FULL', 'Answering all of the medical questions in the policy.');
INSERT INTO `oli_lu_polissue` VALUES (9, 3, 'Guaranteed Issue', 'OLI_COVISSU_GUAR', 'The right to purchase insurance without being required to provide evidence of insurability.');
INSERT INTO `oli_lu_polissue` VALUES (10, 6, 'Mass Underwriting', 'OLI_COVISSU_MASSUNDERWRITING', '');
INSERT INTO `oli_lu_polissue` VALUES (11, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_polissue` VALUES (12, 7, 'Reduced Underwriting', 'OLI_COVISSU_REDUCEDUNDERWRITING', '');
INSERT INTO `oli_lu_polissue` VALUES (13, 2, 'Simplified Underwriting', 'OLI_COVISSU_SIMP', 'Answering slightly different and less medical type questions as compared to Full Underwriting.');
INSERT INTO `oli_lu_polissue` VALUES (14, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_polstat
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_polstat`;
CREATE TABLE `oli_lu_polstat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_polstat_value_unique` (`value`),
  UNIQUE KEY `oli_lu_polstat_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_polstat
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_polstat` VALUES (1, 1, 'Active (inforce)', 'OLI_POLSTAT_ACTIVE', 'A Policy Status of \'Active\' only indicates that at least one, but possibly more, coverages or components of this contract are active. Each individual coverage must be evaluated to determine the status of each specific component. If any coverage is active, the contract is active.');
INSERT INTO `oli_lu_polstat` VALUES (2, 48, 'Active - Preliminary Term', 'OLI_POLSTAT_PRETERM', 'Both the Preliminary Term coverage and the basic policy have been approved and the premium for the Preliminary Term period has been paid, but the basic policy effective date has not been reached (Preliminary Term period still is in effect) nor has billing occurred for the initial premium, which has not been paid.');
INSERT INTO `oli_lu_polstat` VALUES (3, 90, 'Active Rider Terminated - Policy Converted to NFO (non forfeiture options)', 'OLI_POLSTAT_RDRTERMNFO', 'Original rider coverage is modified to reflect new non-forfeiture paid-up conditions');
INSERT INTO `oli_lu_polstat` VALUES (4, 36, 'Annuitized', 'OLI_POLSTAT_ANNUITIZED', '');
INSERT INTO `oli_lu_polstat` VALUES (5, 21, 'Applied For', 'OLI_POLSTAT_APPLIEDFOR', 'Transmission of a formal app is successful. This is only used for a formal application and only represents status from the perspective of the sender; i.e., the transmission of an application from a broker/vendor to the carrier. It does not reflect a carrier status.');
INSERT INTO `oli_lu_polstat` VALUES (6, 24, 'Approved', 'OLI_POLSTAT_APPROVED', 'Approved for issue (may or may not have outstanding requirements).');
INSERT INTO `oli_lu_polstat` VALUES (7, 58, 'Approved Tentative Offer', 'OLI_POLSTAT_APPROVEDTENTOFFER', 'Has been approved with tentative offer – as opposed to final offer. This is only used for a formal application.');
INSERT INTO `oli_lu_polstat` VALUES (8, 103, 'Approve - Issue Hold', 'OLI_POLSTAT_ISSUEHOLD', 'To have the case status \'Case is approved but issue process is on hold\'. Case will not be issued until this hold is removed');
INSERT INTO `oli_lu_polstat` VALUES (9, 32, 'Back Billed', 'OLI_POLSTAT_BACKBILL', 'Not paid up to where you\'ve been billed to.');
INSERT INTO `oli_lu_polstat` VALUES (10, 63, 'Block Conversion', 'OLI_POLSTAT_CONVERTEDBLOCK', 'Used when the issue system is used as a conversion vehicle for moving multiple policies from another administration system. This status is intended for use on the new policy/system not the original.');
INSERT INTO `oli_lu_polstat` VALUES (11, 39, 'Canceled - Customer canceled new business app', 'OLI_POLSTAT_CANCELLED', 'Customer is withdrawing new business application');
INSERT INTO `oli_lu_polstat` VALUES (12, 114, 'Canceled - Customer canceled reinstatement request', 'OLI_POLSTAT_CANCELREINST', 'Customer withdrew their application for reinstatement.');
INSERT INTO `oli_lu_polstat` VALUES (13, 50, 'Canceled - Free Look', 'OLI_POLSTAT_FREELOOK', 'Policy owner exercised the free look provision to terminate this policy. In the United Kingdom and Europe, \"Canceled - Free Look\" is called \"Cooling Off Cancellation\" as the \"Free Look Period\" is called the \"Cooling Off Period\".');
INSERT INTO `oli_lu_polstat` VALUES (14, 13, 'Canceled - Home Office Cancellation', 'OLI_POLSTAT_HOCANCEL', '');
INSERT INTO `oli_lu_polstat` VALUES (15, 112, 'Canceled - no additional information specified', 'OLI_POLSTAT_GENERICCANC', 'To be used in situations where a policy that was active at some point is canceled, but no additional information is known. For example, it is unknown which entity (carrier or customer) initiated the cancellation.');
INSERT INTO `oli_lu_polstat` VALUES (16, 116, 'Candidate', 'OLI_POLSTAT_CANDIDATE', 'Candidate Policy - Not yet proposed.');
INSERT INTO `oli_lu_polstat` VALUES (17, 27, 'Carrier decline to issue', 'OLI_POLSTAT_DECISSUE', 'The insurer refuses to issue a policy for the individual or company depending on the insurance company\'s terms of issuance of a policy.');
INSERT INTO `oli_lu_polstat` VALUES (18, 28, 'Carrier decline to reinstate', 'OLI_POLSTAT_DECREINSTATE', '');
INSERT INTO `oli_lu_polstat` VALUES (19, 29, 'Carrier deferred (e.g. carrier is deferring coverage until certain conditions are met).', 'OLI_POLSTAT_DEFERRED', '');
INSERT INTO `oli_lu_polstat` VALUES (20, 16, 'Cash Value Paid.', 'OLI_POLSTAT_CVPAID', '');
INSERT INTO `oli_lu_polstat` VALUES (21, 100, 'Claim pending without policy termination', 'OLI_POLSTAT_PENDCLAIMNOTERM', 'A claim against the policy, which does not lead to the termination of the policy, is pending');
INSERT INTO `oli_lu_polstat` VALUES (22, 53, 'Conditional Approval', 'OLI_POLSTAT_APPROVCOND', '');
INSERT INTO `oli_lu_polstat` VALUES (23, 31, 'Contractual change pending.', 'OLI_POLSTAT_CTRCTCHANGE', '');
INSERT INTO `oli_lu_polstat` VALUES (24, 41, 'Conversion Pending', 'OLI_POLSTAT_CONVPEND', 'This status is intended for use on the new policy/system not the original.');
INSERT INTO `oli_lu_polstat` VALUES (25, 30, 'Conversion with a new number', 'OLI_POLSTAT_CONVERTED', 'Conversion implies that a previous policy exists. While considered old business, a conversion usually has a new effective date. This status is intended for use on the new policy/system not the original.');
INSERT INTO `oli_lu_polstat` VALUES (26, 64, 'Conversion with the same number', 'OLI_POLSTAT_CONVERTEDSAME', 'Conversion implies that a previous policy exists. The inforce policy with the same number must be terminated and carry exit code conversion out.');
INSERT INTO `oli_lu_polstat` VALUES (27, 26, 'Counter offer - made by HO', 'OLI_POLSTAT_COUNTEROFFER', 'Issued other than applied for. Must include at least one material change(s), may additionally include nonmaterial change(s)');
INSERT INTO `oli_lu_polstat` VALUES (28, 52, 'Coverage is \"active\" but one (or more) of insureds have died', 'OLI_POLSTAT_SOMEDEAD', '');
INSERT INTO `oli_lu_polstat` VALUES (29, 11, 'Death Claim Paid.', 'OLI_POLSTAT_DEATH', '');
INSERT INTO `oli_lu_polstat` VALUES (30, 10, 'Death Claim Pending.', 'OLI_POLSTAT_DTHPEND', '');
INSERT INTO `oli_lu_polstat` VALUES (31, 35, 'Declined Not Eligible', 'OLI_POLSTAT_DECNOTELIG', '');
INSERT INTO `oli_lu_polstat` VALUES (32, 95, 'Disability claim pending without policy termination', 'OLI_POLSTAT_DISCLAIM', 'A disability claim against the policy, which does not lead to the termination of the policy, is pendingThis is a disability claim on a Life coverage.');
INSERT INTO `oli_lu_polstat` VALUES (33, 113, 'Dormant', 'OLI_POLSTAT_DORMANT', 'This status applies to features that are not yet providing coverage, but for which some maintenance still needs to be performed. These features become active when triggered by some action on the policy such as the expiration of another feature.');
INSERT INTO `oli_lu_polstat` VALUES (34, 34, 'Eligible, Issue Pending', 'OLI_POLSTAT_ELIGISSPEND', '');
INSERT INTO `oli_lu_polstat` VALUES (35, 99, 'Exercised', 'OLI_POLSTAT_EXERCISED', 'A status which indicates that the associated Option or Rider has been exercised.');
INSERT INTO `oli_lu_polstat` VALUES (36, 17, 'Expired', 'OLI_POLSTAT_EXPIRED', '');
INSERT INTO `oli_lu_polstat` VALUES (37, 18, 'Extended Term', 'OLI_POLSTAT_EXTTERM', '');
INSERT INTO `oli_lu_polstat` VALUES (38, 98, 'FIU New Business Rejection', 'OLI_POLSTATUS_FIUREJECT', 'A case may be rejected for FIU (Further Information Unobtainable) due to insufficient money or outstanding pre issue forms. A case pending in new business has a grace period (such as 45 days) for money and the pre issue forms. If these details are unobtainable for any reason, the underwriter FIU rejects the case.');
INSERT INTO `oli_lu_polstat` VALUES (39, 115, 'FIU Reinstatement Rejection', 'OLI_POLSTAT_FIUREJECTREINST', 'A reinstatement request may be Further Information Unobtainable (FIU) rejected for insufficient money or outstanding information.');
INSERT INTO `oli_lu_polstat` VALUES (40, 47, 'Fully Paid-Up', 'OLI_POLSTAT_FULLPAIDUP', 'Fully Paid-Up insurance (FPU) is in effect following the election by the policy owner of the conversion option that allows the policy owner to stop paying premiums prior to the end of the normal premium-paying period, and receive a paid up policy for the full current face amount. FPU is a combination of the reduced paid-up and premium reduction non-forfeiture options.Fully Paid Up -- Fully Paid-Up insurance (FPU) is a type of non-forfeiture option available on life insurance contracts (class code 1) where the policy owner may optionally elect to cease paying premiums prior to the end of the normal premium paying period as defined in the contract, and use the total cash value of the contract as a Net Single Premium to purchase a fully paid-up policy for the full face amount of the original contract. The total cost for conversion to a fully paid-up contract is based on the net single premium for the full original face amount plus the cost to retain certain supplemental benefit riders. The total cash value of the contract needs to be sufficient to cover the NSP cost -- Total CV includes the guaranteed cash value, the cash surrender value of any PUA\'s and OYT Additions and any dividends on deposit. If the total cash value required to cover the NSP is less than the cost to convert to fully paid-up, the policy owner may pay the amount to cover the shortage of the NSP; if the total cash value exceeds the cost, any unneeded amount over the NSP will be refunded in cash.');
INSERT INTO `oli_lu_polstat` VALUES (41, 42, 'Grace Period', 'OLI_POLSTAT_GRACEPD', 'The policy has lapsed due to non payment of premiums and is in its contractual grace period prior to final termination');
INSERT INTO `oli_lu_polstat` VALUES (42, 59, 'HO Withdrew', 'OLI_POLSTAT_WITHDRAWNHO', 'Status of coverage for an inquiry or formal application that the HO withdrew');
INSERT INTO `oli_lu_polstat` VALUES (43, 33, 'Illustration declined', 'OLI_POLSTAT_ILLUSDEC', 'Illustration System wants to return coverage to indicate it was declined.');
INSERT INTO `oli_lu_polstat` VALUES (44, 2, 'Inactive', 'OLI_POLSTAT_INACTIVE', '');
INSERT INTO `oli_lu_polstat` VALUES (45, 23, 'Incomplete (application was incomplete).', 'OLI_POLSTAT_INCOMPLETE', 'Either all of the application fields were not completed or the applicant did not provide complete information.');
INSERT INTO `oli_lu_polstat` VALUES (46, 94, 'Inforce- Attained Age Conversion', 'OLI_POLSTAT_INFAGECONF', 'Attained age of insured being reached resulted in a conversion, but policy remains inforce');
INSERT INTO `oli_lu_polstat` VALUES (47, 45, 'Invalid', 'OLI_POLSTAT_INVALID', '');
INSERT INTO `oli_lu_polstat` VALUES (48, 25, 'Issued', 'OLI_POLSTAT_ISSUED', 'All requirements were satisfied. Can be used with StatusReason to reflect it is not paid. Could also indicate all requirements satisfied but effective date not yet reached.');
INSERT INTO `oli_lu_polstat` VALUES (49, 44, 'Issued with Requirements', 'OLI_POLSTAT_ISSUEDWREQUIREMENTS', 'Issued with outstanding requirements.');
INSERT INTO `oli_lu_polstat` VALUES (50, 4, 'Lapsed', 'OLI_POLSTAT_LAPSED', '');
INSERT INTO `oli_lu_polstat` VALUES (51, 5, 'Lapse Pending.', 'OLI_POLSTAT_LAPSEPEND', '');
INSERT INTO `oli_lu_polstat` VALUES (52, 61, 'Lapsing on a daily cost basis', 'OLI_POLSTAT_LAPSINGDAILY', '');
INSERT INTO `oli_lu_polstat` VALUES (53, 40, 'Matured', 'OLI_POLSTAT_MATURED', '');
INSERT INTO `oli_lu_polstat` VALUES (54, 7, 'Not Taken.', 'OLI_POLSTAT_NOTAKE', '');
INSERT INTO `oli_lu_polstat` VALUES (55, 65, 'Not Taken Out', 'OLI_POLSTAT_NOTTAKENOUT', 'The Not Taken Out status indicates that the contract was declined before issue. The party declining the contract may be the contract owner or insurance company itself.');
INSERT INTO `oli_lu_polstat` VALUES (56, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_polstat` VALUES (57, 3, 'Paid-Up', 'OLI_POLSTAT_PAIDUP', 'The life insurance contract has reached the end of its contractually defined premium-paying period. No further premiums are due, but the contract and its benefits are still in effect. For example: a 20-Pay Whole Life contract -- premiums are paid-up over a 20-year period and at the end of that period, the cash value continues to accumulate and the death benefit remains in effect until contract maturity or a claim is incurred.');
INSERT INTO `oli_lu_polstat` VALUES (58, 91, 'Paid-Up Rider Terminated - Policy Converted to NFO (non forfeiture options)', 'OLI_POLSTAT_PDUPRDRTERMNFO', 'Original paid-up rider coverage is modified to reflect NFO Conditions');
INSERT INTO `oli_lu_polstat` VALUES (59, 8, 'Pending', 'OLI_POLSTAT_PENDING', 'Request accepted for processing and under review by carrier.');
INSERT INTO `oli_lu_polstat` VALUES (60, 38, 'Pending Reinstatement', 'OLI_POLSTAT_PENDREINST', '');
INSERT INTO `oli_lu_polstat` VALUES (61, 46, 'Pending Replacement', 'OLI_POLSTAT_PENDREPLACEMENT', '');
INSERT INTO `oli_lu_polstat` VALUES (62, 22, 'Pending Transmission', 'OLI_POLSTAT_PENDINGTRANS', 'The application is completed and ready to be sent but transmission has not taken place.The transferring of a property title from one individual to another. OR The legal transfer and receipt of ownership rights.');
INSERT INTO `oli_lu_polstat` VALUES (63, 43, 'Policy was issued with changes', 'OLI_POLSTAT_CHANGEISS', 'Policy was issued with non-material change(s).');
INSERT INTO `oli_lu_polstat` VALUES (64, 51, 'Policy was not placed', 'OLI_POLSTAT_NOTPLACED', 'Carrier did not place the policy.');
INSERT INTO `oli_lu_polstat` VALUES (65, 62, 'Postponed', 'OLI_POLSTAT_POSTPONED', 'Used when a case needs to be re-opened from an issued status. Deprecated in favor of Policy Status \"OLI_POLSTAT_DEFERRED\".');
INSERT INTO `oli_lu_polstat` VALUES (66, 60, 'Producer Withdrew', 'OLI_POLSTAT_WITHDRAWNFLD', 'Status of coverage for an inquiry or formal application that the Producer (Agent) withdrew (changed mind, etc.)');
INSERT INTO `oli_lu_polstat` VALUES (67, 12, 'Proposed', 'OLI_POLSTAT_PROPOSED', 'Not yet submitted to carrier for consideration.');
INSERT INTO `oli_lu_polstat` VALUES (68, 57, 'Quoted', 'OLI_POLSTAT_QUOTED', 'A request for a rate quote or an informal application (AKA trial application) was received by the carrier. If the carrier was able to satisfy the request the status is quoted.');
INSERT INTO `oli_lu_polstat` VALUES (69, 97, 'Reconsider and Approve', 'OLI_POLSTATUS_RECONSIDER', 'Final action procedure done on a case which has gotten Further Information Unobtainable (FIU) rejected and subsequently received the Money and/or pre-issue forms within the 45 day grace period.');
INSERT INTO `oli_lu_polstat` VALUES (70, 20, 'Reduced Paid Up', 'OLI_POLSTAT_REDUCEDPAIDUP', '');
INSERT INTO `oli_lu_polstat` VALUES (71, 56, 'Re-entry pending', 'OLI_POLSTAT_REENTRYPENDING', 'Policy owner has elected to re-qualify for a premium rate comparable to a new issue premium rate for someone of the same age.');
INSERT INTO `oli_lu_polstat` VALUES (72, 37, 'Reinstated', 'OLI_POLSTAT_REINSTATED', 'Subtle short period between pending and active- awaiting policy exhibit');
INSERT INTO `oli_lu_polstat` VALUES (73, 19, 'Reissue', 'OLI_POLSTAT_REISSUE', '');
INSERT INTO `oli_lu_polstat` VALUES (74, 109, 'Request Refused', 'OLI_POLSTAT_REQREFUSE', 'The submission of a request for a quote, trial/informal or formal application cannot be processed');
INSERT INTO `oli_lu_polstat` VALUES (75, 111, 'Rescinded', 'OLI_POLSTAT_RESCINDED', 'Type of policy cancellation by the carrier during the contestable period. The rescission is usually triggered by a death claim where misrepresentation has been discovered in the information provided by the applicant.');
INSERT INTO `oli_lu_polstat` VALUES (76, 110, 'Risk Not Acceptable', 'OLI_POLSTAT_RISKNOTACCEPT', 'Has gone through an underwriting process for an informal application and determined that the risk was not acceptable to the carrier');
INSERT INTO `oli_lu_polstat` VALUES (77, 93, 'Status of \'Departure Extension\'', 'OLI_POLSTAT_DEPARTUREEXTENSION', 'A member is on departure extension');
INSERT INTO `oli_lu_polstat` VALUES (78, 92, 'Status of \'member left\'', 'OLI_POLSTAT_MEMBERLEAVES', 'A member has left employment');
INSERT INTO `oli_lu_polstat` VALUES (79, 54, 'Submitted to Underwriting', 'OLI_POLSTAT_SUBMITTEDTOUW', 'The proposed policy is a completed application and is submitted to Underwriting. All initial information/requirements required to put the policy in Underwriting have been accepted.');
INSERT INTO `oli_lu_polstat` VALUES (80, 6, 'Surrendered', 'OLI_POLSTAT_SURR', '');
INSERT INTO `oli_lu_polstat` VALUES (81, 55, 'Suspend', 'OLI_POLSTAT_SUSPEND', 'Suspend indicates whether financial activity is suspended on a Policy or not. Some reasons for freezing a Policy could be because of the death of the insured, an internal processing problem, etc.');
INSERT INTO `oli_lu_polstat` VALUES (82, 14, 'Terminated', 'OLI_POLSTAT_TERMINATE', '');
INSERT INTO `oli_lu_polstat` VALUES (83, 89, 'Terminated - Reserves Released', 'OLI_POLSTAT_TERMRESRELEASD', '');
INSERT INTO `oli_lu_polstat` VALUES (84, 15, 'Under Disability', 'OLI_POLSTAT_DI', '');
INSERT INTO `oli_lu_polstat` VALUES (85, 108, 'Under Retrenchment (Unemployment)', 'OLI_POLSTAT_RETRENCH', 'Under Retrenchment (Unemployment) status indicates that the insured is receiving a retrenchment benefit from this policy.');
INSERT INTO `oli_lu_polstat` VALUES (86, 106, 'Underwriting complete, policy paid', 'OLI_POLSTAT_NOTPAID', 'This accounts for the fact that some companies will not issue the policy until something has been paid towards it.');
INSERT INTO `oli_lu_polstat` VALUES (87, 107, 'Underwriting incomplete; policy paid', 'OLI_POLSTAT_PAIDUNDINC', '');
INSERT INTO `oli_lu_polstat` VALUES (88, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_polstat` VALUES (89, 117, 'Vested', 'OLI_POLSTAT_VESTED', 'A person\'s right to the full amount of some type of benefit, most commonly employee benefits such as stock options, profit sharing or retirement benefits. Fully vested benefits often accrue to employees each year, but they only become the employee\'s property according to a vesting schedule. Vesting may occur on a gradual schedule, such as 25% per year, or on a \"cliff\" schedule where 100% of benefits vest at a set time, such as four years after the award date.');
INSERT INTO `oli_lu_polstat` VALUES (90, 9, 'Waiver', 'OLI_POLSTAT_WAIVER', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_prefcomm
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_prefcomm`;
CREATE TABLE `oli_lu_prefcomm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_prefcomm_value_unique` (`value`),
  UNIQUE KEY `oli_lu_prefcomm_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_prefcomm
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_prefcomm` VALUES (1, 5, 'Don\'t Contact', 'OLI_PREFCOMM_NONE', '');
INSERT INTO `oli_lu_prefcomm` VALUES (2, 10, 'Electronic Portal', 'OLI_PREFCOMM_PORTAL', '');
INSERT INTO `oli_lu_prefcomm` VALUES (3, 3, 'E-Mail', 'OLI_PREFCOMM_EMAIL', '');
INSERT INTO `oli_lu_prefcomm` VALUES (4, 2, 'Fax', 'OLI_PREFCOMM_FAX', '');
INSERT INTO `oli_lu_prefcomm` VALUES (5, 8, 'In-person', 'OLI_PREFCOMM_INPERSON', '');
INSERT INTO `oli_lu_prefcomm` VALUES (6, 7, 'No preference specified', 'OLI_PREFCOMM_NOPREF', '');
INSERT INTO `oli_lu_prefcomm` VALUES (7, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_prefcomm` VALUES (8, 1, 'Phone', 'OLI_PREFCOMM_PHONE', '');
INSERT INTO `oli_lu_prefcomm` VALUES (9, 4, 'Regular Mail', 'OLI_PREFCOMM_MAIL', '');
INSERT INTO `oli_lu_prefcomm` VALUES (10, 6, 'Text Message', 'OLI_PREFCOMM_TEXTMESSAGE', 'Used to designate a preference to receive certain types of communication via text message.');
INSERT INTO `oli_lu_prefcomm` VALUES (11, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_prefcomm` VALUES (12, 9, 'Video Conference', 'OLI_PREFCOMM_VIDEO', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_reldesc
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_reldesc`;
CREATE TABLE `oli_lu_reldesc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_reldesc_value_unique` (`value`),
  UNIQUE KEY `oli_lu_reldesc_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_reldesc
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_reldesc` VALUES (1, 77, 'Accountant', 'OLI_RELDESC_ACCOUNTANT', '');
INSERT INTO `oli_lu_reldesc` VALUES (2, 98, 'Account Specialist', 'OLI_RELDESC_ACCTSPEC', 'Account Specialist is the carrier employee responsible for administering the group insurance customer\'s case information. The group insurance customer is the employer organization or company, and their case information includes such items as contacts, situs information, and Experience Groupings.');
INSERT INTO `oli_lu_reldesc` VALUES (3, 99, 'Administrative Unit', 'OLI_RELDESC_ADMINUNIT', 'An organization responsible for the administration of a particular product or some other aspect of a customer relationship.');
INSERT INTO `oli_lu_reldesc` VALUES (4, 102, 'Adopted Daughter', 'OLI_RELDESC_ADOPTDAUGHTER', '');
INSERT INTO `oli_lu_reldesc` VALUES (5, 103, 'Adopted Son', 'OLI_RELDESC_ADOPTSON', '');
INSERT INTO `oli_lu_reldesc` VALUES (6, 114, 'Adoptive Brother', 'OLI_RELDESC_ADOPTIVEBROTHER', 'Brother in an adoptive family. This is typically a natural male child or another adopted male child of a set of adoptive parents that becomes the brother of an adopted child once the adoption is complete.');
INSERT INTO `oli_lu_reldesc` VALUES (7, 105, 'Adoptive Father', 'OLI_RELDESC_ADOPTFATHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (8, 104, 'Adoptive Mother', 'OLI_RELDESC_ADOPTMOTHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (9, 115, 'Adoptive Sister', 'OLI_RELDESC_ADOPTIVESISTER', 'Sister in an adoptive family. This is typically a natural female child or another adopted female child of a set of adoptive parents that becomes the sister of an adopted child once the adoption is complete.');
INSERT INTO `oli_lu_reldesc` VALUES (10, 42, 'Attorney', 'OLI_RELDESC_ATTORNEY', '');
INSERT INTO `oli_lu_reldesc` VALUES (11, 43, 'Auditor', 'OLI_RELDESC_AUDITOR', '');
INSERT INTO `oli_lu_reldesc` VALUES (12, 31, 'Aunt', 'OLI_RELDESC_AUNT', '');
INSERT INTO `oli_lu_reldesc` VALUES (13, 135, 'Aunt-in-law', 'OLI_RELDESC_AUNTINLAW', 'Aunt-in-law.');
INSERT INTO `oli_lu_reldesc` VALUES (14, 97, 'Benefits Administrator', 'OLI_RELDESC_BENADMIN', 'Benefits Administrator is the group insurance customer\'s representative designated as the individual or organization who administers the benefit plan being purchased from the carrier and offered to the employee population.');
INSERT INTO `oli_lu_reldesc` VALUES (15, 44, 'Bookkeeper', 'OLI_RELDESC_BOOKKEEPER', '');
INSERT INTO `oli_lu_reldesc` VALUES (16, 88, 'Boy Friend', 'OLI_RELDESC_BOYFRIEND', '');
INSERT INTO `oli_lu_reldesc` VALUES (17, 7, 'Brother', 'OLI_RELDESC_BROTHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (18, 25, 'Brother-in-law', 'OLI_RELDESC_BROTHINLW', '');
INSERT INTO `oli_lu_reldesc` VALUES (19, 84, 'Business Accountant', 'OLI_RELDESC_BUSACCOUNTANT', '');
INSERT INTO `oli_lu_reldesc` VALUES (20, 86, 'Business Attorney', 'OLI_RELDESC_BUSATTORNEY', '');
INSERT INTO `oli_lu_reldesc` VALUES (21, 85, 'Business CPA', 'OLI_RELDESC_BUSCPA', '');
INSERT INTO `oli_lu_reldesc` VALUES (22, 83, 'Business Insurance Advisor', 'OLI_RELDESC_BUSINSADVISOR', '');
INSERT INTO `oli_lu_reldesc` VALUES (23, 46, 'Chairman of the Board', 'OLI_RELDESC_COB', '');
INSERT INTO `oli_lu_reldesc` VALUES (24, 82, 'Charitable Advisor', 'OLI_RELDESC_CHARITABLEADVISOR', '');
INSERT INTO `oli_lu_reldesc` VALUES (25, 47, 'Chief Executive Officer', 'OLI_RELDESC_CEO', '');
INSERT INTO `oli_lu_reldesc` VALUES (26, 48, 'Chief Financial Officer', 'OLI_RELDESC_CFO', '');
INSERT INTO `oli_lu_reldesc` VALUES (27, 50, 'Chief Information Officer', 'OLI_RELDESC_CIO', '');
INSERT INTO `oli_lu_reldesc` VALUES (28, 49, 'Chief Operating Officer', 'OLI_RELDESC_COO', '');
INSERT INTO `oli_lu_reldesc` VALUES (29, 62, 'Common Law Husband', 'OLI_RELDESC_COMMLAWHUSB', '');
INSERT INTO `oli_lu_reldesc` VALUES (30, 61, 'Common Law Wife', 'OLI_RELDESC_COMMLAWWIFE', '');
INSERT INTO `oli_lu_reldesc` VALUES (31, 119, 'Companion', 'OLI_RELDESC_COMPANION', 'Relates the companion holding to the associated holding');
INSERT INTO `oli_lu_reldesc` VALUES (32, 45, 'Consultant', 'OLI_RELDESC_CONSULTANT', '');
INSERT INTO `oli_lu_reldesc` VALUES (33, 95, 'Cousin (Female cousin - non English)', 'OLI_RELDESC_FEMCOUSIN', 'When used in non-English language context, this implies a female cousin. In English speaking context, no gender is implied.');
INSERT INTO `oli_lu_reldesc` VALUES (34, 29, 'Cousin (Male cousin - non English)', 'OLI_RELDESC_COUSIN', 'When used in non-English language context, this implies a male cousin. In English speaking context, no gender is implied.');
INSERT INTO `oli_lu_reldesc` VALUES (35, 78, 'CPA', 'OLI_RELDESC_CPA', '');
INSERT INTO `oli_lu_reldesc` VALUES (36, 92, 'Custodian', 'OLI_RELDESC_CUSTODIAN', '');
INSERT INTO `oli_lu_reldesc` VALUES (37, 6, 'Daughter', 'OLI_RELDESC_DAUGHTER', '');
INSERT INTO `oli_lu_reldesc` VALUES (38, 24, 'Daughter-in-law', 'OLI_RELDESC_DAUGHINLW', '');
INSERT INTO `oli_lu_reldesc` VALUES (39, 96, 'Day-to-day Contact', 'OLI_RELDESC_DAYCONTACT', 'Day-to-day Contact is the group insurance customer\'s representative designated as the individual to be contacted for any questions or normal activity requirements around the management of the relationship between the carrier and the customer. The group insurance customer is the employer organization or company, and the Day-to-day contact is generally an individual rather than an organization, but exceptions to that do exist.');
INSERT INTO `oli_lu_reldesc` VALUES (40, 53, 'Estate Agent', 'OLI_RELDESC_ESTATEAGENT', '');
INSERT INTO `oli_lu_reldesc` VALUES (41, 81, 'Estate Planner', 'OLI_RELDESC_ESTATEPLANNER', '');
INSERT INTO `oli_lu_reldesc` VALUES (42, 41, 'Executive', 'OLI_RELDESC_EXECUTIVE', '');
INSERT INTO `oli_lu_reldesc` VALUES (43, 9, 'Ex-husband', 'OLI_RELDESC_EXHUSBAND', '');
INSERT INTO `oli_lu_reldesc` VALUES (44, 107, 'External Replacement', 'OLI_RELDESC_EXTERNAL', 'This is the general term for an External Replacement.');
INSERT INTO `oli_lu_reldesc` VALUES (45, 10, 'Ex-wife', 'OLI_RELDESC_EXWIFE', '');
INSERT INTO `oli_lu_reldesc` VALUES (46, 3, 'Father', 'OLI_RELDESC_FATHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (47, 21, 'Father-in-law', 'OLI_RELDESC_FATHINLW', '');
INSERT INTO `oli_lu_reldesc` VALUES (48, 90, 'Fiancée (engaged female)', 'OLI_RELDESC_FIANCEE', '');
INSERT INTO `oli_lu_reldesc` VALUES (49, 60, 'Fianc‚ (engaged male)', 'OLI_RELDESC_FIANCE', '');
INSERT INTO `oli_lu_reldesc` VALUES (50, 108, 'Finance Purchase', 'OLI_RELDESC_FINPURCH', 'The policy is being replaced as a result of a Finance Purchase.');
INSERT INTO `oli_lu_reldesc` VALUES (51, 79, 'Financial Advisor', 'OLI_RELDESC_FINANADVISOR', '');
INSERT INTO `oli_lu_reldesc` VALUES (52, 118, 'Formal', 'OLI_RELDESC_FORMAL', 'Relates the formal holding to the associated holding.');
INSERT INTO `oli_lu_reldesc` VALUES (53, 134, 'Former Brother-in-law', 'OLI_RELDESC_FORMERBROTHERINLAW', 'A previous brother-in-law during one\'s lifetime, typically following the divorce or death of a sibling.');
INSERT INTO `oli_lu_reldesc` VALUES (54, 131, 'Former Daughter-in-law', 'OLI_RELDESC_FORMERDAUGHTRINLAW', 'A previous daughter-in-law during one\'s lifetime, typically following the divorce or death of a son.');
INSERT INTO `oli_lu_reldesc` VALUES (55, 130, 'Former Father-in-law', 'OLI_RELDESC_FORMERFATHERINLAW', 'A previous father-in-law during one\'s lifetime, typically following the divorce or death of a spouse.');
INSERT INTO `oli_lu_reldesc` VALUES (56, 120, 'Former Mother-in-law', 'OLI_RELDESC_FORMERMOTHERINLAW', 'A previous mother-in-law during one\'s lifetime, typically following the divorce or death of a spouse.');
INSERT INTO `oli_lu_reldesc` VALUES (57, 133, 'Former Sister-in-law', 'OLI_RELDESC_FORMERSISTERINLAW', 'A previous sister-in-law during one\'s lifetime, typically following the divorce or death of a sibling.');
INSERT INTO `oli_lu_reldesc` VALUES (58, 132, 'Former Son-in-law', 'OLI_RELDESC_FORMERSONINLAW', 'A previous son-in-law during one\'s lifetime, typically following the divorce or death of a daughter.');
INSERT INTO `oli_lu_reldesc` VALUES (59, 128, 'Former Step Brother', 'OLI_RELDESC_FORMERSTEPBROTHER', 'A previous step brother during one\'s lifetime, typically following the divorce or death of a parent.');
INSERT INTO `oli_lu_reldesc` VALUES (60, 125, 'Former Step Daughter', 'OLI_RELDESC_FORMERSTEPDAUGHTER', 'A previous step daughter during one\'s lifetime, typically following the divorce or death of a spouse.');
INSERT INTO `oli_lu_reldesc` VALUES (61, 124, 'Former Step Father', 'OLI_RELDESC_FORMERSTEPFATHER', 'A previous husband of one\'s mother during one\'s lifetime, other than one\'s father, typically following the divorce or death of the father.');
INSERT INTO `oli_lu_reldesc` VALUES (62, 123, 'Former Step Mother', 'OLI_RELDESC_FORMERSTEPMOTHER', 'A previous wife of one\'s father during one\'s lifetime, other than one\'s mother, typically following the divorce or death of the mother.');
INSERT INTO `oli_lu_reldesc` VALUES (63, 136, 'Former Step Sister', 'OLI_RELDESC_FORMERSTEPSISTER', 'A previous step sister during one\'s lifetime, typically following the divorce or death of a parent.');
INSERT INTO `oli_lu_reldesc` VALUES (64, 126, 'Former Step Son', 'OLI_RELDESC_FORMERSTEPSON', 'A previous step son during one\'s lifetime, typically following the divorce or death of a spouse.');
INSERT INTO `oli_lu_reldesc` VALUES (65, 75, 'Foster Brother', 'OLI_RELDESC_FOSTERBROTHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (66, 72, 'Foster Daughter', 'OLI_RELDESC_FOSTERDAUGH', '');
INSERT INTO `oli_lu_reldesc` VALUES (67, 73, 'Foster Father', 'OLI_RELDESC_FOSTERFATHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (68, 74, 'Foster Mother', 'OLI_RELDESC_FOSTERMOTHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (69, 76, 'Foster Sister', 'OLI_RELDESC_FOSTERSISTER', '');
INSERT INTO `oli_lu_reldesc` VALUES (70, 71, 'Foster Son', 'OLI_RELDESC_FOSTERSON', '');
INSERT INTO `oli_lu_reldesc` VALUES (71, 38, 'General Manager', 'OLI_RELDESC_GENMANAGER', '');
INSERT INTO `oli_lu_reldesc` VALUES (72, 89, 'Girl Friend', 'OLI_RELDESC_GIRLFRIEND', '');
INSERT INTO `oli_lu_reldesc` VALUES (73, 56, 'God Daughter', 'OLI_RELDESC_GODDAUGHTER', '');
INSERT INTO `oli_lu_reldesc` VALUES (74, 34, 'God Father', 'OLI_RELDESC_GODFATHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (75, 35, 'God Mother', 'OLI_RELDESC_GODMOTHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (76, 55, 'God Son', 'OLI_RELDESC_GODSON', '');
INSERT INTO `oli_lu_reldesc` VALUES (77, 20, 'Granddaughter', 'OLI_RELDESC_GRANDDAUGH', '');
INSERT INTO `oli_lu_reldesc` VALUES (78, 144, 'Granddaughter-in-law', 'OLI_RELDESC_GRANDDAUGHTERINLAW', 'The wife of one\'s grandson.');
INSERT INTO `oli_lu_reldesc` VALUES (79, 17, 'Grandfather', 'OLI_RELDESC_GRANDFATH', '');
INSERT INTO `oli_lu_reldesc` VALUES (80, 18, 'Grandmother', 'OLI_RELDESC_GRANDMOTH', '');
INSERT INTO `oli_lu_reldesc` VALUES (81, 65, 'Grand Nephew', 'OLI_RELDESC_GRANDNEPH', '');
INSERT INTO `oli_lu_reldesc` VALUES (82, 127, 'Grandnephew-in-law', 'OLI_RELDESC_GRANDNEPHEWINLAW', 'The son of one\'s nephew or niece, grandson of one\'s sister or brother.');
INSERT INTO `oli_lu_reldesc` VALUES (83, 66, 'Grand Niece', 'OLI_RELDESC_GRANDNIECE', '');
INSERT INTO `oli_lu_reldesc` VALUES (84, 129, 'Grandniece-in-law', 'OLI_RELDESC_GRANDNIECEINLAW', 'The daughter of one\'s nephew/niece, granddaughter of one\'s sister or brother.');
INSERT INTO `oli_lu_reldesc` VALUES (85, 19, 'Grandson', 'OLI_RELDESC_GRANDSON', '');
INSERT INTO `oli_lu_reldesc` VALUES (86, 122, 'Grandson-in-law', 'OLI_RELDESC_GRANDSONINLAW', 'The husband of one\'s granddaughter.');
INSERT INTO `oli_lu_reldesc` VALUES (87, 63, 'Great Aunt (Grandaunt)', 'OLI_RELDESC_GREATAUNT', '');
INSERT INTO `oli_lu_reldesc` VALUES (88, 68, 'Great Granddaughter', 'OLI_RELDESC_GREATGRANDDAUGH', '');
INSERT INTO `oli_lu_reldesc` VALUES (89, 69, 'Great Grandfather', 'OLI_RELDESC_GREATGRANDFATH', '');
INSERT INTO `oli_lu_reldesc` VALUES (90, 70, 'Great Grandmother', 'OLI_RELDESC_GREATGRANDMOTH', '');
INSERT INTO `oli_lu_reldesc` VALUES (91, 67, 'Great Grandson', 'OLI_RELDESC_GREATGRANDSON', '');
INSERT INTO `oli_lu_reldesc` VALUES (92, 64, 'Great Uncle (Granduncle)', 'OLI_RELDESC_GREATUNCLE', '');
INSERT INTO `oli_lu_reldesc` VALUES (93, 111, 'Group Conversion', 'OLI_RELDESC_GROUPCONV', 'The replaced policy is from a group conversion.');
INSERT INTO `oli_lu_reldesc` VALUES (94, 110, 'Guaranteed Purchase Option', 'OLI_RELDESC_GPO', 'The policy is being replaced as a result of a Guaranteed Purchase Option.');
INSERT INTO `oli_lu_reldesc` VALUES (95, 27, 'Half Brother', 'OLI_RELDESC_HALF_BROTHER', 'Have one parent in common. For example, same mother, different fathers.');
INSERT INTO `oli_lu_reldesc` VALUES (96, 28, 'Half Sister', 'OLI_RELDESC_HALF_SISTER', 'Have one parent in common. For example, same mother, different fathers.');
INSERT INTO `oli_lu_reldesc` VALUES (97, 116, 'Housekeeper', 'OLI_RELDESC_HOUSEKEEPER', '');
INSERT INTO `oli_lu_reldesc` VALUES (98, 1, 'Husband', 'OLI_RELDESC_HUSBAND', '');
INSERT INTO `oli_lu_reldesc` VALUES (99, 117, 'Informal', 'OLI_RELDESC_INFORMAL', 'Relates the informal holding to the associated holding.');
INSERT INTO `oli_lu_reldesc` VALUES (100, 106, 'Internal Replacement', 'OLI_RELDESC_INTERNAL', 'This is the general term for an Internal Replacement.');
INSERT INTO `oli_lu_reldesc` VALUES (101, 54, 'Legal Agent', 'OLI_RELDESC_LEGALAGENT', '');
INSERT INTO `oli_lu_reldesc` VALUES (102, 4, 'Mother', 'OLI_RELDESC_MOTHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (103, 22, 'Mother-in-law', 'OLI_RELDESC_MOTHINLW', '');
INSERT INTO `oli_lu_reldesc` VALUES (104, 32, 'Nephew', 'OLI_RELDESC_NEPHEW', '');
INSERT INTO `oli_lu_reldesc` VALUES (105, 152, 'Nephew-in-law', 'OLI_RELDESC_NEPHEWINLAW', 'The son of one\'s sister-in-law or brother-in-law; husband of one\'s niece.');
INSERT INTO `oli_lu_reldesc` VALUES (106, 33, 'Niece', 'OLI_RELDESC_NIECE', '');
INSERT INTO `oli_lu_reldesc` VALUES (107, 151, 'Niece-in-law', 'OLI_RELDESC_NIECEINLAW', 'The daughter of one\'s sister-in-law/brother-in-law; wife of one\'s nephew.');
INSERT INTO `oli_lu_reldesc` VALUES (108, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (109, 57, 'Owner of Cash Value', 'OLI_RELDESC_OWNERCV', '');
INSERT INTO `oli_lu_reldesc` VALUES (110, 59, 'Owner of Cash Value and Death Benefit', 'OLI_RELDESC_OWNERCVDB', '');
INSERT INTO `oli_lu_reldesc` VALUES (111, 58, 'Owner of Death Benefit', 'OLI_RELDESC_OWNERDB', '');
INSERT INTO `oli_lu_reldesc` VALUES (112, 39, 'President', 'OLI_RELDESC_PRESIDENT', '');
INSERT INTO `oli_lu_reldesc` VALUES (113, 113, 'Replaced Between Statutory Companies', 'OLI_RELDESC_DIFFCO', 'The policy is being replaced between statutory companies.');
INSERT INTO `oli_lu_reldesc` VALUES (114, 112, 'Replaced in Same Statutory Company', 'OLI_RELDESC_SAMECO', 'The policy being replaced was issued by the same statutory company.');
INSERT INTO `oli_lu_reldesc` VALUES (115, 37, 'Secretary', 'OLI_RELDESC_SECRETARY', '');
INSERT INTO `oli_lu_reldesc` VALUES (116, 91, 'Self', 'OLI_RELDESC_SELF', 'Identifies that information relates back to Party. An example is gathering household insurance information for RISK for the proposed insured, since RISK links back to PARTY.');
INSERT INTO `oli_lu_reldesc` VALUES (117, 8, 'Sister', 'OLI_RELDESC_SISTER', '');
INSERT INTO `oli_lu_reldesc` VALUES (118, 26, 'Sister-in-law', 'OLI_RELDESC_SISTINLW', '');
INSERT INTO `oli_lu_reldesc` VALUES (119, 5, 'Son', 'OLI_RELDESC_SON', '');
INSERT INTO `oli_lu_reldesc` VALUES (120, 23, 'Son-in-law', 'OLI_RELDESC_SONINLW', '');
INSERT INTO `oli_lu_reldesc` VALUES (121, 100, 'Special Care Agency', 'OLI_RELDESC_SPECCAREAGENCY', 'Agency assigned to work with the contact(s) of the deceased client and provide an additional level of service or care.');
INSERT INTO `oli_lu_reldesc` VALUES (122, 101, 'Special Care Agent', 'OLI_RELDESC_SPECCAREAGENT', 'Agent assigned to work with the contact(s) of the deceased client and provide an additional level of service or care.');
INSERT INTO `oli_lu_reldesc` VALUES (123, 149, 'Step Aunt', 'OLI_RELDESC_STEPAUNT', 'The sister of one\'s stepmother or stepfather or the stepsister of one\'s mother or father.');
INSERT INTO `oli_lu_reldesc` VALUES (124, 15, 'Step Brother', 'OLI_RELDESC_STEPBROTH', 'Have no blood relations, different parents, however parents are married to each other.');
INSERT INTO `oli_lu_reldesc` VALUES (125, 148, 'Step Brother-in-law', 'OLI_RELDESC_STEPBROTHERINLAW', 'The step brother of one\'s spouse or the husband of one\'s step sister.');
INSERT INTO `oli_lu_reldesc` VALUES (126, 14, 'Step Daughter', 'OLI_RELDESC_STEPDAUGH', 'A daughter of one\'s husband or wife by a former partner.');
INSERT INTO `oli_lu_reldesc` VALUES (127, 145, 'Step Daughter-in-law', 'OLI_RELDESC_STEPDAUGHTERINLAW', 'The daughter of one\'s wife by a former husband, or of one\'s husband by a former wife.');
INSERT INTO `oli_lu_reldesc` VALUES (128, 12, 'Step Father', 'OLI_RELDESC_STEPFATHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (129, 153, 'Step Father-in-law', 'OLI_RELDESC_STEPFATHERINLAW', 'The stepfather of one\'s spouse.');
INSERT INTO `oli_lu_reldesc` VALUES (130, 141, 'Step Granddaughter', 'OLI_RELDESC_STEPGRANDDAUGHTER', 'The daughter of one\'s stepchild, or the stepdaughter of one\'s child.');
INSERT INTO `oli_lu_reldesc` VALUES (131, 140, 'Step Grandfather', 'OLI_RELDESC_STEPGRANDFATHER', 'The stepfather of one\'s mother or father.');
INSERT INTO `oli_lu_reldesc` VALUES (132, 139, 'Step Grandmother', 'OLI_RELDESC_STEPGRANDMOTHER', 'The stepmother of one\'s mother or father.');
INSERT INTO `oli_lu_reldesc` VALUES (133, 142, 'Step Grandson', 'OLI_RELDESC_STEPGRANDSON', 'The son of one\'s stepchild, or the stepson of one\'s child.');
INSERT INTO `oli_lu_reldesc` VALUES (134, 11, 'Step Mother', 'OLI_RELDESC_STEPMOTHER', '');
INSERT INTO `oli_lu_reldesc` VALUES (135, 143, 'Step Mother-in-law', 'OLI_RELDESC_STEPMOTHERINLAW', 'The stepmother of one\'s spouse.');
INSERT INTO `oli_lu_reldesc` VALUES (136, 138, 'Step Nephew', 'OLI_RELDESC_STEPNEPHEW', 'The son of one\'s stepbrother/sister, or stepson of one\'s brother/sister.');
INSERT INTO `oli_lu_reldesc` VALUES (137, 146, 'Step Niece', 'OLI_RELDESC_STEPNIECE', 'The daughter of one\'s stepbrother/sister, or stepdaughter of one\'s brother/sister.');
INSERT INTO `oli_lu_reldesc` VALUES (138, 16, 'Step Sister', 'OLI_RELDESC_STEPSIST', 'Have no blood relations, different parents, however parents are married to each other.');
INSERT INTO `oli_lu_reldesc` VALUES (139, 147, 'Step Sister-in-law', 'OLI_RELDESC_STEPSISTERINLAW', 'The step sister of one\'s spouse or the wife of one\'s step brother.');
INSERT INTO `oli_lu_reldesc` VALUES (140, 13, 'Step Son', 'OLI_RELDESC_STEPSON', 'A son of one\'s husband or wife by a former partner.');
INSERT INTO `oli_lu_reldesc` VALUES (141, 137, 'Step Son-in-law', 'OLI_RELDESC_STEPSONINLAW', 'The son of one\'s wife by a former husband, or of one\'s husband by a former wife.');
INSERT INTO `oli_lu_reldesc` VALUES (142, 150, 'Step Uncle', 'OLI_RELDESC_STEPUNCLE', 'The brother of one\'s stepmother or stepfather. The stepbrother of one\'s mother or father.');
INSERT INTO `oli_lu_reldesc` VALUES (143, 80, 'Stockbroker', 'OLI_RELDESC_STOCKBRKR', '');
INSERT INTO `oli_lu_reldesc` VALUES (144, 154, 'Superseded Policy', 'OLI_RELDESC_SUPERSEDED', 'The applied for holding has been superseded by a subsequent holding.');
INSERT INTO `oli_lu_reldesc` VALUES (145, 52, 'Tax Agent', 'OLI_RELDESC_TAXAGENT', '');
INSERT INTO `oli_lu_reldesc` VALUES (146, 109, 'Term Conversion', 'OLI_RELDESC_TERMCONV', 'The policy is being replaced as a result of a Term Conversion.');
INSERT INTO `oli_lu_reldesc` VALUES (147, 30, 'Uncle', 'OLI_RELDESC_UNCLE', '');
INSERT INTO `oli_lu_reldesc` VALUES (148, 121, 'Uncle-in-law', 'OLI_RELDESC_UNCLEINLAW', 'Uncle-in-law.');
INSERT INTO `oli_lu_reldesc` VALUES (149, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_reldesc` VALUES (150, 87, 'Valuation Analyst', 'OLI_RELDESC_VALUATIONANALYST', '');
INSERT INTO `oli_lu_reldesc` VALUES (151, 40, 'Vice President', 'OLI_RELDESC_VICEPRES', '');
INSERT INTO `oli_lu_reldesc` VALUES (152, 2, 'Wife', 'OLI_RELDESC_WIFE', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_smokerstat
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_smokerstat`;
CREATE TABLE `oli_lu_smokerstat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_smokerstat_value_unique` (`value`),
  UNIQUE KEY `oli_lu_smokerstat_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_smokerstat
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_smokerstat` VALUES (1, 3, 'Current tobacco user', 'OLI_TOBACCO_CURRENT', '');
INSERT INTO `oli_lu_smokerstat` VALUES (2, 1, 'Never used tobacco in any form.', 'OLI_TOBACCO_NEVER', '');
INSERT INTO `oli_lu_smokerstat` VALUES (3, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_smokerstat` VALUES (4, 2, 'Prior tobacco user', 'OLI_TOBACCO_PRIOR', '');
INSERT INTO `oli_lu_smokerstat` VALUES (5, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_state
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_state`;
CREATE TABLE `oli_lu_state` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_state_value_unique` (`value`),
  UNIQUE KEY `oli_lu_state_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_state
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_state` VALUES (1, 651, 'Aberdeen City', 'OLI_GBR_ABE', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (2, 652, 'Aberdeenshire', 'OLI_GBR_ABD', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (3, 401, 'Aguascalientes', 'OLI_MEX_AGS', '');
INSERT INTO `oli_lu_state` VALUES (4, 301, 'Aichi', 'OLI_JPN_AICHI', '');
INSERT INTO `oli_lu_state` VALUES (5, 33001, 'Ain', 'OLI_FRA_DEPT001', 'Department in the region of Rhône-Alpes');
INSERT INTO `oli_lu_state` VALUES (6, 33002, 'Aisne', 'OLI_FRA_DEPT002', 'Department in the region of Picardie');
INSERT INTO `oli_lu_state` VALUES (7, 105, 'AKA NL Newfoundland and Labrador', 'OLI_CAN_NF', '');
INSERT INTO `oli_lu_state` VALUES (8, 302, 'Akita', 'OLI_JPN_AKITA', '');
INSERT INTO `oli_lu_state` VALUES (9, 1, 'Alabama', 'OLI_USA_AL', '');
INSERT INTO `oli_lu_state` VALUES (10, 2, 'Alaska', 'OLI_USA_AK', '');
INSERT INTO `oli_lu_state` VALUES (11, 101, 'Alberta', 'OLI_CAN_AB', '');
INSERT INTO `oli_lu_state` VALUES (12, 33003, 'Allier', 'OLI_FRA_DEPT003', 'Department in the region of Auvergne');
INSERT INTO `oli_lu_state` VALUES (13, 1000, 'All states', 'OLI_ALL_STATES', '');
INSERT INTO `oli_lu_state` VALUES (14, 33004, 'Alpes-de-Haute-Provence', 'OLI_FRA_DEPT004', 'Department in the region of Provence-Alpes-Côte d\'Azur');
INSERT INTO `oli_lu_state` VALUES (15, 33006, 'Alpes-Maritimes', 'OLI_FRA_DEPT006', 'Department in the region of Provence-Alpes-Côte d\'Azur');
INSERT INTO `oli_lu_state` VALUES (16, 3, 'American Samoa', 'OLI_USA_AS', '');
INSERT INTO `oli_lu_state` VALUES (17, 653, 'Angus', 'OLI_GBR_ANS', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (18, 611, 'Antrim', 'OLI_GBR_ANT', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (19, 303, 'Aomori', 'OLI_JPN_AOMORI', '');
INSERT INTO `oli_lu_state` VALUES (20, 33007, 'Ardèche', 'OLI_FRA_DEPT007', 'Department in the region of Rhône-Alpes');
INSERT INTO `oli_lu_state` VALUES (21, 33008, 'Ardennes', 'OLI_FRA_DEPT008', 'Department in the region of Champagne-Ardenne');
INSERT INTO `oli_lu_state` VALUES (22, 612, 'Ards', 'OLI_GBR_ARD', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (23, 654, 'Argyll and Bute', 'OLI_GBR_AGB', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (24, 33009, 'Ariège', 'OLI_FRA_DEPT009', 'Department in the region of Midi-Pyrénées');
INSERT INTO `oli_lu_state` VALUES (25, 4, 'Arizona', 'OLI_USA_AZ', '');
INSERT INTO `oli_lu_state` VALUES (26, 5, 'Arkansas', 'OLI_USA_AR', '');
INSERT INTO `oli_lu_state` VALUES (27, 613, 'Armagh', 'OLI_GBR_ARM', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (28, 60, 'Armed Forces Americas (except Canada)', 'OLI_USA_AA', '');
INSERT INTO `oli_lu_state` VALUES (29, 61, 'Armed Forces Canada, Africa, Europe, Middle East', 'OLI_USA_AE', '');
INSERT INTO `oli_lu_state` VALUES (30, 33010, 'Aube', 'OLI_FRA_DEPT010', 'Department in the region of Champagne-Ardenne');
INSERT INTO `oli_lu_state` VALUES (31, 33011, 'Aude', 'OLI_FRA_DEPT011', 'Department in the region of Languedoc-Roussillon');
INSERT INTO `oli_lu_state` VALUES (32, 201, 'Australian Capital Territory', 'OLI_AUS_ACT', '');
INSERT INTO `oli_lu_state` VALUES (33, 33012, 'Aveyron', 'OLI_FRA_DEPT012', 'Department in the region of Midi-Pyrénées');
INSERT INTO `oli_lu_state` VALUES (34, 402, 'Baja California', 'OLI_MEX_BC', '');
INSERT INTO `oli_lu_state` VALUES (35, 403, 'Baja California Sur', 'OLI_MEX_BCS', '');
INSERT INTO `oli_lu_state` VALUES (36, 614, 'Ballymena', 'OLI_GBR_BLA', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (37, 615, 'Ballymoney', 'OLI_GBR_BLY', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (38, 616, 'Banbridge', 'OLI_GBR_BNB', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (39, 752, 'Barking and Dagenham', 'OLI_GBR_BDG', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (40, 753, 'Barnet', 'OLI_GBR_BNE', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (41, 822, 'Barnsley', 'OLI_GBR_BNS', 'South Yorkshire District in England');
INSERT INTO `oli_lu_state` VALUES (42, 33067, 'Bas-Rhin', 'OLI_FRA_DEPT067', 'Department in the region of Alsace');
INSERT INTO `oli_lu_state` VALUES (43, 832, 'Bath and North East Somerset', 'OLI_GBR_BAS', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (44, 789, 'Bedfordshire', 'OLI_GBR_BDF', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (45, 617, 'Belfast', 'OLI_GBR_BFS', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (46, 754, 'Bexley', 'OLI_GBR_BEX', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (47, 879, 'Birmingham', 'OLI_GBR_BIR', 'West Midlands District in England');
INSERT INTO `oli_lu_state` VALUES (48, 833, 'Blackburn with Darwen', 'OLI_GBR_BBD', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (49, 834, 'Blackpool', 'OLI_GBR_BPL', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (50, 701, 'Blaenau Gwent', 'OLI_GBR_BGW', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (51, 742, 'Bolton', 'OLI_GBR_BOL', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (52, 33013, 'Bouches-du-Rhône', 'OLI_FRA_DEPT013', 'Department in the region of Provence-Alpes-Côte d\'Azur');
INSERT INTO `oli_lu_state` VALUES (53, 835, 'Bournemouth', 'OLI_GBR_BMH', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (54, 836, 'Bracknell Forest', 'OLI_GBR_BRC', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (55, 886, 'Bradford', 'OLI_GBR_BRD', 'West Yorkshire District in England');
INSERT INTO `oli_lu_state` VALUES (56, 755, 'Brent', 'OLI_GBR_BEN', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (57, 702, 'Bridgend', 'OLI_GBR_BGE', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (58, 837, 'Brighton and Hove', 'OLI_GBR_BNH', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (59, 838, 'Bristol, City of', 'OLI_GBR_BST', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (60, 102, 'British Columbia', 'OLI_CAN_BC', '');
INSERT INTO `oli_lu_state` VALUES (61, 756, 'Bromley', 'OLI_GBR_BRY', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (62, 790, 'Buckinghamshire', 'OLI_GBR_BKM', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (63, 743, 'Bury', 'OLI_GBR_BUR', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (64, 703, 'Caerphilly', 'OLI_GBR_CAY', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (65, 887, 'Calderdale', 'OLI_GBR_CLD', 'West Yorkshire District in England');
INSERT INTO `oli_lu_state` VALUES (66, 6, 'California', 'OLI_USA_CA', '');
INSERT INTO `oli_lu_state` VALUES (67, 33014, 'Calvados', 'OLI_FRA_DEPT014', 'Department in the region of Basse-Normandie');
INSERT INTO `oli_lu_state` VALUES (68, 791, 'Cambridgeshire', 'OLI_GBR_CAM', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (69, 757, 'Camden', 'OLI_GBR_CMD', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (70, 404, 'Campeche', 'OLI_MEX_CAMP', '');
INSERT INTO `oli_lu_state` VALUES (71, 33015, 'Cantal', 'OLI_FRA_DEPT015', 'Department in the region of Auvergne');
INSERT INTO `oli_lu_state` VALUES (72, 704, 'Cardiff', 'OLI_GBR_CRF', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (73, 705, 'Carmarthenshire', 'OLI_GBR_CMN', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (74, 618, 'Carrickfergus', 'OLI_GBR_CKF', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (75, 619, 'Castlereagh', 'OLI_GBR_CSR', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (76, 706, 'Ceredigion [Sir Ceredigion]', 'OLI_GBR_CGN', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (77, 33016, 'Charente', 'OLI_FRA_DEPT016', 'Department in the region of Poitou-Charentes');
INSERT INTO `oli_lu_state` VALUES (78, 33017, 'Charente-Maritime', 'OLI_FRA_DEPT017', 'Department in the region of Poitou-Charentes');
INSERT INTO `oli_lu_state` VALUES (79, 33018, 'Cher', 'OLI_FRA_DEPT018', 'Department in the region of Centre');
INSERT INTO `oli_lu_state` VALUES (80, 792, 'Cheshire', 'OLI_GBR_CHS', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (81, 405, 'Chiapas', 'OLI_MEX_CHIS', '');
INSERT INTO `oli_lu_state` VALUES (82, 304, 'Chiba', 'OLI_JPN_CHIBA', '');
INSERT INTO `oli_lu_state` VALUES (83, 406, 'Chihuahua', 'OLI_MEX_CHIH', '');
INSERT INTO `oli_lu_state` VALUES (84, 655, 'Clackmannanshire', 'OLI_GBR_CLK', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (85, 407, 'Coahuila', 'OLI_MEX_COAH', '');
INSERT INTO `oli_lu_state` VALUES (86, 620, 'Coleraine', 'OLI_GBR_CLR', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (87, 408, 'Colima', 'OLI_MEX_COL', '');
INSERT INTO `oli_lu_state` VALUES (88, 7, 'Colorado', 'OLI_USA_CO', '');
INSERT INTO `oli_lu_state` VALUES (89, 8, 'Connecticut', 'OLI_USA_CT', '');
INSERT INTO `oli_lu_state` VALUES (90, 707, 'Conwy', 'OLI_GBR_CWY', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (91, 621, 'Cookstown', 'OLI_GBR_CKT', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (92, 793, 'Cornwall', 'OLI_GBR_CON', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (93, 33019, 'Corrèze', 'OLI_FRA_DEPT019', 'Department in the region of Limousin');
INSERT INTO `oli_lu_state` VALUES (94, 33901, 'Corse-du-Sud', 'OLI_FRA_DEPT02A', 'Department in the region of Corsica');
INSERT INTO `oli_lu_state` VALUES (95, 33021, 'Côte-d\'Or', 'OLI_FRA_DEPT021', 'Department in the region of Bourgogne');
INSERT INTO `oli_lu_state` VALUES (96, 33022, 'Côtes-d\'Armor', 'OLI_FRA_DEPT022', 'Department in the region of Bretagne');
INSERT INTO `oli_lu_state` VALUES (97, 880, 'Coventry', 'OLI_GBR_COV', 'West Midlands District in England');
INSERT INTO `oli_lu_state` VALUES (98, 622, 'Craigavon', 'OLI_GBR_CGV', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (99, 33023, 'Creuse', 'OLI_FRA_DEPT023', 'Department in the region of Limousin');
INSERT INTO `oli_lu_state` VALUES (100, 758, 'Croydon', 'OLI_GBR_CRY', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (101, 794, 'Cumbria', 'OLI_GBR_CMA', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (102, 839, 'Darlington', 'OLI_GBR_DAL', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (103, 9, 'Delaware', 'OLI_USA_DE', '');
INSERT INTO `oli_lu_state` VALUES (104, 708, 'Denbighshire', 'OLI_GBR_DEN', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (105, 840, 'Derby', 'OLI_GBR_DER', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (106, 795, 'Derbyshire', 'OLI_GBR_DBY', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (107, 623, 'Derry', 'OLI_GBR_DRY', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (108, 33079, 'Deux-Sèvres', 'OLI_FRA_DEPT079', 'Department in the region of Poitou-Charentes');
INSERT INTO `oli_lu_state` VALUES (109, 796, 'Devon', 'OLI_GBR_DEV', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (110, 10, 'District of Columbia', 'OLI_USA_DC', '');
INSERT INTO `oli_lu_state` VALUES (111, 409, 'Distrito Federal', 'OLI_MEX_DF', '');
INSERT INTO `oli_lu_state` VALUES (112, 823, 'Doncaster', 'OLI_GBR_DNC', 'South Yorkshire District in England');
INSERT INTO `oli_lu_state` VALUES (113, 33024, 'Dordogne', 'OLI_FRA_DEPT024', 'Department in the region of Aquitaine');
INSERT INTO `oli_lu_state` VALUES (114, 741, 'Dorset', 'OLI_GBR_DOR', 'County');
INSERT INTO `oli_lu_state` VALUES (115, 33025, 'Doubs', 'OLI_FRA_DEPT025', 'Department in the region of Franche-Comté');
INSERT INTO `oli_lu_state` VALUES (116, 624, 'Down', 'OLI_GBR_DOW', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (117, 33026, 'Drôme', 'OLI_FRA_DEPT026', 'Department in the region of Rhône-Alpes');
INSERT INTO `oli_lu_state` VALUES (118, 881, 'Dudley', 'OLI_GBR_DUD', 'West Midlands District in England');
INSERT INTO `oli_lu_state` VALUES (119, 656, 'Dumfries and Galloway', 'OLI_GBR_DGY', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (120, 657, 'Dundee City', 'OLI_GBR_DND', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (121, 625, 'Dungannon', 'OLI_GBR_DGN', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (122, 410, 'Durango', 'OLI_MEX_DGO', '');
INSERT INTO `oli_lu_state` VALUES (123, 797, 'Durham', 'OLI_GBR_DUR', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (124, 759, 'Ealing', 'OLI_GBR_EAL', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (125, 658, 'East Ayrshire', 'OLI_GBR_EAY', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (126, 659, 'East Dunbartonshire', 'OLI_GBR_EDU', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (127, 506, 'Eastern Cape', 'OLI_ZA_EASTCAPE', '');
INSERT INTO `oli_lu_state` VALUES (128, 660, 'East Lothian', 'OLI_GBR_ELN', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (129, 661, 'East Renfrewshire', 'OLI_GBR_ERW', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (130, 841, 'East Riding of Yorkshire', 'OLI_GBR_ERY', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (131, 798, 'East Sussex', 'OLI_GBR_ESX', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (132, 662, 'Edinburgh, City of', 'OLI_GBR_EDH', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (133, 305, 'Ehime', 'OLI_JPN_EHIME', '');
INSERT INTO `oli_lu_state` VALUES (134, 663, 'Eilean Siar', 'OLI_GBR_ELS', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (135, 760, 'Enfield', 'OLI_GBR_ENF', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (136, 799, 'Essex', 'OLI_GBR_ESS', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (137, 33091, 'Essonne', 'OLI_FRA_DEPT091', 'Department in the region of Île-de-France');
INSERT INTO `oli_lu_state` VALUES (138, 33027, 'Eure', 'OLI_FRA_DEPT027', 'Department in the region of Haute-Normandie');
INSERT INTO `oli_lu_state` VALUES (139, 33028, 'Eure-et-Loir', 'OLI_FRA_DEPT028', 'Department in the region of Centre');
INSERT INTO `oli_lu_state` VALUES (140, 664, 'Falkirk', 'OLI_GBR_FAL', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (141, 11, 'Federated States of Micronesia', 'OLI_USA_FS', '');
INSERT INTO `oli_lu_state` VALUES (142, 626, 'Fermanagh', 'OLI_GBR_FER', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (143, 665, 'Fife', 'OLI_GBR_FIF', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (144, 33029, 'Finistère', 'OLI_FRA_DEPT029', 'Department in the region of Bretagne');
INSERT INTO `oli_lu_state` VALUES (145, 709, 'Flintshire', 'OLI_GBR_FLN', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (146, 12, 'Florida', 'OLI_USA_FL', '');
INSERT INTO `oli_lu_state` VALUES (147, 507, 'Freestate', 'OLI_ZA_FREESTATE', '');
INSERT INTO `oli_lu_state` VALUES (148, 306, 'Fukui', 'OLI_JPN_FUKUI', '');
INSERT INTO `oli_lu_state` VALUES (149, 307, 'Fukuoka', 'OLI_JPN_FUKUOKA', '');
INSERT INTO `oli_lu_state` VALUES (150, 308, 'Fukushima', 'OLI_JPN_FUKUSHIMA', '');
INSERT INTO `oli_lu_state` VALUES (151, 33030, 'Gard', 'OLI_FRA_DEPT030', 'Department in the region of Languedoc-Roussillon');
INSERT INTO `oli_lu_state` VALUES (152, 827, 'Gateshead', 'OLI_GBR_GAT', 'Tyne and Wear District in England');
INSERT INTO `oli_lu_state` VALUES (153, 501, 'Gauteng', 'OLI_ZA_GAUTENG', '');
INSERT INTO `oli_lu_state` VALUES (154, 13, 'Georgia', 'OLI_USA_GA', '');
INSERT INTO `oli_lu_state` VALUES (155, 33032, 'Gers', 'OLI_FRA_DEPT032', 'Department in the region of Midi-Pyrénées');
INSERT INTO `oli_lu_state` VALUES (156, 309, 'Gifu', 'OLI_JPN_GIFU', '');
INSERT INTO `oli_lu_state` VALUES (157, 33033, 'Gironde', 'OLI_FRA_DEPT033', 'Department in the region of Aquitaine');
INSERT INTO `oli_lu_state` VALUES (158, 666, 'Glasgow City', 'OLI_GBR_GLG', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (159, 800, 'Gloucestershire', 'OLI_GBR_GLS', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (160, 761, 'Greenwich', 'OLI_GBR_GRE', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (161, 33971, 'Guadeloupe', 'OLI_FRA_DEPT971', 'Department in the region of Guadeloupe');
INSERT INTO `oli_lu_state` VALUES (162, 14, 'Guam', 'OLI_USA_GU', '');
INSERT INTO `oli_lu_state` VALUES (163, 411, 'Guanajuato', 'OLI_MEX_GTO', '');
INSERT INTO `oli_lu_state` VALUES (164, 80, 'Guantanamo Bay (US Naval Base) Cuba', 'OLI_USA_GB', '');
INSERT INTO `oli_lu_state` VALUES (165, 601, 'Guernsey [Guernesey]', 'OLI_GBR_GSY', 'One of Channel Islands');
INSERT INTO `oli_lu_state` VALUES (166, 412, 'Guerrero', 'OLI_MEX_GRO', '');
INSERT INTO `oli_lu_state` VALUES (167, 310, 'Gunma', 'OLI_JPN_GUNMA', '');
INSERT INTO `oli_lu_state` VALUES (168, 710, 'Gwynedd', 'OLI_GBR_GWN', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (169, 762, 'Hackney', 'OLI_GBR_HCK', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (170, 842, 'Halton', 'OLI_GBR_HAL', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (171, 763, 'Hammersmith and Fulham', 'OLI_GBR_HMF', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (172, 801, 'Hampshire', 'OLI_GBR_HAM', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (173, 764, 'Haringey', 'OLI_GBR_HRY', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (174, 765, 'Harrow', 'OLI_GBR_HRW', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (175, 843, 'Hartlepool', 'OLI_GBR_HPL', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (176, 33902, 'Haute-Corse', 'OLI_FRA_DEPT02B', 'Department in the region of Corsica');
INSERT INTO `oli_lu_state` VALUES (177, 33031, 'Haute-Garonne', 'OLI_FRA_DEPT031', 'Department in the region of Midi-Pyrénées');
INSERT INTO `oli_lu_state` VALUES (178, 33043, 'Haute-Loire', 'OLI_FRA_DEPT043', 'Department in the region of Auvergne');
INSERT INTO `oli_lu_state` VALUES (179, 33052, 'Haute-Marne', 'OLI_FRA_DEPT052', 'Department in the region of Champagne-Ardenne');
INSERT INTO `oli_lu_state` VALUES (180, 33005, 'Hautes-Alpes', 'OLI_FRA_DEPT005', 'Department in the region of Provence-Alpes-Côte d\'Azur');
INSERT INTO `oli_lu_state` VALUES (181, 33070, 'Haute-Saône', 'OLI_FRA_DEPT070', 'Department in the region of Franche-Comté');
INSERT INTO `oli_lu_state` VALUES (182, 33074, 'Haute-Savoie', 'OLI_FRA_DEPT074', 'Department in the region of Rhône-Alpes');
INSERT INTO `oli_lu_state` VALUES (183, 33065, 'Hautes-Pyrénées', 'OLI_FRA_DEPT065', 'Department in the region of Midi-Pyrénées');
INSERT INTO `oli_lu_state` VALUES (184, 33087, 'Haute-Vienne', 'OLI_FRA_DEPT087', 'Department in the region of Limousin');
INSERT INTO `oli_lu_state` VALUES (185, 33068, 'Haut-Rhin', 'OLI_FRA_DEPT068', 'Department in the region of Alsace');
INSERT INTO `oli_lu_state` VALUES (186, 33092, 'Hauts-de-Seine', 'OLI_FRA_DEPT092', 'Department in the region of Île-de-France');
INSERT INTO `oli_lu_state` VALUES (187, 766, 'Havering', 'OLI_GBR_HAV', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (188, 15, 'Hawaii', 'OLI_USA_HI', '');
INSERT INTO `oli_lu_state` VALUES (189, 33034, 'Hérault', 'OLI_FRA_DEPT034', 'Department in the region of Languedoc-Roussillon');
INSERT INTO `oli_lu_state` VALUES (190, 844, 'Herefordshire, County of', 'OLI_GBR_HEF', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (191, 802, 'Hertfordshire', 'OLI_GBR_HRT', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (192, 413, 'Hidalgo', 'OLI_MEX_HGO', '');
INSERT INTO `oli_lu_state` VALUES (193, 667, 'Highland', 'OLI_GBR_HLD', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (194, 767, 'Hillingdon', 'OLI_GBR_HIL', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (195, 311, 'Hiroshima', 'OLI_JPN_HIROSHIMA', '');
INSERT INTO `oli_lu_state` VALUES (196, 312, 'Hokkaido', 'OLI_JPN_HOKKAIDO', '');
INSERT INTO `oli_lu_state` VALUES (197, 768, 'Hounslow', 'OLI_GBR_HNS', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (198, 313, 'Hyogo', 'OLI_JPN_HYOGO', '');
INSERT INTO `oli_lu_state` VALUES (199, 314, 'Ibaraki', 'OLI_JPN_IBARAKI', '');
INSERT INTO `oli_lu_state` VALUES (200, 16, 'Idaho', 'OLI_USA_ID', '');
INSERT INTO `oli_lu_state` VALUES (201, 33035, 'Ille-et-Vilaine', 'OLI_FRA_DEPT035', 'Department in the region of Bretagne');
INSERT INTO `oli_lu_state` VALUES (202, 17, 'Illinois', 'OLI_USA_IL', '');
INSERT INTO `oli_lu_state` VALUES (203, 18, 'Indiana', 'OLI_USA_IN', '');
INSERT INTO `oli_lu_state` VALUES (204, 33036, 'Indre', 'OLI_FRA_DEPT036', 'Department in the region of Centre');
INSERT INTO `oli_lu_state` VALUES (205, 33037, 'Indre-et-Loire', 'OLI_FRA_DEPT037', 'Department in the region of Centre');
INSERT INTO `oli_lu_state` VALUES (206, 668, 'Inverclyde', 'OLI_GBR_IVC', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (207, 19, 'Iowa', 'OLI_USA_IA', '');
INSERT INTO `oli_lu_state` VALUES (208, 33038, 'Isère', 'OLI_FRA_DEPT038', 'Department in the region of Rhône-Alpes');
INSERT INTO `oli_lu_state` VALUES (209, 315, 'Ishikawa', 'OLI_JPN_ISHIKAWA', '');
INSERT INTO `oli_lu_state` VALUES (210, 711, 'Isle of Anglesey', 'OLI_GBR_AGY', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (211, 845, 'Isle of Wight', 'OLI_GBR_IOW', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (212, 846, 'Isles of Scilly', 'OLI_GBR_IOS', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (213, 769, 'Islington', 'OLI_GBR_ISL', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (214, 316, 'Iwate', 'OLI_JPN_IWATE', '');
INSERT INTO `oli_lu_state` VALUES (215, 414, 'Jalisco', 'OLI_MEX_JAL', '');
INSERT INTO `oli_lu_state` VALUES (216, 602, 'Jersey', 'OLI_GBR_JSY', 'One of Channel Islands');
INSERT INTO `oli_lu_state` VALUES (217, 33039, 'Jura', 'OLI_FRA_DEPT039', 'Department in the region of Franche-Comté');
INSERT INTO `oli_lu_state` VALUES (218, 317, 'Kagawa', 'OLI_JPN_KAGAWA', '');
INSERT INTO `oli_lu_state` VALUES (219, 318, 'Kagoshima', 'OLI_JPN_KAGOSHIMA', '');
INSERT INTO `oli_lu_state` VALUES (220, 319, 'Kanagawa', 'OLI_JPN_KANAGAWA', '');
INSERT INTO `oli_lu_state` VALUES (221, 20, 'Kansas', 'OLI_USA_KS', '');
INSERT INTO `oli_lu_state` VALUES (222, 770, 'Kensington and Chelsea', 'OLI_GBR_KEC', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (223, 803, 'Kent', 'OLI_GBR_KEN', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (224, 21, 'Kentucky', 'OLI_USA_KY', '');
INSERT INTO `oli_lu_state` VALUES (225, 847, 'Kingston upon Hull, City of', 'OLI_GBR_KHL', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (226, 771, 'Kingston upon Thames', 'OLI_GBR_KTT', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (227, 888, 'Kirklees', 'OLI_GBR_KIR', 'West Yorkshire District in England');
INSERT INTO `oli_lu_state` VALUES (228, 784, 'Knowsley', 'OLI_GBR_KWL', 'Merseyside District in England');
INSERT INTO `oli_lu_state` VALUES (229, 320, 'Kouchi', 'OLI_JPN_KOUCHI', '');
INSERT INTO `oli_lu_state` VALUES (230, 321, 'Kumamoto', 'OLI_JPN_KUMAMOTO', '');
INSERT INTO `oli_lu_state` VALUES (231, 505, 'Kwa Zulu Natal', 'OLI_ZA_KWZULUNATAL', '');
INSERT INTO `oli_lu_state` VALUES (232, 322, 'Kyoto', 'OLI_JPN_KYOTO', '');
INSERT INTO `oli_lu_state` VALUES (233, 772, 'Lambeth', 'OLI_GBR_LBH', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (234, 804, 'Lancashire', 'OLI_GBR_LAN', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (235, 33040, 'Landes', 'OLI_FRA_DEPT040', 'Department in the region of Aquitaine');
INSERT INTO `oli_lu_state` VALUES (236, 627, 'Larne', 'OLI_GBR_LRN', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (237, 889, 'Leeds', 'OLI_GBR_LDS', 'West Yorkshire District in England');
INSERT INTO `oli_lu_state` VALUES (238, 848, 'Leicester', 'OLI_GBR_LCE', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (239, 805, 'Leicestershire', 'OLI_GBR_LEC', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (240, 773, 'Lewisham', 'OLI_GBR_LEW', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (241, 628, 'Limavady', 'OLI_GBR_LMV', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (242, 806, 'Lincolnshire', 'OLI_GBR_LIN', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (243, 629, 'Lisburn', 'OLI_GBR_LSB', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (244, 785, 'Liverpool', 'OLI_GBR_LIV', 'Merseyside District in England');
INSERT INTO `oli_lu_state` VALUES (245, 33042, 'Loire', 'OLI_FRA_DEPT042', 'Department in the region of Rhône-Alpes');
INSERT INTO `oli_lu_state` VALUES (246, 33044, 'Loire-Atlantique', 'OLI_FRA_DEPT044', 'Department in the region of Pays de la Loire');
INSERT INTO `oli_lu_state` VALUES (247, 33045, 'Loiret', 'OLI_FRA_DEPT045', 'Department in the region of Centre');
INSERT INTO `oli_lu_state` VALUES (248, 33041, 'Loir-et-Cher', 'OLI_FRA_DEPT041', 'Department in the region of Centre');
INSERT INTO `oli_lu_state` VALUES (249, 826, 'London, City of', 'OLI_GBR_LND', 'Special Area');
INSERT INTO `oli_lu_state` VALUES (250, 33046, 'Lot', 'OLI_FRA_DEPT046', 'Department in the region of Midi-Pyrénées');
INSERT INTO `oli_lu_state` VALUES (251, 33047, 'Lot-et-Garonne', 'OLI_FRA_DEPT047', 'Department in the region of Aquitaine');
INSERT INTO `oli_lu_state` VALUES (252, 22, 'Louisiana', 'OLI_USA_LA', '');
INSERT INTO `oli_lu_state` VALUES (253, 33048, 'Lozère', 'OLI_FRA_DEPT048', 'Department in the region of Languedoc-Roussillon');
INSERT INTO `oli_lu_state` VALUES (254, 849, 'Luton', 'OLI_GBR_LUT', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (255, 630, 'Magherafelt', 'OLI_GBR_MFT', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (256, 23, 'Maine', 'OLI_USA_ME', '');
INSERT INTO `oli_lu_state` VALUES (257, 33049, 'Maine-et-Loire', 'OLI_FRA_DEPT049', 'Department in the region of Pays de la Loire');
INSERT INTO `oli_lu_state` VALUES (258, 33050, 'Manche', 'OLI_FRA_DEPT050', 'Department in the region of Basse-Normandie');
INSERT INTO `oli_lu_state` VALUES (259, 744, 'Manchester', 'OLI_GBR_MAN', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (260, 103, 'Manitoba', 'OLI_CAN_MB', '');
INSERT INTO `oli_lu_state` VALUES (261, 33051, 'Marne', 'OLI_FRA_DEPT051', 'Department in the region of Champagne-Ardenne');
INSERT INTO `oli_lu_state` VALUES (262, 24, 'Marshall Islands', 'OLI_USA_MH', '');
INSERT INTO `oli_lu_state` VALUES (263, 25, 'Maryland', 'OLI_USA_MD', '');
INSERT INTO `oli_lu_state` VALUES (264, 26, 'Massachusetts', 'OLI_USA_MA', '');
INSERT INTO `oli_lu_state` VALUES (265, 33053, 'Mayenne', 'OLI_FRA_DEPT053', 'Department in the region of Pays de la Loire');
INSERT INTO `oli_lu_state` VALUES (266, 850, 'Medway', 'OLI_GBR_MDW', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (267, 712, 'Merthyr Tydfil', 'OLI_GBR_MTY', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (268, 774, 'Merton', 'OLI_GBR_MRT', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (269, 33054, 'Meurthe-et-Moselle', 'OLI_FRA_DEPT054', 'Department in the region of Lorraine');
INSERT INTO `oli_lu_state` VALUES (270, 33055, 'Meuse', 'OLI_FRA_DEPT055', 'Department in the region of Lorraine');
INSERT INTO `oli_lu_state` VALUES (271, 415, 'México', 'OLI_MEX_MEX', '');
INSERT INTO `oli_lu_state` VALUES (272, 27, 'Michigan', 'OLI_USA_MI', '');
INSERT INTO `oli_lu_state` VALUES (273, 416, 'Michoacan', 'OLI_MEX_MICH', '');
INSERT INTO `oli_lu_state` VALUES (274, 851, 'Middlesbrough', 'OLI_GBR_MDB', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (275, 669, 'Midlothian', 'OLI_GBR_MLN', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (276, 323, 'Mie', 'OLI_JPN_MIE', '');
INSERT INTO `oli_lu_state` VALUES (277, 852, 'Milton Keynes', 'OLI_GBR_MIK', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (278, 28, 'Minnesota', 'OLI_USA_MN', '');
INSERT INTO `oli_lu_state` VALUES (279, 29, 'Mississippi', 'OLI_USA_MS', '');
INSERT INTO `oli_lu_state` VALUES (280, 30, 'Missouri', 'OLI_USA_MO', '');
INSERT INTO `oli_lu_state` VALUES (281, 324, 'Miyagi', 'OLI_JPN_MIYAGI', '');
INSERT INTO `oli_lu_state` VALUES (282, 325, 'Miyazaki', 'OLI_JPN_MIYAZAKI', '');
INSERT INTO `oli_lu_state` VALUES (283, 713, 'Monmouthshire', 'OLI_GBR_MON', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (284, 31, 'Montana', 'OLI_USA_MT', '');
INSERT INTO `oli_lu_state` VALUES (285, 670, 'Moray', 'OLI_GBR_MRY', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (286, 33056, 'Morbihan', 'OLI_FRA_DEPT056', 'Department in the region of Bretagne');
INSERT INTO `oli_lu_state` VALUES (287, 417, 'Morelos', 'OLI_MEX_MOR', '');
INSERT INTO `oli_lu_state` VALUES (288, 33057, 'Moselle', 'OLI_FRA_DEPT057', 'Department in the region of Lorraine');
INSERT INTO `oli_lu_state` VALUES (289, 631, 'Moyle', 'OLI_GBR_MYL', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (290, 509, 'Mpumalanga', 'OLI_ZA_MPUMALANGA', '');
INSERT INTO `oli_lu_state` VALUES (291, 326, 'Nagano', 'OLI_JPN_NAGANO', '');
INSERT INTO `oli_lu_state` VALUES (292, 327, 'Nagasaki', 'OLI_JPN_NAGASAKI', '');
INSERT INTO `oli_lu_state` VALUES (293, 328, 'Nara', 'OLI_JPN_NARA', '');
INSERT INTO `oli_lu_state` VALUES (294, 418, 'Nayarit', 'OLI_MEX_NAY', '');
INSERT INTO `oli_lu_state` VALUES (295, 714, 'Neath Port Talbot', 'OLI_GBR_NTL', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (296, 32, 'Nebraska', 'OLI_USA_NE', '');
INSERT INTO `oli_lu_state` VALUES (297, 33, 'Nevada', 'OLI_USA_NV', '');
INSERT INTO `oli_lu_state` VALUES (298, 104, 'New Brunswick', 'OLI_CAN_NB', '');
INSERT INTO `oli_lu_state` VALUES (299, 828, 'Newcastle upon Tyne', 'OLI_GBR_NET', 'Tyne and Wear District in England');
INSERT INTO `oli_lu_state` VALUES (300, 775, 'Newham', 'OLI_GBR_NWM', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (301, 34, 'New Hampshire', 'OLI_USA_NH', '');
INSERT INTO `oli_lu_state` VALUES (302, 35, 'New Jersey', 'OLI_USA_NJ', '');
INSERT INTO `oli_lu_state` VALUES (303, 36, 'New Mexico', 'OLI_USA_NM', '');
INSERT INTO `oli_lu_state` VALUES (304, 715, 'Newport', 'OLI_GBR_NWP', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (305, 632, 'Newry and Mourne', 'OLI_GBR_NYM', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (306, 202, 'New South Wales', 'OLI_AUS_NSW', '');
INSERT INTO `oli_lu_state` VALUES (307, 633, 'Newtownabbey', 'OLI_GBR_NTA', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (308, 37, 'New York', 'OLI_USA_NY', '');
INSERT INTO `oli_lu_state` VALUES (309, 33058, 'Nièvre', 'OLI_FRA_DEPT058', 'Department in the region of Bourgogne');
INSERT INTO `oli_lu_state` VALUES (310, 329, 'Niigata', 'OLI_JPN_NIIGATA', '');
INSERT INTO `oli_lu_state` VALUES (311, 33059, 'Nord', 'OLI_FRA_DEPT059', 'Department in the region of Nord-Pas-de-Calais');
INSERT INTO `oli_lu_state` VALUES (312, 807, 'Norfolk', 'OLI_GBR_NFK', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (313, 809, 'Northamptonshire', 'OLI_GBR_NTH', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (314, 671, 'North Ayrshire', 'OLI_GBR_NAY', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (315, 38, 'North Carolina', 'OLI_USA_NC', '');
INSERT INTO `oli_lu_state` VALUES (316, 39, 'North Dakota', 'OLI_USA_ND', '');
INSERT INTO `oli_lu_state` VALUES (317, 634, 'North Down', 'OLI_GBR_NDN', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (318, 853, 'North East Lincolnshire', 'OLI_GBR_NEL', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (319, 508, 'Northern Cape', 'OLI_ZA_NORTHCAPE', '');
INSERT INTO `oli_lu_state` VALUES (320, 40, 'Northern Mariana Islands', 'OLI_USA_MP', '');
INSERT INTO `oli_lu_state` VALUES (321, 503, 'Northern Province', 'OLI_ZA_NORTHPROVINCE', '');
INSERT INTO `oli_lu_state` VALUES (322, 203, 'Northern Territory', 'OLI_AUS_NT', '');
INSERT INTO `oli_lu_state` VALUES (323, 672, 'North Lanarkshire', 'OLI_GBR_NLK', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (324, 854, 'North Lincolnshire', 'OLI_GBR_NLN', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (325, 855, 'North Somerset', 'OLI_GBR_NSM', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (326, 829, 'North Tyneside', 'OLI_GBR_NTY', 'Tyne and Wear District in England');
INSERT INTO `oli_lu_state` VALUES (327, 810, 'Northumberland', 'OLI_GBR_NBL', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (328, 504, 'Northwest Province', 'OLI_ZA_NWPROVINCE', '');
INSERT INTO `oli_lu_state` VALUES (329, 106, 'Northwest Territories', 'OLI_CAN_NT', '');
INSERT INTO `oli_lu_state` VALUES (330, 808, 'North Yorkshire', 'OLI_GBR_NYK', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (331, 856, 'Nottingham', 'OLI_GBR_NGM', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (332, 811, 'Nottinghamshire', 'OLI_GBR_NTT', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (333, 107, 'Nova Scotia', 'OLI_CAN_NS', '');
INSERT INTO `oli_lu_state` VALUES (334, 419, 'Nuevo León', 'OLI_MEX_NL', '');
INSERT INTO `oli_lu_state` VALUES (335, 113, 'Nunavut', 'OLI_CAN_NUNAVUT', '');
INSERT INTO `oli_lu_state` VALUES (336, 420, 'Oaxaca', 'OLI_MEX_OAX', '');
INSERT INTO `oli_lu_state` VALUES (337, 41, 'Ohio', 'OLI_USA_OH', '');
INSERT INTO `oli_lu_state` VALUES (338, 33060, 'Oise', 'OLI_FRA_DEPT060', 'Department in the region of Picardie');
INSERT INTO `oli_lu_state` VALUES (339, 330, 'Oita', 'OLI_JPN_OITA', '');
INSERT INTO `oli_lu_state` VALUES (340, 331, 'Okayama', 'OLI_JPN_OKAYAMA', '');
INSERT INTO `oli_lu_state` VALUES (341, 332, 'Okinawa', 'OLI_JPN_OKINAWA', '');
INSERT INTO `oli_lu_state` VALUES (342, 42, 'Oklahoma', 'OLI_USA_OK', '');
INSERT INTO `oli_lu_state` VALUES (343, 745, 'Oldham', 'OLI_GBR_OLD', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (344, 635, 'Omagh', 'OLI_GBR_OMH', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (345, 108, 'Ontario', 'OLI_CAN_ON', '');
INSERT INTO `oli_lu_state` VALUES (346, 43, 'Oregon', 'OLI_USA_OR', '');
INSERT INTO `oli_lu_state` VALUES (347, 673, 'Orkney Islands', 'OLI_GBR_ORK', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (348, 33061, 'Orne', 'OLI_FRA_DEPT061', 'Department in the region of Basse-Normandie');
INSERT INTO `oli_lu_state` VALUES (349, 333, 'Osaka', 'OLI_JPN_OSAKA', '');
INSERT INTO `oli_lu_state` VALUES (350, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_state` VALUES (351, 812, 'Oxfordshire', 'OLI_GBR_OXF', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (352, 44, 'Palau Island', 'OLI_USA_PW', '');
INSERT INTO `oli_lu_state` VALUES (353, 33075, 'Paris', 'OLI_FRA_DEPT075', 'Department in the region of Île-de-France');
INSERT INTO `oli_lu_state` VALUES (354, 33062, 'Pas-de-Calais', 'OLI_FRA_DEPT062', 'Department in the region of Nord-Pas-de-Calais');
INSERT INTO `oli_lu_state` VALUES (355, 716, 'Pembrokeshire', 'OLI_GBR_PEM', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (356, 45, 'Pennsylvania', 'OLI_USA_PA', '');
INSERT INTO `oli_lu_state` VALUES (357, 674, 'Perth and Kinross', 'OLI_GBR_PKN', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (358, 857, 'Peterborough', 'OLI_GBR_PTE', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (359, 858, 'Plymouth', 'OLI_GBR_PLY', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (360, 859, 'Poole', 'OLI_GBR_POL', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (361, 860, 'Portsmouth', 'OLI_GBR_POR', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (362, 717, 'Powys', 'OLI_GBR_POW', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (363, 109, 'Prince Edward Island', 'OLI_CAN_PE', '');
INSERT INTO `oli_lu_state` VALUES (364, 421, 'Puebla', 'OLI_MEX_PUE', '');
INSERT INTO `oli_lu_state` VALUES (365, 46, 'Puerto Rico', 'OLI_USA_PR', '');
INSERT INTO `oli_lu_state` VALUES (366, 33063, 'Puy-de-Dôme', 'OLI_FRA_DEPT063', 'Department in the region of Auvergne');
INSERT INTO `oli_lu_state` VALUES (367, 33064, 'Pyrénées-Atlantiques', 'OLI_FRA_DEPT064', 'Department in the region of Aquitaine');
INSERT INTO `oli_lu_state` VALUES (368, 33066, 'Pyrénées-Orientales', 'OLI_FRA_DEPT066', 'Department in the region of Languedoc-Roussillon');
INSERT INTO `oli_lu_state` VALUES (369, 110, 'Quebec', 'OLI_CAN_PQ', '');
INSERT INTO `oli_lu_state` VALUES (370, 204, 'Queensland', 'OLI_AUS_QL', '');
INSERT INTO `oli_lu_state` VALUES (371, 422, 'Querétaro', 'OLI_MEX_QRO', '');
INSERT INTO `oli_lu_state` VALUES (372, 423, 'Quintana Roo', 'OLI_MEX_QR', '');
INSERT INTO `oli_lu_state` VALUES (373, 861, 'Reading', 'OLI_GBR_RDG', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (374, 776, 'Redbridge', 'OLI_GBR_RDB', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (375, 862, 'Redcar and Cleveland', 'OLI_GBR_RCC', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (376, 675, 'Renfrewshire', 'OLI_GBR_RFW', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (377, 47, 'Rhode Island', 'OLI_USA_RI', '');
INSERT INTO `oli_lu_state` VALUES (378, 718, 'Rhondda, Cynon, Taff', 'OLI_GBR_RCT', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (379, 33069, 'Rhône', 'OLI_FRA_DEPT069', 'Department in the region of Rhône-Alpes');
INSERT INTO `oli_lu_state` VALUES (380, 777, 'Richmond upon Thames', 'OLI_GBR_RIC', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (381, 746, 'Rochdale', 'OLI_GBR_RCH', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (382, 824, 'Rotherham', 'OLI_GBR_ROT', 'South Yorkshire District in England');
INSERT INTO `oli_lu_state` VALUES (383, 863, 'Rutland', 'OLI_GBR_RUT', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (384, 334, 'Saga', 'OLI_JPN_SAGA', '');
INSERT INTO `oli_lu_state` VALUES (385, 335, 'Saitama', 'OLI_JPN_SAITAMA', '');
INSERT INTO `oli_lu_state` VALUES (386, 747, 'Salford', 'OLI_GBR_SLF', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (387, 882, 'Sandwell', 'OLI_GBR_SAW', 'West Midlands District in England');
INSERT INTO `oli_lu_state` VALUES (388, 424, 'San Luis Potos', 'OLI_MEX_SLP', '');
INSERT INTO `oli_lu_state` VALUES (389, 33071, 'Saône-et-Loire', 'OLI_FRA_DEPT071', 'Department in the region of Bourgogne');
INSERT INTO `oli_lu_state` VALUES (390, 33072, 'Sarthe', 'OLI_FRA_DEPT072', 'Department in the region of Pays de la Loire');
INSERT INTO `oli_lu_state` VALUES (391, 111, 'Saskatchewan', 'OLI_CAN_SK', '');
INSERT INTO `oli_lu_state` VALUES (392, 33073, 'Savoie', 'OLI_FRA_DEPT073', 'Department in the region of Rhône-Alpes');
INSERT INTO `oli_lu_state` VALUES (393, 676, 'Scottish Borders, The', 'OLI_GBR_SCB', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (394, 786, 'Sefton', 'OLI_GBR_SFT', 'Merseyside District in England');
INSERT INTO `oli_lu_state` VALUES (395, 33077, 'Seine-et-Marne', 'OLI_FRA_DEPT077', 'Department in the region of Île-de-France');
INSERT INTO `oli_lu_state` VALUES (396, 33076, 'Seine-Maritime', 'OLI_FRA_DEPT076', 'Department in the region of Haute-Normandie');
INSERT INTO `oli_lu_state` VALUES (397, 33093, 'Seine-Saint-Denis', 'OLI_FRA_DEPT093', 'Department in the region of Île-de-France');
INSERT INTO `oli_lu_state` VALUES (398, 825, 'Sheffield', 'OLI_GBR_SHF', 'South Yorkshire District in England');
INSERT INTO `oli_lu_state` VALUES (399, 677, 'Shetland Islands', 'OLI_GBR_ZET', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (400, 336, 'Shiga', 'OLI_JPN_SHIGA', '');
INSERT INTO `oli_lu_state` VALUES (401, 337, 'Shimane', 'OLI_JPN_SHIMANE', '');
INSERT INTO `oli_lu_state` VALUES (402, 338, 'Shizuoka', 'OLI_JPN_SHIZUOKA', '');
INSERT INTO `oli_lu_state` VALUES (403, 813, 'Shropshire', 'OLI_GBR_SHR', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (404, 425, 'Sinaloa', 'OLI_MEX_SIN', '');
INSERT INTO `oli_lu_state` VALUES (405, 864, 'Slough', 'OLI_GBR_SLG', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (406, 883, 'Solihull', 'OLI_GBR_SOL', 'West Midlands District in England');
INSERT INTO `oli_lu_state` VALUES (407, 814, 'Somerset', 'OLI_GBR_SOM', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (408, 33080, 'Somme', 'OLI_FRA_DEPT080', 'Department in the region of Picardie');
INSERT INTO `oli_lu_state` VALUES (409, 426, 'Sonora', 'OLI_MEX_SON', '');
INSERT INTO `oli_lu_state` VALUES (410, 866, 'Southampton', 'OLI_GBR_STH', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (411, 205, 'South Australia', 'OLI_AUS_SA', '');
INSERT INTO `oli_lu_state` VALUES (412, 678, 'South Ayrshire', 'OLI_GBR_SAY', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (413, 48, 'South Carolina', 'OLI_USA_SC', '');
INSERT INTO `oli_lu_state` VALUES (414, 49, 'South Dakota', 'OLI_USA_SD', '');
INSERT INTO `oli_lu_state` VALUES (415, 867, 'Southend-on-Sea', 'OLI_GBR_SOS', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (416, 865, 'South Gloucestershire', 'OLI_GBR_SGC', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (417, 679, 'South Lanarkshire', 'OLI_GBR_SLK', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (418, 830, 'South Tyneside', 'OLI_GBR_STY', 'Tyne and Wear District in England');
INSERT INTO `oli_lu_state` VALUES (419, 778, 'Southwark', 'OLI_GBR_SWK', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (420, 787, 'St. Helens', 'OLI_GBR_SHN', 'Merseyside District in England');
INSERT INTO `oli_lu_state` VALUES (421, 815, 'Staffordshire', 'OLI_GBR_STS', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (422, 680, 'Stirling', 'OLI_GBR_STG', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (423, 748, 'Stockport', 'OLI_GBR_SKP', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (424, 868, 'Stockton-on-Tees', 'OLI_GBR_STT', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (425, 869, 'Stoke-on-Trent', 'OLI_GBR_STE', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (426, 636, 'Strabane', 'OLI_GBR_STB', 'District Council Area in Northern Ireland');
INSERT INTO `oli_lu_state` VALUES (427, 816, 'Suffolk', 'OLI_GBR_SFK', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (428, 831, 'Sunderland', 'OLI_GBR_SND', 'Tyne and Wear District in England');
INSERT INTO `oli_lu_state` VALUES (429, 817, 'Surrey', 'OLI_GBR_SRY', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (430, 779, 'Sutton', 'OLI_GBR_STN', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (431, 719, 'Swansea', 'OLI_GBR_SWA', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (432, 870, 'Swindon', 'OLI_GBR_SWD', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (433, 427, 'Tabasco', 'OLI_MEX_TAB', '');
INSERT INTO `oli_lu_state` VALUES (434, 428, 'Tamaulipas', 'OLI_MEX_TAMPS', '');
INSERT INTO `oli_lu_state` VALUES (435, 749, 'Tameside', 'OLI_GBR_TAM', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (436, 33081, 'Tarn', 'OLI_FRA_DEPT081', 'Department in the region of Midi-Pyrénées');
INSERT INTO `oli_lu_state` VALUES (437, 33082, 'Tarn-et-Garonne', 'OLI_FRA_DEPT082', 'Department in the region of Midi-Pyrénées');
INSERT INTO `oli_lu_state` VALUES (438, 206, 'Tasmania', 'OLI_AUS_TAS', '');
INSERT INTO `oli_lu_state` VALUES (439, 871, 'Telford and Wrekin', 'OLI_GBR_TFW', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (440, 50, 'Tennessee', 'OLI_USA_TN', '');
INSERT INTO `oli_lu_state` VALUES (441, 33090, 'Territoire de Belfort', 'OLI_FRA_DEPT090', 'Department in the region of Franche-Comté');
INSERT INTO `oli_lu_state` VALUES (442, 51, 'Texas', 'OLI_USA_TX', '');
INSERT INTO `oli_lu_state` VALUES (443, 872, 'Thurrock', 'OLI_GBR_THR', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (444, 429, 'Tlaxcala', 'OLI_MEX_TLAX', '');
INSERT INTO `oli_lu_state` VALUES (445, 339, 'Tochigi', 'OLI_JPN_TOCHIGI', '');
INSERT INTO `oli_lu_state` VALUES (446, 340, 'Tokushima', 'OLI_JPN_TOKUSHIMA', '');
INSERT INTO `oli_lu_state` VALUES (447, 341, 'Tokyo', 'OLI_JPN_TOKYO', '');
INSERT INTO `oli_lu_state` VALUES (448, 873, 'Torbay', 'OLI_GBR_TOB', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (449, 720, 'Torfaen', 'OLI_GBR_TOF', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (450, 342, 'Tottori', 'OLI_JPN_TOTTORI', '');
INSERT INTO `oli_lu_state` VALUES (451, 780, 'Tower Hamlets', 'OLI_GBR_TWH', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (452, 343, 'Toyama', 'OLI_JPN_TOYAMA', '');
INSERT INTO `oli_lu_state` VALUES (453, 750, 'Trafford', 'OLI_GBR_TRF', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (454, 0, 'Unknown', 'OLI_UNKNOWN', '');
INSERT INTO `oli_lu_state` VALUES (455, 62, 'US Armed Forces Pacific', 'OLI_USA_AP', '');
INSERT INTO `oli_lu_state` VALUES (456, 52, 'Utah', 'OLI_USA_UT', '');
INSERT INTO `oli_lu_state` VALUES (457, 33095, 'Val-d\'Oise', 'OLI_FRA_DEPT095', 'Department in the region of Île-de-France');
INSERT INTO `oli_lu_state` VALUES (458, 33094, 'Val-de-Marne', 'OLI_FRA_DEPT094', 'Department in the region of Île-de-France');
INSERT INTO `oli_lu_state` VALUES (459, 721, 'Vale of Glamorgan, The', 'OLI_GBR_VGL', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (460, 33083, 'Var', 'OLI_FRA_DEPT083', 'Department in the region of Provence-Alpes-Côte d\'Azur');
INSERT INTO `oli_lu_state` VALUES (461, 33084, 'Vaucluse', 'OLI_FRA_DEPT084', 'Department in the region of Provence-Alpes-Côte d\'Azur');
INSERT INTO `oli_lu_state` VALUES (462, 33085, 'Vendée', 'OLI_FRA_DEPT085', 'Department in the region of Pays de la Loire');
INSERT INTO `oli_lu_state` VALUES (463, 430, 'Veracruz', 'OLI_MEX_VER', '');
INSERT INTO `oli_lu_state` VALUES (464, 53, 'Vermont', 'OLI_USA_VT', '');
INSERT INTO `oli_lu_state` VALUES (465, 207, 'Victoria', 'OLI_AUS_VIC', '');
INSERT INTO `oli_lu_state` VALUES (466, 33086, 'Vienne', 'OLI_FRA_DEPT086', 'Department in the region of Poitou-Charentes');
INSERT INTO `oli_lu_state` VALUES (467, 55, 'Virginia', 'OLI_USA_VA', '');
INSERT INTO `oli_lu_state` VALUES (468, 54, 'Virgin Islands', 'OLI_USA_VI', '');
INSERT INTO `oli_lu_state` VALUES (469, 33088, 'Vosges', 'OLI_FRA_DEPT088', 'Department in the region of Lorraine');
INSERT INTO `oli_lu_state` VALUES (470, 344, 'Wakayama', 'OLI_JPN_WAKAYAMA', '');
INSERT INTO `oli_lu_state` VALUES (471, 890, 'Wakefield', 'OLI_GBR_WKF', 'West Yorkshire District in England');
INSERT INTO `oli_lu_state` VALUES (472, 884, 'Walsall', 'OLI_GBR_WLL', 'West Midlands District in England');
INSERT INTO `oli_lu_state` VALUES (473, 781, 'Waltham Forest', 'OLI_GBR_WFT', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (474, 782, 'Wandsworth', 'OLI_GBR_WND', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (475, 874, 'Warrington', 'OLI_GBR_WRT', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (476, 818, 'Warwickshire', 'OLI_GBR_WAR', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (477, 56, 'Washington', 'OLI_USA_WA', '');
INSERT INTO `oli_lu_state` VALUES (478, 875, 'West Berkshire', 'OLI_GBR_WBK', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (479, 681, 'West Dunbartonshire', 'OLI_GBR_WDU', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (480, 208, 'Western Australia', 'OLI_AUS_WA', '');
INSERT INTO `oli_lu_state` VALUES (481, 502, 'Western Cape', 'OLI_ZA_WESTERNCAPE', '');
INSERT INTO `oli_lu_state` VALUES (482, 682, 'West Lothian', 'OLI_GBR_WLN', 'Council Area in Scotland');
INSERT INTO `oli_lu_state` VALUES (483, 783, 'Westminster', 'OLI_GBR_WSM', 'London Borough');
INSERT INTO `oli_lu_state` VALUES (484, 819, 'West Sussex', 'OLI_GBR_WSX', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (485, 57, 'West Virginia', 'OLI_USA_WV', '');
INSERT INTO `oli_lu_state` VALUES (486, 751, 'Wigan', 'OLI_GBR_WGN', 'Greater Manchester District in England');
INSERT INTO `oli_lu_state` VALUES (487, 820, 'Wiltshire', 'OLI_GBR_WIL', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (488, 876, 'Windsor and Maidenhead', 'OLI_GBR_WNM', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (489, 788, 'Wirral', 'OLI_GBR_WRL', 'Merseyside District in England');
INSERT INTO `oli_lu_state` VALUES (490, 58, 'Wisconsin', 'OLI_USA_WI', '');
INSERT INTO `oli_lu_state` VALUES (491, 877, 'Wokingham', 'OLI_GBR_WOK', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (492, 885, 'Wolverhampton', 'OLI_GBR_WLV', 'West Midlands District in England');
INSERT INTO `oli_lu_state` VALUES (493, 821, 'Worcestershire', 'OLI_GBR_WOR', 'Shire County in England');
INSERT INTO `oli_lu_state` VALUES (494, 722, 'Wrexham', 'OLI_GBR_WRX', 'Unitary Authority in Wales');
INSERT INTO `oli_lu_state` VALUES (495, 59, 'Wyoming', 'OLI_USA_WY', '');
INSERT INTO `oli_lu_state` VALUES (496, 345, 'Yamagata', 'OLI_JPN_YAMAGATA', '');
INSERT INTO `oli_lu_state` VALUES (497, 346, 'Yamaguchi', 'OLI_JPN_YAMAGUCHI', '');
INSERT INTO `oli_lu_state` VALUES (498, 347, 'Yamanashi', 'OLI_JPN_YAMANASHI', '');
INSERT INTO `oli_lu_state` VALUES (499, 33089, 'Yonne', 'OLI_FRA_DEPT089', 'Department in the region of Bourgogne');
INSERT INTO `oli_lu_state` VALUES (500, 878, 'York', 'OLI_GBR_YOR', 'Unitary Authority in England');
INSERT INTO `oli_lu_state` VALUES (501, 431, 'Yucatán', 'OLI_MEX_YUC', '');
INSERT INTO `oli_lu_state` VALUES (502, 112, 'Yukon Territory', 'OLI_CAN_YT', '');
INSERT INTO `oli_lu_state` VALUES (503, 33078, 'Yvelines', 'OLI_FRA_DEPT078', 'Department in the region of Île-de-France');
INSERT INTO `oli_lu_state` VALUES (504, 432, 'Zacatecas', 'OLI_MEX_ZAC', '');
COMMIT;

-- ----------------------------
-- Table structure for oli_lu_unwriteclass
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_unwriteclass`;
CREATE TABLE `oli_lu_unwriteclass` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_unwriteclass_value_unique` (`value`),
  UNIQUE KEY `oli_lu_unwriteclass_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oli_lu_unwriteclass
-- ----------------------------
BEGIN;
INSERT INTO `oli_lu_unwriteclass` VALUES (1, 4, 'Aerobic (super Preferred)', 'OLI_UNWRITE_AEROBIC', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (2, 5, 'Declined', 'OLI_UNWRITE_DECLINED', 'Rejection by an insurance company of an application for a policy.');
INSERT INTO `oli_lu_unwriteclass` VALUES (3, 2147483647, 'Other', 'OLI_OTHER', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (4, 19, 'Preferred Plus', 'OLI_UNWRITE_PREFPLUS', 'An Underwriting class code that places an individual between \"Preferred\" and\"Aerobic/super preferred\".');
INSERT INTO `oli_lu_unwriteclass` VALUES (5, 2, 'Preferred risk', 'OLI_UNWRITE_PREFERRED', 'Possessing a lower than average likelihood of loss. The persons physical condition, health history, occupation, and/or lifestyle indicate the probability of a lower-than-usual mortality rate. Also known as Superstandard Risk.');
INSERT INTO `oli_lu_unwriteclass` VALUES (6, 8, 'PVT ING', 'OLI_UNWRITE_ING08', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (7, 9, 'PVT ING', 'OLI_UNWRITE_ING09', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (8, 10, 'PVT ING', 'OLI_UNWRITE_ING10', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (9, 11, 'PVT ING', 'OLI_UNWRITE_ING11', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (10, 12, 'PVT ING', 'OLI_UNWRITE_ING12', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (11, 13, 'PVT ING', 'OLI_UNWRITE_ING13', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (12, 14, 'PVT ING', 'OLI_UNWRITE_ING14', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (13, 15, 'PVT ING', 'OLI_UNWRITE_ING15', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (14, 16, 'PVT ING', 'OLI_UNWRITE_ING16', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (15, 17, 'PVT ING', 'OLI_UNWRITE_ING17', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (16, 3, 'Rated/Substandard Risk', 'OLI_UNWRITE_RATED', 'Possessing a greater-than-average likelihood of loss.');
INSERT INTO `oli_lu_unwriteclass` VALUES (17, 6, 'Standard Plus', 'OLI_UNWRITE_STANDARDPLUS', 'Possessing a likelihood of loss in between preferred and standard risk.');
INSERT INTO `oli_lu_unwriteclass` VALUES (18, 1, 'Standard Risk', 'OLI_UNWRITE_STANDARD', 'Possessing an average or less-than-average likelihood of loss.');
INSERT INTO `oli_lu_unwriteclass` VALUES (19, 7, 'Uninsurable', 'OLI_UNWRITE_UNINSURABLE', '');
INSERT INTO `oli_lu_unwriteclass` VALUES (20, 0, 'Unknown', 'OLI_UNKNOWN', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
