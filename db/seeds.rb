# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Activity.destroy_all
GameActivity.destroy_all
Game.destroy_all

susan = User.create!(name: "susan", email: "susan@example.com")
james = User.create!(name: "james", email: "james@example.com")
andrew = User.create!(name: "andrew", email: "andrew@example.com")

# FactoryBot.create_list(:activity, 16, category: 0)
# FactoryBot.create_list(:activity, 16, category: 1)
# FactoryBot.create_list(:activity, 16, category: 2)
# FactoryBot.create_list(:activity, 16, category: 3)



a_game_win = Game.create!(win: true, user_id: andrew.id, level: 0)
a_game_lose = Game.create!(user_id: andrew.id, level: 0)

pushups = Activity.create!(name: "pushups", category: "upper body", duration: "10 reps", video: "video.com", description: "push the earth down")

a_game_activity = GameActivity.create!(game_id: a_game_win.id, activity_id: pushups.id)

j_game = Game.create!(user_id: james.id, level: 0)

situps = Activity.create!(name: "situps", category: "upper body", duration: "10 reps", video: "video.com", description: "push the earth down")

j_game_activity = GameActivity.create!(game_id: j_game.id, activity_id: situps.id)

#user seeds
User.create!(name: "Susan", email: "susan@turing.com")
User.create!(name: "Andrew", email: "andrew@turing.com")
User.create!(name: "James", email: "James@turing.com")
User.create!(name: "Matt", email: "Matt@turing.com")
User.create!(name: "Oakley", email: "Oakley@turing.com")
User.create!(name: "Kevin", email: "Kevin@turing.com")
User.create!(name: "Tyler", email: "Tyler@turing.com")
User.create!(name: "Eli", email: "Eli@turing.com")

#activity seeds

#free spot
Activity.create!(name: "Drink Water", description: "Your Free Space! Hydrate yourself!", duration: "As much as you need!", video: "water@video", category: "free")

