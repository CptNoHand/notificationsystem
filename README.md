# Notification System

Using QBCore.Functions.Notify(id, text, duration, subtext, dict, icon, color). Luckily for you the creator this can be simplified for most notifications to QBCore.Functions.Notify(id, text, duration). We tried to make this as easy as possible for people coming over from FiveM to RedM and are fond of using the Notify function. However there are more than 3 notifications now and you need to memorise them by numbers. But hey this is what this documentation is for! For the people concerned about performance please use the corresponding events directly (if you know what you are doing). Do you need some icons? [Here](https://github.com/abdulkadiraktas/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures). You need location names? [Here](https://pastebin.com/Rw10Spc7).

## QBCore.Functions.Notify(1, "Amazing!", 3000)

ID 1 is a simple notification that appears on the top left of the user's screen with a nice background behind it. This could be seen as a substitute for "primary" and "success".

![afbeelding_2021-10-28_224926](https://user-images.githubusercontent.com/44729807/139333535-bc83c40c-6eb6-4e24-a58a-83d8ea413277.png)

## QBCore.Functions.Notify(2, "Amazing!", 3000)

ID 2 is a notification that appears on the center right without a background.

![afbeelding_2021-10-28_225058](https://user-images.githubusercontent.com/44729807/139333743-32d549af-841f-4241-88aa-cc4dad662e66.png)

## QBCore.Functions.Notify(3, "Amazing!", 3000)

ID 3 is a notification that appears on the bottom center without a background.

![afbeelding_2021-10-28_225158](https://user-images.githubusercontent.com/44729807/139333867-150db858-755b-47b5-9a04-88cb5e1a21f1.png)

## QBCore.Functions.Notify(4, "Amazing!", 3000)

ID 4 is fairly bigger and appears on the top center.

![afbeelding_2021-10-28_225256](https://user-images.githubusercontent.com/44729807/139333976-dd758962-8649-4a51-8779-47b2825b5987.png)

## QBCore.Functions.Notify(5, "Amazing!", 3000)

ID 5 is again small and appears in the center.

![afbeelding_2021-10-28_225440](https://user-images.githubusercontent.com/44729807/139334229-dce0bf47-2492-496c-b6b7-51c2ff869938.png)

## QBCore.Functions.Notify(6, "Amazing!", 3000, "LANDMARK_MACOMBS_END")

ID 6, now we can finally start with the funky stuff. This is the typical top center notification you get when entering a city in Red Dead. The text you need to use for the cities can be found [here](https://pastebin.com/Rw10Spc7)

![afbeelding_2021-10-28_225638](https://user-images.githubusercontent.com/44729807/139334456-07a996e9-55f0-467b-82d3-97d15b8a4ee0.png)

## QBCore.Functions.Notify(7, "Amazing!", 3000, "This is nice!")

ID 7 is again a fairly simple notification but this time with subtext. Top center.

![afbeelding_2021-10-28_225754](https://user-images.githubusercontent.com/44729807/139334596-b51cce34-b029-4a57-b19f-5fbaabd4bc0a.png)

## QBCore.Functions.Notify(8, "Amazing!", 3000, "This is nice!", "toast_challenges_hunter", "challenge_master_hunter_10")

ID 8 makes use of an icon. You can choose any icon from: [here](https://github.com/abdulkadiraktas/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures). In this case I went down all the way to: /useful_info_from_rpfs/textures/ui_hud/images/toast_challenges_hunter/challenge_master_hunter_10.png. You need the dictionary from where you are pulling the icon from (in this case "toast_challenges_hunter") and then the actual name of the icon you are pulling (challenge_master_hunter_10 withouth the .png part). This notification appears on the top left.

![afbeelding_2021-10-28_230403](https://user-images.githubusercontent.com/44729807/139335344-fd4019ec-ae72-469a-8ca2-e2fdb2299622.png)

## QBCore.Functions.Notify(9, "Amazing!", 3000, "This is nice!", "toast_challenges_hunter", "challenge_master_hunter_10")

ID 9 is mostly the same as 8 but as you can see it doesn't matter what the subtext is since it's not needed here. So it can be anything you want aslong as it's filled in atleast (even 0 works) The icon pulling works the same way so refer yourselfs to the link above. Top right.

![afbeelding_2021-10-28_230802](https://user-images.githubusercontent.com/44729807/139335822-871b2660-3efb-4d11-b638-139ddf870ae0.png)

# Usage

Depends all on your own creativity. For example 9 could be used for when acquiring items: ![afbeelding_2021-10-28_230907](https://user-images.githubusercontent.com/44729807/139335962-22a7853f-444a-4ac0-8fb8-2b3bb8a0d95c.png)

Or 8 could be used as a notification of sorts (for police?). 

![image](https://user-images.githubusercontent.com/44729807/139336040-0942817a-5dff-4378-9968-ed5b688b9b6d.png)![image](https://user-images.githubusercontent.com/44729807/139336046-5fdc346d-ef1d-4e76-8f5a-3c6cba4c42ec.png)

