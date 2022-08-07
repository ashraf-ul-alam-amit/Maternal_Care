<?php 
$verifytoken= $_SESSION['auth_user']['token'];
include('partials/conn.php');

$duedate_query = "SELECT * FROM users WHERE verify_token='$verifytoken' LIMIT 1";
$duedate_query_run = mysqli_query($conn, $duedate_query);
$row = mysqli_fetch_array($duedate_query_run);

$lastperiod= $row['due_date'];



$babyimages=array();
$babysizeimages=array();
//0=2
array_push($babyimages,"images/wbw/wbw2.jpg");
array_push($babysizeimages,"images/wbw/wbwc2.png");

for($i=2;$i<=42;$i++){
    array_push($babyimages,"images/wbw/wbw{$i}.jpg");
    array_push($babysizeimages,"images/wbw/wbwc".$i.".png");
}
$babysize=array();
$cbaby=array();
array_push($babysize,"No baby yet");
array_push($cbaby,"Your baby has yet to be conceived.");
array_push($babysize,"No baby yet");
array_push($cbaby,"Your baby has yet to be conceived.");
array_push($babysize,"Baby's super tiny");
array_push($cbaby,"Your baby is as big as a vanilla bean seed.");
array_push($babysize,"Baby's super tiny");
array_push($cbaby,"Your baby is as big as a poppy seed.");
array_push($babysize,"Baby's super tiny");
array_push($cbaby,"Your baby is as big as an orange seed.");
array_push($babysize,"0.51 - 0.64 cm");
array_push($cbaby,"Your baby is as big as a sweet pea.");
array_push($babysize,"0.64 cm");
array_push($cbaby,"Your baby is as big as a blueberry.");
array_push($babysize,"1.27 cm");
array_push($cbaby,"Your baby is as big as a raspberry.");
array_push($babysize,"2.54 cm");
array_push($cbaby,"Your baby is as big as a green olive.");
array_push($babysize,"3 - 4 cm");
array_push($cbaby,"Your baby is as big as a prune.");
array_push($babysize,"4 cm, 7 grams");
array_push($cbaby,"Your baby is as big as a large strawberry.");
array_push($babysize,"5 - 6 cm, 14 grams");
array_push($cbaby,"Your baby is as big as a lime.");
array_push($babysize,"8 cm, 28 grams");
array_push($cbaby,"Your baby is as big as a lemon.");
array_push($babysize,"9 - 10 cm, 57 grams");
array_push($cbaby,"Your baby is as big as a navel orange.");
array_push($babysize,"10 cm, 71 grams");
array_push($cbaby,"Your baby is as big as a pear.");
array_push($babysize,"10 - 13 cm, 0.09 - 0.11 kg");
array_push($cbaby,"Your baby is as big as an avocado.");
array_push($babysize,"13 cm, 0.14 kg");
array_push($cbaby,"Your baby is as big as a large onion.");
array_push($babysize,"14 cm, 0.14 - 0.18 kg");
array_push($cbaby,"Your baby is as big as a cucumber.");
array_push($babysize,"15 cm, 0.23 kg");
array_push($cbaby,"Your baby is as big as a mango.");
array_push($babysize,"16.5 cm, 0.28 kg");
array_push($cbaby,"Your baby is as big as a sweet potato.");
array_push($babysize,"27 cm, 0.31 - 0.35 kg");
array_push($cbaby,"Your baby is as big as a large banana.");
array_push($babysize,"28 cm, 0.45 kg");
array_push($cbaby,"Your baby is as big as a red bell pepper.");
array_push($babysize,"28 cm, 0.54 kg");
array_push($cbaby,"Your baby is as big as a grapefruit.");
array_push($babysize,"29 cm, 0.59 kg");
array_push($cbaby,"Your baby is as big as a pomegranate.");
array_push($babysize,"33 cm, 0.68 kg");
array_push($cbaby,"Your baby is as big as an eggplant.");
array_push($babysize,"36 cm, 0.91 kg");
array_push($cbaby,"Your baby is as big as an acorn squash.");
array_push($babysize,"37 cm, 0.91 kg");
array_push($cbaby,"Your baby is as big as a cabbage.");
array_push($babysize,"38 cm, 1 kg");
array_push($cbaby,"Your baby is as big as a head of lettuce.");
array_push($babysize,"39 - 41 cm, 1.1 - 1.4 kg");
array_push($cbaby,"Your baby is as big as a head of cauliflower.");
array_push($babysize,"41 cm, 1.4 kg");
array_push($cbaby,"Your baby is as big as a bunch of broccoli.");
array_push($babysize,"41 cm, 1.5 kg");
array_push($cbaby,"Your baby is as big as a coconut.");
array_push($babysize,"41 - 43 cm, 1.6 - 1.8 kg");
array_push($cbaby,"Your baby is as big as a cantaloupe.");
array_push($babysize,"43 cm, 1.9 kg");
array_push($cbaby,"Your baby is as big as a butternut squash.");
array_push($babysize,"43 - 46 cm, 2.3 kg");
array_push($cbaby,"Your baby is as big as a pineapple.");
array_push($babysize,"46 cm, 2.4 kg");
array_push($cbaby,"Your baby is as big as a spaghetti squash.");
array_push($babysize,"46 - 48 cm, 2.7 kg");
array_push($cbaby,"Your baby is as big as a bunch of kale.");
array_push($babysize,"48 cm, 2.9 kg");
array_push($cbaby,"Your baby is as big as a canary melon.");
array_push($babysize,"48 - 51 cm, 3.2 kg");
array_push($cbaby,"Your baby is as big as a mini watermelon.");
array_push($babysize,"48 - 53 cm, 3.2 - 3.6 kg");
array_push($cbaby,"Your baby is as big as a honeydew melon.");
array_push($babysize,"48 - 56 cm, 3.2 - 4.1 kg");
array_push($cbaby,"Your baby is as big as a small pumpkin.");
array_push($babysize,"48 - 56 cm, 3.2 - 4.1 kg");
array_push($cbaby,"Your baby is as big as a pumpkin.");
array_push($babysize,"48 - 56 cm, 3.2 - 4.1 kg");
array_push($cbaby,"Your baby is as big as a watermelon.");
array_push($babysize,"New Born");
array_push($cbaby,"How can such a little thing make such a big noise? Aside from crying, here's what your newborn baby is up to.");