#upper_body_activities 12
Activity.create!(name: "Arm Circles", description: "1. Stand with your arms extended by your sides, perpendicular to your torso. 2. Slowly make clockwise circles about 1 foot in diameter 3. Then reverse the movement, going counterclockwise.", category: "upper body", duration: "20-30 seconds each direction", video: "K6pluh6FSI0")
Activity.create!(name: "Push Ups", description: "1. With your hands shoulder-width apart, keep your feet flexed at hip distance and tighten your core. 2. Bend your elbows until your chest reaches the floor, then push back up. 3. Be sure to keep your elbows tucked close to your body.", category: "upper body", duration: "20 pushups (30 if you're feeling froggy)", video: "0pkjOk0EiAk")
Activity.create!(name: "Plyometric Pushups", description: "1. Start on a well-padded surface and complete a traditional push-up. 2. In an explosive motion, push up hard enough to come off the floor (and hang ten for a second!). 3. Once back on solid ground, immediately head into the next repetition.", category: "upper body", duration: "10 pushups (20 if you're feeling froggy)", video: "Z1hBVYb3Gi0")
Activity.create!(name: "Dolphin Pushups", description: "1. Start out in Dolphin Pose (think Downward-Facing Dog Pose with your elbows on the floor). 2. Lean forward, lowering your shoulders until your head is over your hands. 3 Push up with your arms and return to the starting position.", category: "upper body", duration: "10 pushups (20 if you're feeling froggy)", video: "A_2SeaI5_wM")
Activity.create!(name: "Contralateral Limb Raises", description: "1. Lie facedown with your arms outstretched and your palms facing each other. 2. Slowly lift one arm a few inches off the floor, keeping it straight without rotating your shoulders and keeping your head and torso still. 3. Hold the position, then lower your arm back down. Repeat on the other side. 4. For an extra challenge, lift your opposite leg a few inches off the floor at the same time.", category: "upper body", duration: "10 pushups (20 if you're feeling froggy)", video: "aePDGExVdVg")
Activity.create!(name: "Hand Stand Push-Up", description: "1. Get set in a handstand position against a wall. 2. Bend your elbows at a 90-degree angle, doing an upside-down push-up so your head moves toward the floor and your legs remain against the wall. 3. First-timer? Grab a friend to spot you — safety first!", category: "upper body", duration: "10 pushups (20 if you're feeling froggy)", video: "0wDEO6shVjc")
Activity.create!(name: "Judo Push-Ups", description: "1. From a push-up position, raise your hips. 2. Use your arms to lower the front of your body until your chin comes close to the floor. 3. Swoop your head and shoulders upward and lower your hips down, keeping your knees off the floor. 4. Reverse the move to come back to your raised-hip position. 5. Try to repeat for 30—60 seconds.", category: "upper body", duration: "1 minute, twice", video: "pcQA61tWqL8")
Activity.create!(name: "Reverse Fly", description: "1. For DIY dumbbells, grab two full cans or bottles. 2. Stand up straight, with one foot in front of the other and your front knee slightly bent. 3. With your palms facing each other and abs engaged, bend forward slightly from your waist and extend your arms out to the sides, squeezing your shoulder blades. 4. Repeat.", category: "upper body", duration: "15 reps, twice", video: "9R5f4oIjwq88")
Activity.create!(name: "Superman", description: "1. Lie facedown with your arms and legs extended. 2. Keeping your torso as still as possible, simultaneously raise your arms and legs to form a small curve in your body. 3. Lower your limbs, and repeat.", category: "upper body", duration: "15 reps, twice", video: "z6PJMT2y8GQ")
Activity.create!(name: "Tricep Dips", description: "1. Sit on the floor near a step or bench with your knees slightly bent. 2. Grab the edge of the elevated surface and straighten your arms. 3. Bend your arms to a 90-degree angle and straighten again while your heels push into the floor, lifting yourself. 4. For some extra fire, reach your right arm out while lifting your left leg.", category: "upper body", duration: "15 reps, twice", video: "6kALZikXxLc")
Activity.create!(name: "Diamond PushUps", description: "1. Get into a push-up position with diamond-shaped hands, so that your thumbs and index fingers touch. 2. Then, do push-ups! This hand position will give those triceps some extra (burning) love", category: "upper body", duration: "10 reps, twice if you can!", video: "pD3mD6WgykM")
Activity.create!(name: "Boxer", description: "1. Stand with your feet hip-width apart and your knees bent. 2. Bend forward until your torso is almost parallel to the floor. 3. Keep your elbows in and extend one arm forward and your other arm back. 4. Hug your arms back in and switch arms like you’re in the ring!", category: "upper body", duration: "10 reps, twice if you can!", video: "kKDHdsVN0b8")
Activity.create!(name: "Biceps Curl", description: "1. While standing or sitting, hold a weight in each hand with arms extended toward the floor. Slowly bend your elbows, bringing the weights toward your shoulders. Lower the weights back down to the starting position, making sure elbows and wrists are aligned throughout the movement.", category: "upper body", duration: "10 reps, three times if you can!", video: "mebsnWJRasA")
Activity.create!(name: "Lateral Raise", description: "1. Stand or sit with arms at your sides, holding a dumbbell in each hand. Keeping palms facing your body and elbows slightly bent, lift the dumbbells until your arms are parallel to the floor, so your body forms a T shape. Lower the dumbbells slowly back to the starting position.", category: "upper body", duration: "10 reps, three times if you can!", video: "L81Qxu8EuDU")
Activity.create!(name: "Overhead Tricep extension", description: "1. SStand or sit with a straight back, holding a dumbbell with both hands around the center. Raise the dumbbell over your head. Slowly bend elbows so the weight sinks behind your head. Slowly lift the dumbbell back to the starting position.", category: "upper body", duration: "10 reps, three times if you can!", video: "QbuaXgugLtg")

