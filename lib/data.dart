import 'package:flutter/material.dart';

import 'eligibility_age_weight.dart';
import 'eligibility_general_health.dart';
import 'eligibility_lifestyle.dart';
import 'eligibility_medical_conditions.dart';
import 'eligibility_medical_treatments.dart';
import 'eligibility_std.dart';
import 'eligibility_vaccinations.dart';

List<String> images = [
  "assets/images/capture.webp",
  "assets/images/after_care.webp",
  "assets/images/about_drop.webp",
  "assets/images/about_donating.webp",
  "assets/images/capture.webp",
  "assets/images/after_care.webp",
  "assets/images/about_drop.webp",
];

List<String> title = [
  "Blood Bank, Negombo",
  "National Blood Centre, Colombo",
  "NHSL Blood Bank, Colombo",
  "National Blood Transfusion Service, Narahenpita",
  "Blood Bank, Negombo",
  "National Blood Centre, Colombo",
  "NHSL Blood Bank, Colombo",
];

List<String> eligibilityImages = [
  "assets/images/weight.webp",
  "assets/images/exercising.webp",
  "assets/images/vaccines.webp",
  "assets/images/blood_pressure.webp",
  "assets/images/tattoo.webp",
  "assets/images/stethescope.webp",
  "assets/images/hiv.webp",
];

var eligibilityTitle = [
  "Age and Weight Requirements",
  "General Health Considerations",
  "Medications and Vaccinations",
  "Medical Conditions and Diseases",
  "Lifestyle and  Life Events",
  "Medical Treatments  and Waiting Periods",
  "Sexually Transmitted Diseases",
];

var eligibilitySubtitle = [
  "You must be at least 18 years of age. You must weigh at least 110 pounds.",
  "Acceptable as long as you feel well, have no fever and have no problems breathing through your mouth.",
  "In most cases, medications will not disqualify you but there are certain drugs that are of special significance.",
  "Acceptable as long as you feel well, have no fever and have no problems breathing through your mouth.",
  "Cartain lifestyle choices you have me will disqualify you as blood donor according to the Food and Drug Administration.",
  "Most medical treatments undergone by you will not disqualify you, but you are privy to a certain waiting period.",
  "You should not give blood if you have AIDS or if you have ever had a positive HIV test.",
];

List<Widget> eligibilityPages = [
  EligibilityAgeWeight(),
  EligibilityGeneralHealth(),
  EligibilityVaccinations(),
  EligibilityMedicalConditions(),
  EligibilityLifestyle(),
  EligibilityMedicalTreatments(),
  EligibilitySTD(),
];

var aboutDrop_images = [
  "assets/images/red_circle.png",
  "assets/images/yellow_circle.png",
  "assets/images/green_circle.png",
];
var aboutDrop_titles = [
  "Top Priority                   ",
  "Mid - Range Priority             ",
  "Low Priority                  ",
];
var aboutDrop_subtitles = [
  "You must be in the hospital in 10 - 30 minutes",
  "You must be in the hospital in 1 - 3 hours",
  "You must be in the hospital within the day",
];

List<Widget> eventsPages = [
  EligibilityAgeWeight(),
  EligibilityGeneralHealth(),
  EligibilityVaccinations(),
  EligibilityMedicalConditions(),
  EligibilityLifestyle(),
  EligibilityMedicalTreatments(),
  EligibilitySTD(),
];