$cmother=array();
array_push($cmother,"Since doctors calculate your due date from the first day of your last period, week one begins with the start of the last period you have before you conceive. That's to say that you are not technically pregnant yet.Ovulation typically occurs during what's considered week two. Your ovary will release a mature egg that travels into the fallopian tube, where it awaits fertilization with sperm. Symptoms of ovulation can include twinging lower abdominal pain (mittelschmerz), breast tenderness, slippery discharge that resembles egg whites, and increased basal body temperature.");
array_push($cmother,"Since doctors calculate your due date from the first day of your last period, week one begins with the start of the last period you have before you conceive. That's to say that you are not technically pregnant yet.Ovulation typically occurs during what's considered week two. Your ovary will release a mature egg that travels into the fallopian tube, where it awaits fertilization with sperm. Symptoms of ovulation can include twinging lower abdominal pain (mittelschmerz), breast tenderness, slippery discharge that resembles egg whites, and increased basal body temperature.");
array_push($cmother,"During week three, the fertilized egg implants into the uterine lining. Some people experience mild abdominal cramping or light spotting known as implantation bleeding. Call your doctor if you're bleeding heavily or have intense pain; this could indicate an ectopic pregnancy where the embryo implanted outside of the uterus (usually in the fallopian tube).");
array_push($cmother,"Your at-home pregnancy test can come back positive as early as this week—congratulations! Breast tenderness, one of the earliest signs of pregnancy in some people, might make your bra feel extra uncomfortable at this time. Some also experience a heightened sense of smell or taste, fatigue, constipation, bloating, and mood swings. But don't worry if you don't have any pregnancy symptoms at all; they might take a few extra weeks to show up.");
array_push($cmother,"Hormone-induced mood swings can bring on a lot of feelings starting at week five. Your emotions may change from happy to depressed to angry for no conceivable reason. Other early pregnancy symptoms—like fatigue, breast tenderness, and even nausea—can kick in this early too.");
array_push($cmother,"For some, week six brings one of the most dreaded symptoms: morning sickness (although it may start further along in your pregnancy or not at all). Your heightened sense of smell can further exacerbate this queasiness, which sets the stage for food cravings and aversions. Morning sickness might stick around until the second trimester, so it's best to find ways to cope now, such as eating smaller meals, consuming ginger, wearing acupressure wristbands, and avoiding triggering foods.");
array_push($cmother,"Frequent urination is another early pregnancy symptom. It's caused by a few factors: the pregnancy hormone hCG, increased fluids in your body, your kidneys working extra hard to eliminate waste, and eventually, your growing uterus compressing your bladder. Plan for plenty of bathroom breaks!");
array_push($cmother,"For many, pregnancy symptoms appear in full force by now: nausea, breast tenderness, fatigue, frequent urination, mood swings, bloating, etc. Another unusual symptom is extra saliva in your mouth, which sometimes lasts until the end of the first trimester. Headaches are also common thanks, in part, to hormonal surges.");
array_push($cmother,"Did you know that pregnancy can affect your digestive system? Pregnancy hormones can change the motility of your intestines, leading them to move more slowly than usual. Many people experience constipation and excess gas, in addition to the nausea that accompanies morning sickness. Plus, as your baby grows, the more your digestive system slows, so talk to your doctor about stool softeners if needed.");
array_push($cmother,"Are you glowing? Some people will experience a radiant pregnancy glow in the first trimester, but it's also common to experience hormone-induced acne. You'll also notice your breasts—and your belly—getting bigger each week.");
array_push($cmother,"Your growing baby bump might cause aches and cramping around your abdomen. This round ligament pain can be mildly uncomfortable or downright painful. You might also notice a clear or creamy discharge (known as leukorrhea) in your underwear that signals your body is attempting to clear bacteria, which is a normal during pregnancy.");
array_push($cmother,"Did you know that blood volume increases by about 50 percent during pregnancy? One side effect is visible veins on the skin, which are especially noticeable in lighter-skinned people.");
array_push($cmother,"As you near the end of the first trimester, many early pregnancy symptoms will diminish. You might start to notice, however, that you feel dizzy throughout the day. You can thank hormonal shifts, reduced blood flow, and lower blood pressure for these dizzy spells. Combat them by taking deep breaths with your head between your knees and changing positions slowly.");
array_push($cmother,"You're officially in the second trimester of pregnancy, which most deem to be the easiest trimester. Many people report increased appetite, renewed energy, and higher sex drive during the next few weeks. If that's you, take advantage of this feel good trimester by starting a doctor-approved fitness routine and preparing your house for baby.");
array_push($cmother,"The second trimester can also come with a few strange symptoms. You might experience a stuffy nose (thanks to an increase of blood in the mucus membranes), leg cramps, and sensitive gums. As the hormone relaxin loosens your ligaments, you might also feel extra clumsy at this stage of pregnancy.");
array_push($cmother,"About 90 percent of pregnant people experience a darkening of the skin around the nipples, inner thighs, armpits, and navel. Sometimes the darkening extends to the cheeks and nose (known as the mask of pregnancy)—especially if you have a darker complexion.");
array_push($cmother,"Backaches are very common while expecting (you can thank pregnancy hormones yet again!). And if you're feeling more forgetful than normal, blame the so-called pregnancy brain that many experience. As a plus, many expectant parents start feeling their baby kick between weeks 16 to 25, so be on the lookout!");
array_push($cmother,"By now, your belly likely looks pregnant—and your breasts have begun to increase in size to prepare for making breast milk. Expect to gain weight regularly until delivery (usually about 1 pound per week). Stretch marks might appear as well, anywhere from to your stomach to your hips and breasts. Even foot size can increase during pregnancy!");
array_push($cmother,"During the second trimester, some pregnant people experience heartburn. This is because pregnancy hormones relax the muscles of your lower esophageal sphincter (LES). If you experience this uncomfortable symptom, try eating smaller meals, staying upright after eating, and avoiding anything acidic, greasy, or spicy. Constipation might also occur as your baby presses against your intestines.");
array_push($cmother,"By now, your little one might be kicking up a storm! The first kicks feel like fluttering in your stomach. Also common during this time are leg cramps, swelling in the hands and feet, dry eyes, varicose veins, and trouble sleeping. If you haven't already, try using a pregnancy pillow for a better night's rest.");
array_push($cmother,"Although you might've had round ligament pain for a while, it tends to increase as the baby grows. You may feel sharpness in your hip, groin, and abdomen as they stretch to accommodate your growing uterus. Your uterus can also put pressure on your lungs, causing shortness of breath.");
array_push($cmother,"Pregnancy often results thicker, shinier hair and fast-growing nails thanks to increased progesterone and your body stocking up on extra nutrients (so don't forget to continue taking your prenatal vitamin). You might notice your locks feel stronger and more bountiful than usual. But you might also get dry, irritated skin on your stomach, since it's constantly being stretched.");
array_push($cmother,"Your ever-growing belly can turn an innie belly button into an outie, but rest assured it will return to its normal state after delivery. During this time, you'll probably continue dealing with leg cramps, brain fog, backaches, increased vaginal discharge, constipation, headaches, stretch marks, and other second trimester pregnancy symptoms.");
array_push($cmother,"While some pregnant people still have a high sex drives, others notice a dwindling libido. They might feel too sore and tired to do the deed. Other pregnancy symptoms include tingling hands and bleeding gums, as well as snoring from swollen membranes and pregnancy weight gain.");
array_push($cmother,"Do your hands and fingers feel tingly? You may be experiencing carpal tunnel syndrome, which when experienced during pregnancy, is often a result of normal swelling and fluid retention. This numb sensation should go away after you give birth. In the meantime, avoid sleeping on your hands, and try shaking out your wrists throughout the day.");
array_push($cmother,"Sleep might not come easily as you near the third trimester, whether it's because of anxiety, leg cramps, frequent urination, or general discomfort. You might also experience itchiness in your hands and feet. Mild itchiness is usually benign, and it can be treated with antihistamines, ointments, or calming lotions. Intense itching, however, could signal a liver disorder called cholestasis of pregnancy that requries medical care.");
array_push($cmother,"As if backaches and leg cramps weren't bad enough, some people get hemorrhoids during the second trimester. These itchy, swollen veins pop up in the rectum because of increased blood flow and pressure, and they can get worse with the straining that often accompanies constipation. Relieve hemorrhoid pain and bleeding with ice packs, sitz baths, or witch hazel pads.");
array_push($cmother,"Welcome to the third trimester! As you near the finish line, you may start feeling physically exhausted and generally uncomfortable. Aches and pains are commonplace, and some will have symphysis pubis dysfunction (SPD), which happens when the ligaments around the pubic bone become soft and unstable.");
array_push($cmother,"As your body prepares to feed your baby after birth, you might notice yellowish colostrum leaking from your breasts. This fluid serves as a precursor to mature breast milk, and it helps your little one's body adjust to life outside the womb.");
array_push($cmother,"If you have experienced itchiness, swelling, aching, and heartburn, it probably hasn't subsided yet. If you have stretch marks like the majority of pregnant people, they are probably getting more pronounced as well. These red, pink, purple, or even dark brown streaks can't be prevented—in fact, they are usually genetically-determined—but they'll fade significantly with time.");
array_push($cmother,"Perhaps you were thrilled to put first trimester pregnancy symptoms behind you, but now some of them might make a comeback. For some people, they may have never left. For example, your breasts may become tender again as they start producing colostrum; you'll likely need to pee frequently because of the pressure of your uterus against your bladder; and you may become extremely exhausted after only minimal effort. Hang in there.");
array_push($cmother,"After 20 weeks of pregnancy, your body might produce practice contractions called Braxton Hicks. They're characterized by a sporadic hardening or tightening of the uterus—and they come more often as the pregnancy progresses. Braxton Hicks contractions usually last between 30 seconds and two minutes, and they'll stop if you change positions. While Braxton Hicks are expected, call your doctor if you experience contractions that get stronger and more frequent, as that can be a sign of premature labor.");
array_push($cmother,"Your baby is getting bigger, and they're still pressing against your internal organs. The result? The potential for a leaky bladder, shortness of breath, heartburn, and general discomfort.");
array_push($cmother,"You're getting closer to delivery, but remember: Every day counts for your baby's development during the last few weeks of pregnancy, so you'll want to let your baby continue growing as long as it's medically safe. You may notice some decreased movement as your baby grows and gets into position for birth, but always contact your doctor if you have any concerns or notice significantly less movement.");
array_push($cmother,"As labor quickly approaches, you'll notice more regular Braxton Hicks contractions. Make sure you know how to differentiate these practice pains from actual contractions. Your weight gain might also begin to plateau around week 35, and many people find that insomnia comes in full force.");
array_push($cmother,"Your little one is on the move! About two to four weeks before delivery, your baby will begin dropping into your lower pelvis (also called lightening or engagement). This move may take some pressure off your internal organs, allowing you to breathe easier.");
array_push($cmother,"Your little one's new position might lead to pelvic discomfort and increased abdominal pressure. You might notice a little spotting after sex, but you shouldn't worry: This is probably a result of your sensitive, enlarged cervix. Call your doctor if you're bleeding heavily, though, since this could indicate problem with the placenta.");
array_push($cmother,"Around week 37 or 38, most pregnant people lose their mucus plug. The mucus plug blocks the opening to your your cervix to protect your baby from germs. It typically gets released anywhere from a few days to a couple of weeks before labor, and it looks like thick pink or blood-tinged discharge.");
array_push($cmother,"If your water breaks, you may notice a gush of fluid or a slow trickle. Other early signs of labor include regular contractions, pelvic pressure, dull back pain, and a feeling of restlessness. Early labor tends to last for hours. Many doctors recommend that first-time parents wait this phase out and head to the hospital when contractions come every four or five minutes, last for one minute, and continue in this pattern for an hour (the 4-1-1 or 5-1-1 rule), but your provider may have a different recommendation for you.");
array_push($cmother,"You'll likely keep experiencing pregnancy symptoms like insomnia, swelling, frequent urination, and pelvic discomfort until your baby arrives. If you've scheduled an induction or C-section, it may happen within the next few days or weeks.");
array_push($cmother,"After 40 weeks, your baby is considered overdue as they've passed their due date, but in most cases, this is perfectly fine and it's actually quite common. Even so, an overdue baby can cause some anxiety and restlessness, but hang in there and watch for signs of labor. Your little one will be here soon!");
array_push($cmother,"Most babies are born within two weeks of their due date (before or after), so while reaching week 42 might be exhausting, it's not uncommon. If your doctor is concerned, they may recommend inducing labor. In the meantime, continue to take care of yourself—your baby will be in your arms before you know it.");



?>