#core 13
Activity.create!(name: "Planks", description: "1. Lie facedown with your forearms on the floor and your hands clasped. 2. Extend your legs behind you and rise up onto your toes. 3. Keeping your back straight, tighten your core and hold the position", category: "core", duration: "2 for 30 seconds each", video: "s-xe9HqqsLE")
Activity.create!(name: "Prone Walk Out", description: "1. Slowly walk your hands forward, staying on your toes but not moving them forward. 2. Next, gradually walk your hands backward to the starting position, maintaining stability and balance.", category: "core", duration: "10 reps, twice if you wanna!", video: "-FW8DNKsAh8")
Activity.create!(name: "Plank to Push Up", description: "1. Start in a plank position. 2. Place one hand at a time on the floor to lift into a push-up position with your back straight and core engaged. 3. Move one arm at a time back into the plank position (forearms on the floor). 4. Repeat, alternating your arm that makes the first move", category: "core", duration: "10 reps, twice", video: "nToxCj-QA7E")
Activity.create!(name: "L Sits", description: "1. Sit with your legs extended and your feet flexed. 2. Place your hands on the floor and slightly round your torso. 3. Lift your hips off the floor, hold for 5 seconds, and release. 4. Repeat.", category: "core", duration: "10 reps, twice", video: "Qv6j5gZyBQ8")
Activity.create!(name: "Rotational push-ups", description: "1. After coming back up into a starting push-up position, rotate your body to the right and extend your right hand overhead, forming a T with your arms and torso. 2. Return to the starting position 3. Do a regular push-up, and then rotate to the left.", category: "core", duration: "10 reps, twice", video: "SIXuGSOL3_8")
Activity.create!(name: "Flutter Kicks", description: "1. Lie faceup with your arms at your sides and your palms facing down. 2. With your legs extended, lift your heels about 6 inches off the floor. 3. Make small, quick, up-and-down pulses with your legs while keeping your core engaged. 4. Keep kickin’ it for a minute straight!", category: "core", duration: "1 minute, twice", video: "ANVdMDaYRts")
Activity.create!(name: "Dynamic Prone Plank", description: "1. Starting in a standard plank position, raise your hips as high as they can go. 2. Lower them back down. 3. Continue this movement for as long as possible. 4. Make sure your back stays straight and your hips don’t droop.", category: "core", duration: "1 minute, twice", video: "XMxHTNPPgxM")
Activity.create!(name: "Side Plank", description: "1. Lie faceup and roll to the side. 2. Come up onto one foot and elbow. 3. Make sure your hips are lifted and your core is engaged. 4. Hang tight", category: "core", duration: "30 seconds, each side, twice", video: "K2VljzCC16g")
Activity.create!(name: "Russian Twist", description: "1. Sit on the floor with your knees bent and feet together, lifted a few inches off the floor. 2. With your back at a 45-degree angle to the floor, move your arms from side to side in a twisting motion. 3. Here, slow and steady wins the race: The slower the twist, the deeper the burn.", category: "core", duration: "20 times, twice", video: "NeAtimSCxsY")
Activity.create!(name: "Bicycle", description: "1. Lie faceup with your knees bent and your hands behind your head. 2. Bring your knees in toward your chest. 3. Bring your right elbow toward your left knee as your right leg straightens. 4. Continue alternating sides like you’re pedaling a bike.", category: "core", duration: "20 times, twice", video: "UZZhuJACZJM")
Activity.create!(name: "Crunches", description: "1. Lie faceup with your knees bent and your feet flat on the floor. 2. With your hands behind your head, lower your chin slightly. 3. Peel your head and shoulders off the floor while engaging your core. 4. Continue curling up until your upper back is off the mat. 5. Hold briefly, then slowly lower your torso back toward the floor.", category: "core", duration: "20 times, twice", video: "Xyd_fa5zoEU")
Activity.create!(name: "Segmental Rotation", description: "1. Lying faceup with your knees bent and core tight, let your knees fall gradually to the left until you feel a good stretch. 2. Hold for 5 seconds, then return to the center. 3. Repeat on the right.", category: "core", duration: "20 times, twice", video: "cB_DuW0zT5g")
Activity.create!(name: "Sprinter Sit Ups", description: "1. Lie faceup with your legs straight and your arms by your sides with your elbows bent at a 90-degree angle. 2. Now, sit up and bring your left knee toward your right elbow. Return to the starting position. 3. Repeat on the other side.", category: "core", duration: "20 times, twice", video: "EVlW1iZMj5c")
Activity.create!(name: "Butterfly Sit Ups", description: "1. Lie faceup with the soles of your feet together, knees bent out to sides. Reach your arms overhead. This is starting position. 2. Using your core, roll your body up until you are sitting upright. Reach forward to touch your toes. That's one rep. 3. Slowly lower back down to starting position and continue immediately into the next rep.", category: "core", duration: "15 times, twice", video: "O4_u-dOYBA0")
Activity.create!(name: "Dead Bug", description: "1. Lie faceup with your arms extended toward the ceiling and your legs in a tabletop position (knees bent 90 degrees and stacked over your hips). This is starting position. 2. Slowly extend your right leg straight, while simultaneously dropping your left arm overhead. Keep both a few inches from the ground. Squeeze your butt and keep your core engaged the entire time, lower back pressed into the floor. 3. Bring your arm and leg back to the starting position. 4. Repeat on the other side, extending your left leg and your right arm.", category: "core", duration: "10 times each side, twice", video: "izVNWXxQBVk")


## maybe cardio/full body 7
Activity.create!(name: "Burpee", description: "1. This one starts in a low squat position with your hands on the floor. 2. Next, kick your feet back to a push-up position. 3. Complete one push-up, then immediately return your feet to the squat position. 4. Leap up as high as possible before squatting and moving back into the push-up portion of the show.", category: "cardio", duration: "10 times", video: "auBLPXO8Fww")
Activity.create!(name: "Inch Worm", description: "1. Stand up tall with your legs straight, making sure your knees aren’t locked. 2. Slowly lower your torso toward the floor, then walk your hands forward. 3. Once in a push-up position, start taking tiny steps so your feet meet your hands.", category: "cardio", duration: "10 times", video: "VSp0z7Mp5IU")
Activity.create!(name: "Bear Crawl", description: "1. Starting on your hands and knees, rise up onto your toes. 2. Tighten your core, and slowly reach forward with your right arm and right knee, followed by your left side.", category: "cardio", duration: "Continue the crawl for 10—12 reps (or until you scare people off) (grrrrr!).", video: "t8XLor7unqU")
Activity.create!(name: "Mountain Climber", description: "1. Start on your hands and knees. 2. Bring your left foot forward to directly under your chest while straightening your right leg. 3. Keeping your hands on the floor and your core tight, jump and switch legs. 4. Your left leg should now be extended behind you, with your right knee forward.", category: "cardio", duration: "1 minute, twice", video: "zT-9L3CEcmkU")
Activity.create!(name: "Stair Climb with Bicep Curl", description: "1. Grab some dumbbells (or heavy household objects). 2. Briskly walk up and down the stairs while simultaneously doing bicep curls to work your whole body.", category: "cardio", duration: "1 minute, twice", video: "V_-BUNUeeeQ")
Activity.create!(name: "Squat Reach Jump", description: "1. Perform a normal squat. 2. Immediately jump up, reaching your arms straight overhead.", category: "cardio", duration: "15 reps, twice", video: "Om49NbOtJNU")
Activity.create!(name: "Donkey Kick", description: "1. Start in a push-up position with your legs together. 2. Tighten your core and kick both legs into the air with your knees bent, reaching your feet back toward your glutes. 3. Try to land gently when returning to the starting position.", category: "cardio", duration: "10 reps, twice", video: "SJ1Xuz9D-ZQ")
Activity.create!(name: "Run", description: "1. One foot in front of the other real fast like", category: "cardio", duration: "2-5 miles, whatever you can do!", video: "we2YF1J6jxg")
Activity.create!(name: "Jump Rope", description: "1. Hold the rope while keeping your hands at hip level. 2. Rotate your wrists to swing the rope and jump. 3. Jump with both feet at the same time, one foot at a time, alternating between feet, etc. 4. Repeat until the set is complete.", category: "cardio", duration: "1 minute, twice", video: "VWLBIZjYp2g")
Activity.create!(name: "Walk One Mile", description: "One foot in front of the other!", category: "cardio", duration: "1 mile, or farther!", video: "gwKEdFoUB0o")
Activity.create!(name: "Jumping Jacks", description: "1. Jump your legs out as you bring your hands overhead, then jump back to standing. 2. Add in some cross jacks to work your inner thighs. Open your arms out to the sides as you jump your legs wide. Cross your feet as you jump your legs together while crossing your arms in front of your chest.", category: "cardio", duration: "1 minute, twice", video: "iSSAk4XCsRA")
Activity.create!(name: "Cross Jacks", description: "1. Stand with your feet shoulder-width apart, and extend your arms straight out to either side with palms facing down. 2. Jump and cross your right arm over your left and your right foot over your left. Jump your legs to the sides and open your arms, then cross with the opposite arm and foot.", category: "cardio", duration: "1 minute, twice", video: "ZgrgIdqSeKo")
Activity.create!(name: "High Knees", description: "1. Run in place while lifting your knees high, to the level of your waist. Engage your abs as the knee comes up. 2. Pump your arms to warm up your upper body.", category: "cardio", duration: "1 minute, twice", video: "QIwxSeKpHtI")
Activity.create!(name: "Box Toe Touches", description: "1. Using a box, step, book, or stool, lightly tap your left toes to the box, then jump to switch feet, bringing the right toes up. 2. Continue alternating feet. No box? No worries. Hop from foot to foot, aiming toes onto an imaginary step.", category: "cardio", duration: "1 minute, twice", video: "DH9gWHjcDuY")
Activity.create!(name: "Lateral Bunny Hops", description: "1. Make small jumps side to side as if you are jumping over an invisible line. 2. Keep your legs as close together as possible, and swing your arms to help you jump.", category: "cardio", duration: "1 minute, twice", video: "hcNhEdiSBw0")
Activity.create!(name: "Side Skater", description: "1. Start in a small squat. Jump sideways to the right, landing on your right leg. Bring your left leg behind you, but don't let your left foot touch the floor. Keeping your chest up, and deepen the bend in your right knee to work your glute muscles even more. 2. Reverse direction by jumping to the left and leading with your left leg, allowing your arms to swing to the sides as you jump sideways, landing on your left foot. This completes one rep.", category: "cardio", duration: "1 minute, twice", video: "hcNhEdiSBw0")
Activity.create!(name: "Reverse Lunge and Kick", description: "1. Step back with your left foot, coming into a deep lunge and bending both knees to 90 degrees. 2. Press the right heel into the ground as you push off with your left foot, kicking your left leg to touch your left toes to your right hand. 3. With control, return to the lunge position. This completes one rep. Alternate sides.", category: "cardio", duration: "10 reps each leg, twice", video: "1gCXy1pKW88")


#lower body 13
Activity.create!(name: "Squats", description: "1. Stand with your feet parallel or turned out 15 degrees — whatever is most comfortable. 2. Slowly start to crouch by bending your hips and knees until your thighs are at least parallel to the floor. 3. Make sure your heels do not rise off the floor. 4. Press through your heels to return to a standing position.", category: "lower body", duration: "20 squats 2 times", video: "aclHkVaku9U")
Activity.create!(name: "Step Ups", description: "1. Find a step or bench. 2. Place your right foot on the elevated surface. 3. Step up until your right leg is straight. 4. Return to the starting position.", category: "lower body", duration: "8 reps each leg twice", video: "WCFCdxzFBa4")
Activity.create!(name: "Lunges", description: "1. Stand with your hands on your hips and your feet hip-width apart. 2. Step your right leg forward and slowly lower your body until your left (back) knee is close to or touching the floor and bent at least 90 degrees. 3. Return to the starting position and repeat on the other side. 4. For a variation, try stepping backward ", category: "lower body", duration: "10 lunges each side 2 times", video: "QOVaHwm-Q6U")
Activity.create!(name: "Shoulder Bridge", description: "1. Lie faceup with your knees bent and your feet hip-width apart. 2. Place your arms at your sides and lift your spine and hips. Only your head, feet, arms, and shoulders should be on the floor. 3. Lift one leg, keeping your core tight. 4. Slowly bring your leg back down, then lift back up.", category: "lower body", duration: "10 reps each leg 2 times", video: "EEtd0uY-bMwU")
Activity.create!(name: "Wall Sits", description: "1. Slowly slide your back down a wall until your thighs are parallel to the floor. 2. Make sure your knees are directly above your ankles and keep your back straight. 3. Go for 60 seconds per set.", category: "lower body", duration: "1 minute, twice", video: "XULOKw4E4P4")
Activity.create!(name: "Clock Lunge", description: "1. Complete a traditional forward lunge, then take a big step to the right and lunge again. 2. Finish off the semicircle with a backward lunge, then return to standing. And all that’s 1 rep! Phew.", category: "lower body", duration: "10 reps, each leg", video: "GIm5-KIdWBk")
Activity.create!(name: "Lunge to Row", description: "1. Start by doing a normal lunge. 2. Instead of bringing your forward leg back to the starting position, raise it off the floor while lifting your arms overhead. 3. Your leg should remain bent at about 90 degrees. 4. Add weights to really bring the heat.", category: "lower body", duration: "10 reps, each leg", video: "iRsndpuhQek")
Activity.create!(name: "Pistol Squats", description: "1. Stand holding your arms straight out in front of your body. 2. Raise your right leg, flexing your right ankle and pushing your hips back. 3. Lower your body while keeping your right leg raised. 4. Hold, then return to standing.", category: "lower body", duration: "10 reps, each leg", video: "hxhG2sLMFBi4")
Activity.create!(name: "Lunge Jump", description: "1. Stand with your feet together and lunge forward with your right foot. 2. Jump straight up, propelling your arms forward while keeping your elbows bent. 3. While in the air, switch legs and land in a lunge with your opposite leg forward. 4. Repeat and continue switching legs.", category: "lower body", duration: "10 reps, each leg", video: "Nnb9bXV3o0s")
Activity.create!(name: "Single Leg Dead Lift", description: "1. Start in a standing position with your feet together. 2. Lift your right leg slightly. 3. Lower your arms and torso while raising your right leg behind you. 4. Keep your left knee slightly bent and reach your arms as close to the floor as possible. 5. Raise your torso while lowering your right leg. 6. Switch legs.", category: "lower body", duration: "10 reps, each leg", video: "FujJkRLG1Fg")
Activity.create!(name: "Chair Pose Squat", description: "1. Stand with your feet hip-width apart and squat until your thighs are parallel to the floor while swinging your arms up. 2. Straighten your legs, then lift your right knee while swinging your left arm outside your right knee. 3. Return to a standing position and repeat on the other side", category: "lower body", duration: "10 reps, each leg", video: "SzoEjquXxIg")
Activity.create!(name: "Quadruped Leg Raise", description: "1. Start on your hands and knees, with your back flat and core engaged. 2. Raise your left leg straight back, stopping when your foot is at hip level and your thigh is parallel to the floor. 3. Balance for as long as possible, then raise your bottom right toe off the floor, tightening your butt, back, and abs — try to be graceful here! 4. Hold for up to 10 seconds, then switch legs.", category: "lower body", duration: "10 reps, each leg", video: "TJbnvoFkLKI")
Activity.create!(name: "Calf Raises", description: "1. From a standing position, slowly rise up on your toes, keeping your knees straight and heels off the floor. 2. Hold briefly, then come back down. 3. Aaaand repeat. 4. Try standing on something elevated (like a step) to achieve a wider range of motion.", category: "lower body", duration: "20 reps, twice", video: "-M4-G8p8fmc")
Activity.create!(name: "Dead Lifts", description: "1. Stand with your feet hip-distance apart and hold a dumbbell in each hand with a pronated (hands facing thighs) grip. Engaging your core, back, and glutes, hinge your hips forward to lower the weights down your legs until your torso is parallel to the floor. 2. Keep a slight bend in the knees and pull your shoulders back—and not hunched over. 3. Then, straighten your legs to stand back up to the starting position.", category: "lower body", duration: "20 reps, twice", video: "0J6nVBwGUP4")
Activity.create!(name: "Donkey Kicks", description: "1. Assume the starting position on all fours: knees hip-width apart, hands under your shoulders, neck and spine neutral. 2. Bracing your core, begin to lift your right leg, knee staying bent, foot staying flat, and hinging at the hip. 3. Use your glute to press your foot directly toward the ceiling and squeeze at the top. Ensure your pelvis and working hip stay pointed toward the ground. 4. Return to the starting position.", category: "lower body", duration: "10 reps each side, twice", video: "hSJ1Xuz9D-ZQ")
