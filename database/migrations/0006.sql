BEGIN;

  ALTER TABLE exercise ALTER COLUMN name TYPE VARCHAR(255);

  INSERT INTO focus (name) VALUES('Strength'),('Warmup'),('SMR'),('Conditioning'),('Powerlifting'),('Plyometrics'),('Activation'),('Olympic Weightlifting'),('Strongman');
  INSERT INTO equipment (name) VALUES('Bodyweight'),('Other'),('Cable'),('Barbell'),('Exercise Ball'),('Kettle Bells'),('Bands'),('Dumbbell'),('Medicine Ball'),('Machine'),('Foam Roll'),('EZ Bar'),('Jump Rope'),('Tiger Tail'),('Lacrosse Ball'),('Bench'),('Valslide'),('Sled'),('Chains'),('Rings'),('Hip Thruster'),('Trap Bar'),('Landmine'),('Box'),('Tire'),('Rope');
  INSERT INTO force (name) VALUES('Isolation'),('Compound');
  INSERT INTO experience (name) VALUES ('Beginner'),('Intermediate'),('Advanced');

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Floor Leg Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1700000,
    'https://www.muscleandstrength.com/exercises/lying-floor-leg-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Crunch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1000000,
    'https://www.muscleandstrength.com/exercises/weighted-crunch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Crunch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2400000,
    'https://www.muscleandstrength.com/exercises/cable-crunch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Plank',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1600000,
    'https://www.muscleandstrength.com/exercises/hover.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hanging Leg Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1500000,
    'https://www.muscleandstrength.com/exercises/hanging-leg-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Sit Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    941900,
    'https://www.muscleandstrength.com/exercises/decline-situp.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Ab Crunch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    437799,
    'https://www.muscleandstrength.com/exercises/ab-crunch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Side Plank',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    649400,
    'https://www.muscleandstrength.com/exercises/side-hover.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Sit Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1299999,
    'https://www.muscleandstrength.com/exercises/sit-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Abdominal Rollouts',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    600799,
    'https://www.muscleandstrength.com/exercises/abdominal-barbell-rollouts.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Abdominal Air Bike (AKA Bicycle)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    688400,
    'https://www.muscleandstrength.com/exercises/abdominal-air-bike.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Crunch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    594500,
    'https://www.muscleandstrength.com/exercises/swiss-ball-crunch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hanging Knee Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    846000,
    'https://www.muscleandstrength.com/exercises/hanging-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rotating Mountain Climber',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    155199,
    'https://www.muscleandstrength.com/exercises/rotating-mountain-climber'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Floor Knee Tuck',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    234100,
    'https://www.muscleandstrength.com/exercises/lying-floor-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hanging Knee Raise With Twist',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    391899,
    'https://www.muscleandstrength.com/exercises/twisting-hanging-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Floor Crunch (legs on bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1000000,
    'https://www.muscleandstrength.com/exercises/floor-crunch-legs-on-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Russian Twist',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    447399,
    'https://www.muscleandstrength.com/exercises/russian-twist.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dead Bug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    107199,
    'https://www.muscleandstrength.com/exercises/dead-bug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternate Straight Leg Lower',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    68300,
    'https://www.muscleandstrength.com/exercises/alternate-straight-leg-lowering'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Abdominal Reach',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    157500,
    'https://www.muscleandstrength.com/exercises/decline-abdominal-reach.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Stomach Vacuum',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    75500,
    'https://www.muscleandstrength.com/exercises/standing-stomach-vacuum'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Turkish Get Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    48400,
    'https://www.muscleandstrength.com/exercises/turkish-get-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pallof Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    114400,
    'https://www.muscleandstrength.com/exercises/pallof-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Pallof Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14899,
    'https://www.muscleandstrength.com/exercises/half-kneeling-pallof-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Dead Bug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12899,
    'https://www.muscleandstrength.com/exercises/kettlebell-dead-bug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Knee Tucks',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    112099,
    'https://www.muscleandstrength.com/exercises/seated-leg-tucks.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Plank to Hip Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    67300,
    'https://www.muscleandstrength.com/exercises/plank-to-hip-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Feet Elevated Plank',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    142800,
    'https://www.muscleandstrength.com/exercises/plank-with-feet-on-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pallof Press with Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15600,
    'https://www.muscleandstrength.com/exercises/pallof-press-with-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Abominal Hip Thrust',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    326500,
    'https://www.muscleandstrength.com/exercises/hip-thrusts.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rotating Crunch (Legs On Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    137699,
    'https://www.muscleandstrength.com/exercises/twisting-bench-crunch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Alphabet',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3900,
    'https://www.muscleandstrength.com/exercises/band-alphabet'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Leg Raise (On Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    239899,
    'https://www.muscleandstrength.com/exercises/lying-bench-leg-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Jackknife (On Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    140199,
    'https://www.muscleandstrength.com/exercises/bench-jack-knife.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Ipsilateral Bird Dog',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8899,
    'https://www.muscleandstrength.com/exercises/ipsilateral-bird-dog'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Straight Leg Toe Touch (Floor Toe Reach)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    312000,
    'https://www.muscleandstrength.com/exercises/floor-reach.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reach And Catch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    73300,
    'https://www.muscleandstrength.com/exercises/reach-and-catch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Windmill',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6699,
    'https://www.muscleandstrength.com/exercises/kettlebell-windmill'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Twisting Cable Crunch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    31600,
    'https://www.muscleandstrength.com/exercises/twisting-cable-crunch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Leg Raise With Hip Thrust',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    35700,
    'https://www.muscleandstrength.com/exercises/decline-leg-raise-with-hip-thrust.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Cable Crunch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    28000,
    'https://www.muscleandstrength.com/exercises/lying-cable-crunch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Contralateral Bird Dog',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7800,
    'https://www.muscleandstrength.com/exercises/contralateral-bird-dog'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Hanging Knee Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    37700,
    'https://www.muscleandstrength.com/exercises/weighted-hanging-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bottoms Up Kettlebell Turkish Get Up to Hand',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2200,
    'https://www.muscleandstrength.com/exercises/bottoms-up-kettlebell-turkish-get-up-to-hand'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Alternating Knee Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    52700,
    'https://www.muscleandstrength.com/exercises/lying-alternate-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Cable Knee Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    21200,
    'https://www.muscleandstrength.com/exercises/decline-cable-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Roman Chair Weighted Knee Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    73500,
    'https://www.muscleandstrength.com/exercises/weighted-chair-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Lying Cable Knee Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12199,
    'https://www.muscleandstrength.com/exercises/one-leg-lying-cable-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Knee Tuck to Heel Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8300,
    'https://www.muscleandstrength.com/exercises/knee-tuck-to-heel-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lower Abdominal Hip Roll',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    19799,
    'https://www.muscleandstrength.com/exercises/lower-abdominal-hip-roll.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Medicine Ball Dead Bug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9300,
    'https://www.muscleandstrength.com/exercises/medicine-ball-dead-bug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Alternating Leg Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8800,
    'https://www.muscleandstrength.com/exercises/decline-bench-alternate-leg-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Weighted Sit up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    20700,
    'https://www.muscleandstrength.com/exercises/weighted-exercise-ball-sit-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Push-Pull',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4599,
    'https://www.muscleandstrength.com/exercises/half-kneeling-push-pull'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hands Overhead Ab Crunch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6599,
    'https://www.muscleandstrength.com/exercises/hands-overhead-ab-crunch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Twisting Lying Cable Crunch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10100,
    'https://www.muscleandstrength.com/exercises/twisting-lying-cable-crunch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Tall Kneeling Push-Pull',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3599,
    'https://www.muscleandstrength.com/exercises/tall-kneeling-push-pull'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Upper Body Band Resistance Dead Bug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3799,
    'https://www.muscleandstrength.com/exercises/upper-body-band-resisted-dead-bug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Alternating Knee Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    42200,
    'https://www.muscleandstrength.com/exercises/decline-bench-alternate-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Cable Crunch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    21100,
    'https://www.muscleandstrength.com/exercises/decline-bench-cable-crunch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bottoms Up Kettlebell Turkish Get Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799,
    'https://www.muscleandstrength.com/exercises/bottoms-up-kettlebell-turkish-get-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Roman Chair Twisting Knee Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    19200,
    'https://www.muscleandstrength.com/exercises/chair-twisting-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Cable Knee Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14399,
    'https://www.muscleandstrength.com/exercises/lying-cable-knee-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Straight Leg Dead Bug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5699,
    'https://www.muscleandstrength.com/exercises/straight-leg-dead-bug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Adductor Pallof Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3900,
    'https://www.muscleandstrength.com/exercises/half-kneeling-adductor-pallof-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Side Bends',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    33200,
    'https://www.muscleandstrength.com/exercises/barbell-side-bends.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bottoms Up Kettlebell Turkish Get Up to Knee',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2099,
    'https://www.muscleandstrength.com/exercises/bottoms-up-kettlebell-turkish-get-up-to-knee'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bird Dog with Band RNT',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3799,
    'https://www.muscleandstrength.com/exercises/bird-dog-with-band-rnt'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Turkish Get Up to Hand',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3700,
    'https://www.muscleandstrength.com/exercises/turkish-get-up-to-hand'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Climbs',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5900,
    'https://www.muscleandstrength.com/exercises/barbell-climbs'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Split Stance Pallof Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7199,
    'https://www.muscleandstrength.com/exercises/split-stance-pallof-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Pallof Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4000,
    'https://www.muscleandstrength.com/exercises/lying-pallof-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '3 Month Position Kettlebell Pullover',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    16600,
    'https://www.muscleandstrength.com/exercises/3-month-position-kettlebell-pullover'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wall Press Straight Leg Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4699,
    'https://www.muscleandstrength.com/exercises/wall-press-straight-leg-extension'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Abs'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Reach And Catch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15899,
    'https://www.muscleandstrength.com/exercises/alternate-reach-and-catch.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Adductors'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hip Adduction Machine',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    267600,
    'https://www.muscleandstrength.com/exercises/hip-adduction-machine.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Adductors'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Hip Adduction',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    19600,
    'https://www.muscleandstrength.com/exercises/cable-hip-adduction.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Adductors'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Lateral Lunge with Overhead Reach',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13899,
    'https://www.muscleandstrength.com/exercises/alternating-lateral-lunge-with-overhead-reach'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Adductors'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rocking Frog Stretch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14699,
    'https://www.muscleandstrength.com/exercises/rocking-frog-stretch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Adductors'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Deep Squat Prying',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14600,
    'https://www.muscleandstrength.com/exercises/deep-squat-prying'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Adductors'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Foam Roll'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Adductor Foam Rolling',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5900,
    'https://www.muscleandstrength.com/exercises/adductor-foam-rolling'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Adductors'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lateral Kneeling Adductor Mobilization',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5599,
    'https://www.muscleandstrength.com/exercises/lateral-kneeling-adductor-mobilization'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Hammer Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3099999,
    'https://www.muscleandstrength.com/exercises/standing-hammer-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Dumbbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4199999,
    'https://www.muscleandstrength.com/exercises/standing-dumbbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Dumbbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3099999,
    'https://www.muscleandstrength.com/exercises/incline-dumbbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Barbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4599999,
    'https://www.muscleandstrength.com/exercises/standing-barbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1700000,
    'https://www.muscleandstrength.com/exercises/cable-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Concentration Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599999,
    'https://www.muscleandstrength.com/exercises/concentration-cur.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'EZ Bar Preacher Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2200000,
    'https://www.muscleandstrength.com/exercises/ez-bar-preacher-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Zottman Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1200000,
    'https://www.muscleandstrength.com/exercises/zottman-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cross Body Hammer Curl (Pinwheel Curls)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1700000,
    'https://www.muscleandstrength.com/exercises/hammer-curl-across-the-body.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Preacher Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    924599,
    'https://www.muscleandstrength.com/exercises/preacher-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Seated Dumbbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/alternate-seated-dumbbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'EZ Bar Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    859799,
    'https://www.muscleandstrength.com/exercises/ez-bar-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Curl (Rope Extension)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    585400,
    'https://www.muscleandstrength.com/exercises/rope-cable-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Standing Dumbbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    887500,
    'https://www.muscleandstrength.com/exercises/alternating-standing-dumbbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Machine Bicep Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    416299,
    'https://www.muscleandstrength.com/exercises/bicep-machine-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Spider Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    428899,
    'https://www.muscleandstrength.com/exercises/spider-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Dumbbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    537799,
    'https://www.muscleandstrength.com/exercises/seated-dumbbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Dumbbell Reverse Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    377299,
    'https://www.muscleandstrength.com/exercises/standing-dumbbell-reverse-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing High Pulley Cable Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    258000,
    'https://www.muscleandstrength.com/exercises/standing-high-pulley-cable-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Preacher Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    209199,
    'https://www.muscleandstrength.com/exercises/dumbbell-preacher-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Hammer Preacher Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    50299,
    'https://www.muscleandstrength.com/exercises/dumbbell-hammer-preacher-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Hammer Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    135600,
    'https://www.muscleandstrength.com/exercises/seated-hammer-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Drag Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    188699,
    'https://www.muscleandstrength.com/exercises/barbell-drag-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Drag Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    26299,
    'https://www.muscleandstrength.com/exercises/cable-drag-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Preacher Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    512099,
    'https://www.muscleandstrength.com/exercises/preacher-cable-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Standing Hammer Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    258799,
    'https://www.muscleandstrength.com/exercises/alternate-standing-hammer-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Cable Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    96500,
    'https://www.muscleandstrength.com/exercises/one-arm-cable-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Close Grip EZ Bar Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    36400,
    'https://www.muscleandstrength.com/exercises/close-grip-ez-bar-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Standing Dumbbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    37900,
    'https://www.muscleandstrength.com/exercises/one-arm-standing-dumbbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Incline Dumbbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    79500,
    'https://www.muscleandstrength.com/exercises/alternate-incline-dumbbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Dumbbell Hammer Preacher Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    19200,
    'https://www.muscleandstrength.com/exercises/one-arm-dumbbell-hammer-preacher-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Cable Curl (On Floor)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    49000,
    'https://www.muscleandstrength.com/exercises/lying-cable-curl-floor.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Standing Hammer Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    70099,
    'https://www.muscleandstrength.com/exercises/one-arm-standing-hammer-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lateral Pulldown Bicep Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    84599,
    'https://www.muscleandstrength.com/exercises/cable-underhand-pull-down.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Dumbbell Preacher Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    46599,
    'https://www.muscleandstrength.com/exercises/one-arm-preacher-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Grip Standing Barbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    93900,
    'https://www.muscleandstrength.com/exercises/wide-grip-standing-barbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Dumbbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    92199,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-dumbbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hammer Bar Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    64300,
    'https://www.muscleandstrength.com/exercises/barbell-hammer-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Barbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    105900,
    'https://www.muscleandstrength.com/exercises/seated-barbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Biceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Dumbbell Drag Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    27600,
    'https://www.muscleandstrength.com/exercises/standing-dumbbell-drag-curl'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3200000,
    'https://www.muscleandstrength.com/exercises/seated-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Dumbbell Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1000000,
    'https://www.muscleandstrength.com/exercises/seated-dumbbell-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '45 Degree Leg Press Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1200000,
    'https://www.muscleandstrength.com/exercises/45-degress-calf-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Machine Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    525299,
    'https://www.muscleandstrength.com/exercises/standing-machine-calf-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Standing Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    442799,
    'https://www.muscleandstrength.com/exercises/bodyweight-standing-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing One-Leg Calf Raise With Dumbbell',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    993200,
    'https://www.muscleandstrength.com/exercises/standing-one-leg-calf-raise-with-dumbbell.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Barbell Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/standing-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    343200,
    'https://www.muscleandstrength.com/exercises/smith-machine-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Standing Bodyweight Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    201500,
    'https://www.muscleandstrength.com/exercises/one-leg-standing-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Seated Dumbbell Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    174100,
    'https://www.muscleandstrength.com/exercises/one-leg-seated-dumbbell-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Donkey Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    156199,
    'https://www.muscleandstrength.com/exercises/donkey-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Tibialis Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    25799,
    'https://www.muscleandstrength.com/exercises/banded-tibialis-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Floor Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    25100,
    'https://www.muscleandstrength.com/exercises/one-leg-floor-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Smith Machine Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12000,
    'https://www.muscleandstrength.com/exercises/smith-machine-one-leg-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Jump Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Side to Side Jump Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5900,
    'https://www.muscleandstrength.com/exercises/side-to-side-jump-rope'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Toes In Standing Machine Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4699,
    'https://www.muscleandstrength.com/exercises/toes-in-standing-machine-calf-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Barbell Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    28299,
    'https://www.muscleandstrength.com/exercises/seated-barbell-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hack Squat Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    49200,
    'https://www.muscleandstrength.com/exercises/hack-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    28700,
    'https://www.muscleandstrength.com/exercises/cable-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Jump Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Jump Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    21399,
    'https://www.muscleandstrength.com/exercises/jump-rope'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '45 Degree Toe Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    24500,
    'https://www.muscleandstrength.com/exercises/45-degree-toe-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Barbell Calf Raise (On Floor)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    40400,
    'https://www.muscleandstrength.com/exercises/floor-barbell-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Jump Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Double Jump Jump Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3500,
    'https://www.muscleandstrength.com/exercises/double-jump-jump-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Smith Machine Toe Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10399,
    'https://www.muscleandstrength.com/exercises/smith-machine-one-leg-toe-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Tiger Tail'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Anterior Calf Tiger Tail',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2200,
    'https://www.muscleandstrength.com/exercises/anterior-calf-tiger-tail'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Jump Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Front to Back Jump Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299,
    'https://www.muscleandstrength.com/exercises/front-to-back-jump-rope'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rocking Gastrocnemius Emphasis Ankle Mobilization',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3099,
    'https://www.muscleandstrength.com/exercises/rocking-gastroc-emphasis-ankle-mobilization'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Donkey Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    29399,
    'https://www.muscleandstrength.com/exercises/one-leg-donkey-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Toes In Seated Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14600,
    'https://www.muscleandstrength.com/exercises/toes-in-seated-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Seated Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    25399,
    'https://www.muscleandstrength.com/exercises/one-leg-seated-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Jump Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Jump Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4099,
    'https://www.muscleandstrength.com/exercises/reverse-jump-rope'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Toe Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10199,
    'https://www.muscleandstrength.com/exercises/smith-machine-toe-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rocking Soleus Emphasis Ankle Mobilization',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3200,
    'https://www.muscleandstrength.com/exercises/rocking-soleus-emphasis-ankle-mobilization'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball On-The-Wall Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13399,
    'https://www.muscleandstrength.com/exercises/exercise-ball-on-the-wall-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Toes Out Seated Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12300,
    'https://www.muscleandstrength.com/exercises/toes-out-seated-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Seated Toe Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10000,
    'https://www.muscleandstrength.com/exercises/smith-machine-seated-toe-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Lacrosse Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Anterior Calf Lacrosse Ball',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2200,
    'https://www.muscleandstrength.com/exercises/anterior-calf-lacrosse-ball'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Smith Machine Seated Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9399,
    'https://www.muscleandstrength.com/exercises/one-leg-smith-machine-seated-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Jump Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Skipping Jump Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299,
    'https://www.muscleandstrength.com/exercises/skipping-jump-rope'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Calves'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Floor Calf Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    39799,
    'https://www.muscleandstrength.com/exercises/floor-calf-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Pullover',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5699999,
    'https://www.muscleandstrength.com/exercises/dumbbell-pullover.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6699999,
    'https://www.muscleandstrength.com/exercises/dumbbell-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Dumbbell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5699999,
    'https://www.muscleandstrength.com/exercises/incline-dumbbell-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Flys',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5099999,
    'https://www.muscleandstrength.com/exercises/dumbbell-flys.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pec Deck',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3099999,
    'https://www.muscleandstrength.com/exercises/pec-dec.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5000000,
    'https://www.muscleandstrength.com/exercises/barbell-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3700000,
    'https://www.muscleandstrength.com/exercises/incline-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Cable Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1799999,
    'https://www.muscleandstrength.com/exercises/cable-crossovers-(mid-chest).html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hammer Strength Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2000000,
    'https://www.muscleandstrength.com/exercises/hammer-strength-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Close Grip Dumbbell Press (AKA Crush Press)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    985400,
    'https://www.muscleandstrength.com/exercises/close-grip-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Iron Cross',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1399999,
    'https://www.muscleandstrength.com/exercises/cable-crossovers.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Chest Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2000000,
    'https://www.muscleandstrength.com/exercises/chest-dip.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Dumbbell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    744299,
    'https://www.muscleandstrength.com/exercises/reverse-dumbbell-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Crossovers (Upper Chest)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    659099,
    'https://www.muscleandstrength.com/exercises/cable-crossovers-(upper-chest).html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Dumbbell Flys',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/incline-dumbbell-flys.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    792400,
    'https://www.muscleandstrength.com/exercises/decline-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Low to High Cable Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    186699,
    'https://www.muscleandstrength.com/exercises/cable-lower-chest-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    977099,
    'https://www.muscleandstrength.com/exercises/push-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hammer Strength Machine Incline Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    314299,
    'https://www.muscleandstrength.com/exercises/hammer-strength-incline-bench-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Incline Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    438500,
    'https://www.muscleandstrength.com/exercises/incline-smith-machine-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Chest Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    111900,
    'https://www.muscleandstrength.com/exercises/cable-chest-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Dumbbell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    426299,
    'https://www.muscleandstrength.com/exercises/decline-dumbbell-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing High to Low Cable Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    170100,
    'https://www.muscleandstrength.com/exercises/cable-crossovers-bent-over.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Dumbbell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    31000,
    'https://www.muscleandstrength.com/exercises/swiss-ball-dumbbell-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    120900,
    'https://www.muscleandstrength.com/exercises/smith-machine-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Cable Flys',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    52900,
    'https://www.muscleandstrength.com/exercises/incline-cable-flys.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Plyometric Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    91500,
    'https://www.muscleandstrength.com/exercises/plyometric-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Neutral Grip Incline Dumbbell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    37000,
    'https://www.muscleandstrength.com/exercises/palms-in-incline-dumbbell-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Chest Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    258200,
    'https://www.muscleandstrength.com/exercises/weighted-chest-dip.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Dumbbell Flys',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    89800,
    'https://www.muscleandstrength.com/exercises/decline-dumbbell-flys.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Eccentric Only Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    21100,
    'https://www.muscleandstrength.com/exercises/eccentric-only-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Stretch Push Up (On Risers)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    175800,
    'https://www.muscleandstrength.com/exercises/deep-push-ups.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Neutral Grip Dumbbell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    93400,
    'https://www.muscleandstrength.com/exercises/palms-in-dumbbell-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Dumbbell Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    58299,
    'https://www.muscleandstrength.com/exercises/one-arm-dumbbell-fly'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Dumbbell Twist Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11500,
    'https://www.muscleandstrength.com/exercises/incline-dumbbell-twist-fly'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Knee Push-Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    51299,
    'https://www.muscleandstrength.com/exercises/knee-pushups.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'T-Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6699,
    'https://www.muscleandstrength.com/exercises/t-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Cable Chest Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9300,
    'https://www.muscleandstrength.com/exercises/incline-cable-chest-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cross Body Arm Swings',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14100,
    'https://www.muscleandstrength.com/exercises/cross-body-arm-swings'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Cable Pullover',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    58599,
    'https://www.muscleandstrength.com/exercises/lying-cable-pullover.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Push Up Plus',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6699,
    'https://www.muscleandstrength.com/exercises/push-up-plus'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Straight Bar Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    17799,
    'https://www.muscleandstrength.com/exercises/straight-bar-dip'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Powerlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '1 Board Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3599,
    'https://www.muscleandstrength.com/exercises/1-board-bench-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Bench Press Rotational Grip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    17799,
    'https://www.muscleandstrength.com/exercises/rotational-grip-dumbbell-bench-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bench'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Grip Decline Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8899,
    'https://www.muscleandstrength.com/exercises/wide-grip-decline-bench-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Push Up Jacks',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5900,
    'https://www.muscleandstrength.com/exercises/push-up-jacks'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Dumbbell Twist Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5500,
    'https://www.muscleandstrength.com/exercises/decline-dumbbell-twist-fly'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Neutral Grip Decline Dumbbell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12399,
    'https://www.muscleandstrength.com/exercises/palms-in-decline-dumbbell-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Pullover And Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    32900,
    'https://www.muscleandstrength.com/exercises/barbell-pullover-and-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Push Up to Side Plank',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5300,
    'https://www.muscleandstrength.com/exercises/push-up-to-side-plank'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Dumbbell Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    49599,
    'https://www.muscleandstrength.com/exercises/alternate-dumbbell-flys.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Medicine Ball Chest Pass',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2900,
    'https://www.muscleandstrength.com/exercises/half-kneeling-medicine-ball-chest-pass'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Push Up (Feet on Swiss Ball)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    24399,
    'https://www.muscleandstrength.com/exercises/incline-swiss-ball-push-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lateral Hand Walk Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8800,
    'https://www.muscleandstrength.com/exercises/lateral-hand-walk-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Grip Incline Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    22299,
    'https://www.muscleandstrength.com/exercises/wide-grip-incline-bench-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Knuckle Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7099,
    'https://www.muscleandstrength.com/exercises/knuckle-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rack Pec Stretch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4900,
    'https://www.muscleandstrength.com/exercises/rack-pec-stretch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Self-Assisted Straight Bar Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6900,
    'https://www.muscleandstrength.com/exercises/self-assisted-straight-bar-dip'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Eccentric Only Incline Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3799,
    'https://www.muscleandstrength.com/exercises/eccentric-only-incline-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Leg Medicine Ball Chest Pass Wall Tap',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3400,
    'https://www.muscleandstrength.com/exercises/single-leg-medicine-ball-chest-pass-wall-tap'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Valslide'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Valslide Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4300,
    'https://www.muscleandstrength.com/exercises/valslide-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Medicine Ball Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4099,
    'https://www.muscleandstrength.com/exercises/alternating-medicine-ball-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Wide Grip Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    20799,
    'https://www.muscleandstrength.com/exercises/smith-machine-wide-grip-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Sled Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299,
    'https://www.muscleandstrength.com/exercises/sled-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Reach Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6400,
    'https://www.muscleandstrength.com/exercises/alternating-reach-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Grip Incline Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7599,
    'https://www.muscleandstrength.com/exercises/wide-grip-incline-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Chains'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bench Press Against Chains',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2299,
    'https://www.muscleandstrength.com/exercises/bench-press-against-chains'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Bottoms Up Kettlebell Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4000,
    'https://www.muscleandstrength.com/exercises/one-arm-bottoms-up-kettlebell-bench-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Foam Roll'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pec Foam Rolling',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10500,
    'https://www.muscleandstrength.com/exercises/foam-rolling-pecs'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Push-Up (On Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    21899,
    'https://www.muscleandstrength.com/exercises/bench-pushups.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Chains'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Chain Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/chain-fly'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bird Dog Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7500,
    'https://www.muscleandstrength.com/exercises/bird-dog-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Reverse Grip Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    34099,
    'https://www.muscleandstrength.com/exercises/wide-reverse-grip-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Medicine Ball Power Drop',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4800,
    'https://www.muscleandstrength.com/exercises/lying-medicine-ball-power-drop'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Plyometric Clapping Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9199,
    'https://www.muscleandstrength.com/exercises/plyometric-clapping-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '1 Leg Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    43200,
    'https://www.muscleandstrength.com/exercises/1-leg-pushup.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wall Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7199,
    'https://www.muscleandstrength.com/exercises/wall-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Tall Kneeling Medicine Ball Chest Pass',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3799,
    'https://www.muscleandstrength.com/exercises/tall-kneeling-medicine-ball-chest-pass'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Muscle Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3599,
    'https://www.muscleandstrength.com/exercises/muscle-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Cable Chest Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5900,
    'https://www.muscleandstrength.com/exercises/decline-cable-chest-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Powerlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '3 Board Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3599,
    'https://www.muscleandstrength.com/exercises/3-board-bench-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Feet on Wall Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12300,
    'https://www.muscleandstrength.com/exercises/feet-on-wall-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13899,
    'https://www.muscleandstrength.com/exercises/swiss-ball-push-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Lacrosse Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pec Lacrosse Ball',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3500,
    'https://www.muscleandstrength.com/exercises/pec-lacrosse-ball'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rings'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Ring Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5099,
    'https://www.muscleandstrength.com/exercises/ring-fly'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Dumbbell Bench Press (Low Start)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    20000,
    'https://www.muscleandstrength.com/exercises/alternate-dumbbell-bench-press-low-start.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling PVC Pec Mobilization',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799,
    'https://www.muscleandstrength.com/exercises/half-kneeling-pvc-pec-mobilization'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Dumbbell Bench Press on Exercise Ball',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3700,
    'https://www.muscleandstrength.com/exercises/alternating-dumbbell-bench-press-exercise-ball'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Twist Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12500,
    'https://www.muscleandstrength.com/exercises/dumbbell-twist-fly'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rings'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Ring Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2500,
    'https://www.muscleandstrength.com/exercises/ring-push-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Chest'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Dumbbell Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    17200,
    'https://www.muscleandstrength.com/exercises/swiss-ball-dumbbell-flys.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Barbell Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1500000,
    'https://www.muscleandstrength.com/exercises/barbell-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Behind-The-Back Barbell Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    880700,
    'https://www.muscleandstrength.com/exercises/standing-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Barbell Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    612500,
    'https://www.muscleandstrength.com/exercises/reverse-barbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Cable Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    45900,
    'https://www.muscleandstrength.com/exercises/reverse-cable-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Farmers Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    214399,
    'https://www.muscleandstrength.com/exercises/farmers-walk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Dumbbell Wrist Curl (Over Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    170699,
    'https://www.muscleandstrength.com/exercises/reverse-dumbbell-wrist-curl-over-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Dumbbell Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    152000,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-dumbbell-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Barbell Curl (EZ Bar)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    72000,
    'https://www.muscleandstrength.com/exercises/ez-bar-reverse-grip-barbell-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Preacher Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    49000,
    'https://www.muscleandstrength.com/exercises/reverse-preacher-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wrist Rollers',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    77099,
    'https://www.muscleandstrength.com/exercises/wrist-rollers.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Neutral Grip Dumbbell Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    27500,
    'https://www.muscleandstrength.com/exercises/seated-neutral-dumbbell-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Plate Pinch Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    20299,
    'https://www.muscleandstrength.com/exercises/plate-pinch-carry'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Fat Gripz Dumbbell Farmers Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5800,
    'https://www.muscleandstrength.com/exercises/fat-gripz-dumbbell-farmers-carry'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Reverse Grip Cable Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    18000,
    'https://www.muscleandstrength.com/exercises/standing-cable-reverse-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Wrist Curl (Over Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    98500,
    'https://www.muscleandstrength.com/exercises/barbell-wrist-curl-over-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Overhead Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9699,
    'https://www.muscleandstrength.com/exercises/dumbbell-overhead-carry'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Racked Crossover Walk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799,
    'https://www.muscleandstrength.com/exercises/kettlebell-racked-crossover-walk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Dumbbell Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    24100,
    'https://www.muscleandstrength.com/exercises/dumbbell-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Concentration Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    20799,
    'https://www.muscleandstrength.com/exercises/reverse-concentration-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Barbell Wrist Curl (Over Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    83500,
    'https://www.muscleandstrength.com/exercises/reverse-barbell-wrist-curl-over-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell High Low Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4699,
    'https://www.muscleandstrength.com/exercises/dumbbell-high-low-carry'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Goblet Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4599,
    'https://www.muscleandstrength.com/exercises/kettlebell-goblet-carry'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Reverse Grip Cable Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11600,
    'https://www.muscleandstrength.com/exercises/reverse-grip-seated-cable-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Single Arm Bottoms Up Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4300,
    'https://www.muscleandstrength.com/exercises/kettlebell-single-arm-bottoms-up-carry'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Single Arm Racked Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5500,
    'https://www.muscleandstrength.com/exercises/kettlebell-single-arm-racked-carry'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weight Plate Pinches',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    35299,
    'https://www.muscleandstrength.com/exercises/weight-plate-pinches.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Reverse Grip Dumbbell Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    25600,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-reverse-dumbbell-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Preacher Curl (EZ Bar)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    20100,
    'https://www.muscleandstrength.com/exercises/ez-bar-reverse-grip-preacher-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Dumbbell Reverse Grip Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    18200,
    'https://www.muscleandstrength.com/exercises/standing-one-arm-dumbbell-reverse-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Zercher Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5099,
    'https://www.muscleandstrength.com/exercises/zercher-carry'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Barbell Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    93900,
    'https://www.muscleandstrength.com/exercises/reverse-barbell-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Behind-The-Back Cable Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    17399,
    'https://www.muscleandstrength.com/exercises/standing-cable-wrist-curl-(behind-back).html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Cable Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    16100,
    'https://www.muscleandstrength.com/exercises/seated-cable-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Seated Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    27899,
    'https://www.muscleandstrength.com/exercises/smith-machine-seated-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Reverse Dumbbell Wrist Curl Over Bench',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14500,
    'https://www.muscleandstrength.com/exercises/one-arm-reverse-dumbbell-wrist-curl-over-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse One-Arm Cable Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    18600,
    'https://www.muscleandstrength.com/exercises/reverse-one-arm-cable-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Neutral Grip Dumbbell Wrist Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11100,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-neutral-dumbbell-wrist-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Smith Machine Wrist Curl (behind back)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12300,
    'https://www.muscleandstrength.com/exercises/standing-smith-machine-wrist-curl-(behind-back).html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Neutral Grip Dumbbell Wrist Curl (Over Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12000,
    'https://www.muscleandstrength.com/exercises/neutral-dumbbell-wrist-curl-over-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Forearms'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Overhead Barbell Carry',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3799,
    'https://www.muscleandstrength.com/exercises/overhead-barbell-carry'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hyperextension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3200000,
    'https://www.muscleandstrength.com/exercises/hyperextension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Hip Thrust',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1299999,
    'https://www.muscleandstrength.com/exercises/barbell-hip-thrust'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Good Mornings',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1299999,
    'https://www.muscleandstrength.com/exercises/good-mornings.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Glute Kick Back',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    711400,
    'https://www.muscleandstrength.com/exercises/glute-kick-back.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Glute Kickback Machine',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    623900,
    'https://www.muscleandstrength.com/exercises/standing-glute-kickback.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Stance Smith Machine Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    391899,
    'https://www.muscleandstrength.com/exercises/wide-smith-machine-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Glute Bridge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    328600,
    'https://www.muscleandstrength.com/exercises/bodyweight-glute-bridge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Good Morning',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    64099,
    'https://www.muscleandstrength.com/exercises/banded-good-mornings'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Hyperextension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    99699,
    'https://www.muscleandstrength.com/exercises/weighted-hyperextension'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Leg Glute Bridge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    149399,
    'https://www.muscleandstrength.com/exercises/single-leg-glute-bridge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Glute Bridge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    134399,
    'https://www.muscleandstrength.com/exercises/barbell-glute-bridge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Side Lying Clam',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    128399,
    'https://www.muscleandstrength.com/exercises/side-lying-clam'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Hip Thruster'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hip Thruster with Mini Band',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    84199,
    'https://www.muscleandstrength.com/exercises/hip-thruster-with-mini-band'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Glute Bridge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    40700,
    'https://www.muscleandstrength.com/exercises/banded-glute-bridge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Curtsy Lunge (AKA Drop Lunge)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    28200,
    'https://www.muscleandstrength.com/exercises/curtsy-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bench'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Hip Thrust',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    55299,
    'https://www.muscleandstrength.com/exercises/bodyweight-hip-thrust'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lateral Band Walk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15699,
    'https://www.muscleandstrength.com/exercises/lateral-band-walk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Leg Hip Thrust with Dumbbell',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    32200,
    'https://www.muscleandstrength.com/exercises/single-leg-hip-thrust-with-dumbbell'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Hyperextension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    53799,
    'https://www.muscleandstrength.com/exercises/reverse-hyperextension'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Good Mornings Off Pins',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15899,
    'https://www.muscleandstrength.com/exercises/good-morning-off-pins'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '90/90 Piriformis Stretch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11300,
    'https://www.muscleandstrength.com/exercises/90-90-piriformis-stretch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Hip Flexion Machine',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    55000,
    'https://www.muscleandstrength.com/exercises/hip-extensions.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Multi Directional Toe Touch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5800,
    'https://www.muscleandstrength.com/exercises/banded-multi-directional-toe-touch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Figure 4 Glute Stretch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6000,
    'https://www.muscleandstrength.com/exercises/figure-4-glute-stretch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated External Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6900,
    'https://www.muscleandstrength.com/exercises/seated-external-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Side Lying Clam with Band',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6599,
    'https://www.muscleandstrength.com/exercises/side-lying-clam-with-band'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Knee to Chest Single Leg Glute Bridge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6000,
    'https://www.muscleandstrength.com/exercises/knee-to-chest-single-leg-glute-bridge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Marching Glute Bridge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9100,
    'https://www.muscleandstrength.com/exercises/marching-glute-bridge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dynamic Pigeon',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7199,
    'https://www.muscleandstrength.com/exercises/dynamic-pigeon'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'GHD Back Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15100,
    'https://www.muscleandstrength.com/exercises/ghd-back-extension'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Supine Hip Internal Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5000,
    'https://www.muscleandstrength.com/exercises/supine-hip-internal-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bench'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Leg Hip Thrust',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    16100,
    'https://www.muscleandstrength.com/exercises/single-leg-hip-thrust'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Leg Good Morning',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13800,
    'https://www.muscleandstrength.com/exercises/single-leg-good-morning'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Diagonal Band Walk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6699,
    'https://www.muscleandstrength.com/exercises/diagonal-band-walk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Good Mornings',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    79199,
    'https://www.muscleandstrength.com/exercises/seated-good-mornings.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Sled Pull Through',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4300,
    'https://www.muscleandstrength.com/exercises/sled-pull-through'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Lacrosse Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Glute Lacrosse Ball',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4500,
    'https://www.muscleandstrength.com/exercises/glute-lacrosse-ball'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Activation'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'X-Band Walk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12000,
    'https://www.muscleandstrength.com/exercises/x-band-walk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Foam Roll'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Glute Foam Rolling',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3400,
    'https://www.muscleandstrength.com/exercises/foam-rolling-glutes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Glutes'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing External Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4800,
    'https://www.muscleandstrength.com/exercises/standing-external-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Stiff Leg Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5300000,
    'https://www.muscleandstrength.com/exercises/dumbbell-stiff-leg-deadlift.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Conventional Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5199999,
    'https://www.muscleandstrength.com/exercises/deadlifts.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Leg Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4300000,
    'https://www.muscleandstrength.com/exercises/leg-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Stiff Leg Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4500000,
    'https://www.muscleandstrength.com/exercises/stiff-leg-deadlift-aka-romanian-deadlift.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Romanian Deadlift (AKA RDL)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1899999,
    'https://www.muscleandstrength.com/exercises/romanian-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Hamstring Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1399999,
    'https://www.muscleandstrength.com/exercises/dumbbell-hamstring-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Trap Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Trap Bar Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    383799,
    'https://www.muscleandstrength.com/exercises/trap-bar-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Leg Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    233399,
    'https://www.muscleandstrength.com/exercises/seated-leg-curl'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Sumo Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    187000,
    'https://www.muscleandstrength.com/exercises/sumo-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Landmine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Landmine RDL',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    187899,
    'https://www.muscleandstrength.com/exercises/landmine-romanian-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Cable Hamstring Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    97900,
    'https://www.muscleandstrength.com/exercises/standing-cable-hamstring-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Swing',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    141000,
    'https://www.muscleandstrength.com/exercises/kettlebell-swing'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Single Leg Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    98099,
    'https://www.muscleandstrength.com/exercises/bodyweight-single-leg-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Band Assisted Nordic Hamstring Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    68699,
    'https://www.muscleandstrength.com/exercises/band-assisted-nordic-hamstring-curl'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Trap Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Trap Bar Rack Pull',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    85500,
    'https://www.muscleandstrength.com/exercises/trap-bar-rack-pull'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Hack Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    276000,
    'https://www.muscleandstrength.com/exercises/reverse-hack-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Nordic Hamstring Curl (Bodyweight)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    95500,
    'https://www.muscleandstrength.com/exercises/nordic-hamstring-curl-bodyweight'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Leg Curl (SHELC)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    69900,
    'https://www.muscleandstrength.com/exercises/exercise-ball-hamstring-curl'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Romanian Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    48299,
    'https://www.muscleandstrength.com/exercises/kettlebell-romanian-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Leg One Dumbbell Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    52400,
    'https://www.muscleandstrength.com/exercises/single-leg-one-dumbbell-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Sumo Romanian Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    18600,
    'https://www.muscleandstrength.com/exercises/barbell-sumo-romanian-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '1 Kettlebell Single Leg Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    33000,
    'https://www.muscleandstrength.com/exercises/1-kettlebell-single-leg-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Leg Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    94800,
    'https://www.muscleandstrength.com/exercises/single-leg-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Kettlebell Swing',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    18600,
    'https://www.muscleandstrength.com/exercises/one-arm-kettlebell-swing'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Double Kettlebell Suitcase Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    20399,
    'https://www.muscleandstrength.com/exercises/double-kettlebell-suitcase-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Double Kettlebell Swing',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11600,
    'https://www.muscleandstrength.com/exercises/double-kettlebell-swing'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Paused Sumo Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7099,
    'https://www.muscleandstrength.com/exercises/paused-sumo-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Cable Leg Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    43000,
    'https://www.muscleandstrength.com/exercises/lying-cable-hamstring-curl.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Snatch Grip Romanian Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6800,
    'https://www.muscleandstrength.com/exercises/snatch-grip-romanian-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Glute Ham Raise (GHR)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    45099,
    'https://www.muscleandstrength.com/exercises/glute-ham-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Stiff Leg Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    31799,
    'https://www.muscleandstrength.com/exercises/smith-machine-stiff-leg-deadlift.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Snatch Grip Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6300,
    'https://www.muscleandstrength.com/exercises/snatch-grip-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Deficit Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15399,
    'https://www.muscleandstrength.com/exercises/deficit-deadlifts'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Leg Exercise Ball Leg Curl',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3700,
    'https://www.muscleandstrength.com/exercises/single-leg-exercise-ball-leg-curl'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'American Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15800,
    'https://www.muscleandstrength.com/exercises/american-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Conventional Deadlift Against Chains',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2000,
    'https://www.muscleandstrength.com/exercises/conventional-deadlift-against-chains'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Trap Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Paused Trap Bar Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3700,
    'https://www.muscleandstrength.com/exercises/paused-trap-bar-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Glute Ham Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4599,
    'https://www.muscleandstrength.com/exercises/banded-glute-ham-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Trap Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Trap Bar Romanian Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14000,
    'https://www.muscleandstrength.com/content/trap-bar-romanian-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Hamstrings'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kickstand Kettle Bell 1 Leg Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8699,
    'https://www.muscleandstrength.com/exercises/kickstand-kettle-bell-one-leg-deadlift'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lat Pull Down',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4800000,
    'https://www.muscleandstrength.com/exercises/lat-pull-down.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Close Grip Lat Pull Down',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2099999,
    'https://www.muscleandstrength.com/exercises/close-grip-pull-down.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Grip Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3400000,
    'https://www.muscleandstrength.com/exercises/wide-grip-pull-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Straight Arm Lat Pull Down',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1200000,
    'https://www.muscleandstrength.com/exercises/straight-arm-lat-pull-down.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Chin Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1899999,
    'https://www.muscleandstrength.com/exercises/chin-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    480399,
    'https://www.muscleandstrength.com/exercises/pull-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Grip Lat Pull Down',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    349799,
    'https://www.muscleandstrength.com/exercises/wide-grip-pull-down'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Lat Pull Down (Underhand)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    589900,
    'https://www.muscleandstrength.com/exercises/reverse-grip-lat-pull-down.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rope Straight Arm Pull Down',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    122599,
    'https://www.muscleandstrength.com/exercises/rope-straight-arm-pull-down'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'V-Bar Pull Down',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    107099,
    'https://www.muscleandstrength.com/exercises/v-bar-pull-down'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Close Grip Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    196500,
    'https://www.muscleandstrength.com/exercises/close-grip-pull-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'V-Bar Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    226500,
    'https://www.muscleandstrength.com/exercises/v-bar-pull-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rack Lat Stretch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    28899,
    'https://www.muscleandstrength.com/exercises/rack-lat-stretch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Chains'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    137600,
    'https://www.muscleandstrength.com/exercises/weighted-pull-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Close Grip Chin Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    25200,
    'https://www.muscleandstrength.com/exercises/close-grip-chin-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Shotgun Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    144000,
    'https://www.muscleandstrength.com/exercises/standing-one-arm-cable-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Underhand Close Grip Lateral Pulldown',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    128199,
    'https://www.muscleandstrength.com/exercises/underhand-close-grip-lat-pull-down.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Eccentric Only Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    62900,
    'https://www.muscleandstrength.com/exercises/eccentric-only-pull-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Chains'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Chin Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    62900,
    'https://www.muscleandstrength.com/exercises/weighted-chin-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pull Up with Leg Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13899,
    'https://www.muscleandstrength.com/exercises/pull-up-with-leg-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Band Assisted Chin Up (From Foot)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    47099,
    'https://www.muscleandstrength.com/exercises/resistance-banded-chin-up-from-foot'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Overhand Close Grip Lateral Pulldown',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    39599,
    'https://www.muscleandstrength.com/exercises/overhand-close-grip-lat-pull-down.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Resistance Band Assisted Pull Up (From Foot)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    31500,
    'https://www.muscleandstrength.com/exercises/band-assisted-pull-up-from-foot'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Overhead Medicine Ball Throw',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7000,
    'https://www.muscleandstrength.com/exercises/standing-overhead-medicine-ball-throw'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Resistance Band Assisted Pull Up (From Knee)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    35799,
    'https://www.muscleandstrength.com/exercises/band-assisted-pull-up-from-knee'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Behind Neck Lat Pull Down',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    84300,
    'https://www.muscleandstrength.com/exercises/behind-neck-lat-pull-down.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lateral Pulldown (Rope Extension)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    81300,
    'https://www.muscleandstrength.com/exercises/rope-lat-pull-down.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Archer Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8800,
    'https://www.muscleandstrength.com/exercises/archer-pull-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Grip Chin Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    39400,
    'https://www.muscleandstrength.com/exercises/wide-grip-chin-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Band Resisted Chin Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2299,
    'https://www.muscleandstrength.com/exercises/band-resisted-chin-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Pause Chin Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2700,
    'https://www.muscleandstrength.com/exercises/single-pause-chin-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Double Pause Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3799,
    'https://www.muscleandstrength.com/exercises/double-pause-pull-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Triple Pause Chin Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299,
    'https://www.muscleandstrength.com/exercises/triple-pause-chin-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Chains'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Pull Up Hang',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/weighted-pull-up-hang'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rope Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    40200,
    'https://www.muscleandstrength.com/exercises/rope-pull-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Chin Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3700,
    'https://www.muscleandstrength.com/exercises/one-arm-chin-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Pause Pull Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3200,
    'https://www.muscleandstrength.com/exercises/single-pause-pull-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Overhead Medicine Ball Figure 8 Slam',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3400,
    'https://www.muscleandstrength.com/exercises/overhead-medicine-ball-figure-8-slam'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Chin Up With Leg Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6300,
    'https://www.muscleandstrength.com/exercises/chin-up-with-leg-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lats'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Around the Bar Chin Ups',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3700,
    'https://www.muscleandstrength.com/exercises/around-the-bar-chin-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lower Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1799999,
    'https://www.muscleandstrength.com/exercises/dumbbell-deadlift.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lower Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Deadlift',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    138399,
    'https://www.muscleandstrength.com/exercises/smith-machine-deadlift.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lower Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '90/90 Hip Crossover',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    26299,
    'https://www.muscleandstrength.com/exercises/90-90-hip-crossover'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lower Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Superman',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    109199,
    'https://www.muscleandstrength.com/exercises/superman'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Lower Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rollover Into V-Sits',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11199,
    'https://www.muscleandstrength.com/exercises/rollover-into-v-sits'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bent Over Dumbbell Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6000000,
    'https://www.muscleandstrength.com/exercises/bent-over-dumbbell-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Dumbbell Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8699999,
    'https://www.muscleandstrength.com/exercises/one-arm-dumbbell-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bent Over Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8199999,
    'https://www.muscleandstrength.com/exercises/bent-over-barbell-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Cable Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5300000,
    'https://www.muscleandstrength.com/exercises/seated-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Tripod Dumbbell Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    997700,
    'https://www.muscleandstrength.com/exercises/tripod-dumbbell-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Bent-Over Dumbbell Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    954200,
    'https://www.muscleandstrength.com/exercises/reverse-grip-bent-over-dumbbell-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'T-Bar Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    874900,
    'https://www.muscleandstrength.com/exercises/bent-over-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Neutral Grip Chest Supported Dumbbell Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/chest-supported-dumbbell-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Machine Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1299999,
    'https://www.muscleandstrength.com/exercises/machine-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Feet Elevated Inverted Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1200000,
    'https://www.muscleandstrength.com/exercises/smith-machine-bodyweight-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Machine T-Bar Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    690700,
    'https://www.muscleandstrength.com/exercises/machine-t-bar-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Bench Two Arm Dumbbell Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    802599,
    'https://www.muscleandstrength.com/exercises/incline-bench-two-arm-dumbbell-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Bent-Over Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    577700,
    'https://www.muscleandstrength.com/exercises/smith-machine-bent-over-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Bent Over Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    494100,
    'https://www.muscleandstrength.com/exercises/reverse-grip-bent-over-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Inverted Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    437600,
    'https://www.muscleandstrength.com/exercises/high-inverted-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pendlay Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    158100,
    'https://www.muscleandstrength.com/exercises/pendlay-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Row (Rope Extension)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    53000,
    'https://www.muscleandstrength.com/exercises/seated-row-using-rope.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'World&#039;s Greatest Stretch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    23000,
    'https://www.muscleandstrength.com/exercises/worlds-greatest-stretch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Palms In Bent-Over Dumbbell Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    32500,
    'https://www.muscleandstrength.com/exercises/palms-in-bent-over-dumbbell-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Renegade Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    43200,
    'https://www.muscleandstrength.com/exercises/renegade-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Chest Supported Dumbbell Row with Isohold',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    47700,
    'https://www.muscleandstrength.com/exercises/chest-supported-dumbbell-row-with-isohold'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Landmine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Meadows Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    83300,
    'https://www.muscleandstrength.com/exercises/meadows-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Trap Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Trap Bar Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8500,
    'https://www.muscleandstrength.com/exercises/trap-bar-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Bent-Over Row (EZ Bar)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    58799,
    'https://www.muscleandstrength.com/exercises/ez-bar-reverse-grip-bent-over-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bent Over Kettlebell Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    74300,
    'https://www.muscleandstrength.com/exercises/bent-over-kettlebell-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Foam Roll'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Thoracic Extension on Foam Roller',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13699,
    'https://www.muscleandstrength.com/exercises/thoracic-extension-on-foam-roller'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Bench Barbell Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    70500,
    'https://www.muscleandstrength.com/exercises/incline-bench-barbell-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Concept 2 Rowing Machine',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4500,
    'https://www.muscleandstrength.com/exercises/concept-2-rowing-machine'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dante Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8699,
    'https://www.muscleandstrength.com/exercises/dante-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Smith Machine Bent-Over Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    54900,
    'https://www.muscleandstrength.com/exercises/reverse-grip-smith-machine-bent-over-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Palm Rotational Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    35500,
    'https://www.muscleandstrength.com/exercises/cable-palm-rotational-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Foam Roll'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Thoracic Spine Foam Rolling',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1799,
    'https://www.muscleandstrength.com/exercises/foam-rolling-thoracic-spine'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Bench Cable Row (Rope Extension)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    16799,
    'https://www.muscleandstrength.com/exercises/incline-bench-cable-row-rope-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Quadruped Extension Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7699,
    'https://www.muscleandstrength.com/exercises/quadruped-extension-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Bench Cable Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    53099,
    'https://www.muscleandstrength.com/exercises/incline-bench-cable-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Cable Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    120599,
    'https://www.muscleandstrength.com/exercises/one-arm-cable-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Lunge Sled Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2099,
    'https://www.muscleandstrength.com/exercises/reverse-lunge-sled-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Machine Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    148000,
    'https://www.muscleandstrength.com/exercises/one-arm-machine-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rings'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Inverted Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5599,
    'https://www.muscleandstrength.com/exercises/weighted-inverted-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Upper Back'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Foam Roll'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Field Goal Angel Foam Rolling',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3099,
    'https://www.muscleandstrength.com/exercises/field-goal-angel-foam-rolling'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Neck'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Tiger Tail'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Neck Tiger Tail',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    26399,
    'https://www.muscleandstrength.com/exercises/neck-tiger-tail'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Goblet Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799999,
    'https://www.muscleandstrength.com/exercises/dumbbell-goblet-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Back Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5199999,
    'https://www.muscleandstrength.com/exercises/squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3200000,
    'https://www.muscleandstrength.com/exercises/dumbbell-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Leg Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3099999,
    'https://www.muscleandstrength.com/exercises/45-degree-leg-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799999,
    'https://www.muscleandstrength.com/exercises/dumbbell-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Leg Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3099999,
    'https://www.muscleandstrength.com/exercises/leg-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Rear Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/dumbbell-rear-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Step Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1899999,
    'https://www.muscleandstrength.com/exercises/dumbbell-step-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Leg Dumbbell Squat (AKA Dumbbell Bulgarian Split Squat)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1399999,
    'https://www.muscleandstrength.com/exercises/one-leg-dumbbell-squat-aka-bulgarian-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Machine Hack Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1500000,
    'https://www.muscleandstrength.com/exercises/hack-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Frog Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    789299,
    'https://www.muscleandstrength.com/exercises/frog-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Split Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    622799,
    'https://www.muscleandstrength.com/exercises/dumbbell-split-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Walking Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    389100,
    'https://www.muscleandstrength.com/exercises/dumbbell-walking-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Plie Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    572799,
    'https://www.muscleandstrength.com/exercises/pile-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Front Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1299999,
    'https://www.muscleandstrength.com/exercises/front-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Walking Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    478700,
    'https://www.muscleandstrength.com/exercises/bodyweight-walking-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    544700,
    'https://www.muscleandstrength.com/exercises/barbell-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    311000,
    'https://www.muscleandstrength.com/exercises/smith-machine-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Lateral Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    253500,
    'https://www.muscleandstrength.com/exercises/bodyweight-side-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Landmine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Landmine Goblet Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    124199,
    'https://www.muscleandstrength.com/exercises/landmine-goblet-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Prisoner Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    364399,
    'https://www.muscleandstrength.com/exercises/bodyweight-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    219199,
    'https://www.muscleandstrength.com/exercises/bodyweight-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Front Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    131600,
    'https://www.muscleandstrength.com/exercises/smith-machine-front-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Prisoner Squat Jump',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    19399,
    'https://www.muscleandstrength.com/exercises/prisoner-jump-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Step Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    107300,
    'https://www.muscleandstrength.com/exercises/bodyweight-step-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Lateral Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    148300,
    'https://www.muscleandstrength.com/exercises/dumbbell-side-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Reverse Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    263000,
    'https://www.muscleandstrength.com/exercises/barbell-rear-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Walking Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    131899,
    'https://www.muscleandstrength.com/exercises/walking-barbell-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Hack Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    140699,
    'https://www.muscleandstrength.com/exercises/barbell-hack-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Goblet Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    73000,
    'https://www.muscleandstrength.com/exercises/kettlebell-goblet-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '1 KB Kettlebell Snatch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    40400,
    'https://www.muscleandstrength.com/exercises/1-kb-kettlebell-snatch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    124500,
    'https://www.muscleandstrength.com/exercises/smith-machine-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Reverse Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    138699,
    'https://www.muscleandstrength.com/exercises/rear-bodyweight-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Landmine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Landmine Reverse Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    16899,
    'https://www.muscleandstrength.com/exercises/landmine-reverse-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Box'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Box Jump',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15000,
    'https://www.muscleandstrength.com/exercises/box-jump'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '1 Dumbbell Step Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15600,
    'https://www.muscleandstrength.com/exercises/1-dumbbell-step-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Sissy Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    259500,
    'https://www.muscleandstrength.com/exercises/sissy-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Walking Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12300,
    'https://www.muscleandstrength.com/exercises/kettlebell-walking-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Squat Jump',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    584700,
    'https://www.muscleandstrength.com/exercises/bodyweight-jump-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Sumo Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    94300,
    'https://www.muscleandstrength.com/exercises/sumo-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Box'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Depth Jump to Broad Jump',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4500,
    'https://www.muscleandstrength.com/exercises/depth-jump-to-broad-jump'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Box'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Vertical Jump',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14300,
    'https://www.muscleandstrength.com/exercises/seated-vertical-jump'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Narrow Stance Smith Machine Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    27700,
    'https://www.muscleandstrength.com/exercises/narrow-smith-machine-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Overhead Step Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4500,
    'https://www.muscleandstrength.com/exercises/overhead-step-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Narrow Stance Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    48599,
    'https://www.muscleandstrength.com/exercises/narrow-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Thruster',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10000,
    'https://www.muscleandstrength.com/exercises/dumbbell-thruster'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Thruster',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15500,
    'https://www.muscleandstrength.com/exercises/barbell-thruster'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Power Clean from Blocks',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299,
    'https://www.muscleandstrength.com/exercises/power-clean-from-blocks'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Lunge with Twist',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2700,
    'https://www.muscleandstrength.com/exercises/reverse-lunge-with-twist'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Pistol Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6400,
    'https://www.muscleandstrength.com/exercises/bodyweight-pistol-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Quarter Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    43900,
    'https://www.muscleandstrength.com/exercises/1-4-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Deep Front Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5400,
    'https://www.muscleandstrength.com/exercises/deep-front-squats'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rack Pin Front Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4699,
    'https://www.muscleandstrength.com/exercises/rack-pin-front-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Narrow Stance 45 Degree Leg Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    35200,
    'https://www.muscleandstrength.com/exercises/narrow-stance-45-degree-leg-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Contralateral Load Dumbbell Front Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6000,
    'https://www.muscleandstrength.com/exercises/contralateral-load-dumbbell-front-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Wall Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    54799,
    'https://www.muscleandstrength.com/exercises/dumbbell-wall-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lateral Lunge to Drop Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3900,
    'https://www.muscleandstrength.com/exercises/lateral-lunge-to-drop-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Hack Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15000,
    'https://www.muscleandstrength.com/exercises/wide-hack-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Powerlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Band Resisted Box Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2200,
    'https://www.muscleandstrength.com/exercises/band-resisted-box-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pit Shark Belt Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    18399,
    'https://www.muscleandstrength.com/exercises/pit-shark-belt-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Split Clean',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2400,
    'https://www.muscleandstrength.com/exercises/split-clean'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Resistance Band Machine Hack Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9800,
    'https://www.muscleandstrength.com/exercises/resistance-band-machine-hack-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Foam Roll'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Quad Foam Rolling',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/foam-rolling-quads'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Bulgarian Split Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    17100,
    'https://www.muscleandstrength.com/exercises/smith-machine-one-leg-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Split Snatch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/split-snatch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Squat to Stand w/ T-Spine Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3700,
    'https://www.muscleandstrength.com/exercises/squat-to-stand-w-t-spine-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Low Bar Back Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/low-bar-back-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Band Resisted Back Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2500,
    'https://www.muscleandstrength.com/exercises/band-resisted-back-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Walking Quad Stretch to Overhead Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599,
    'https://www.muscleandstrength.com/exercises/walking-quad-stretch-to-overhead-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Wall Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    38599,
    'https://www.muscleandstrength.com/exercises/bodyweight-wall-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Ipsilateral Load Split Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5099,
    'https://www.muscleandstrength.com/exercises/ipsilateral-load-split-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Anderson Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3900,
    'https://www.muscleandstrength.com/exercises/anderson-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Counterbalanced Skater Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5300,
    'https://www.muscleandstrength.com/exercises/counterbalanced-skater-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Contralateral Load Split Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8100,
    'https://www.muscleandstrength.com/exercises/contralateral-load-split-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Box'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Depth Jump to Box Jump',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3900,
    'https://www.muscleandstrength.com/exercises/depth-jump-to-box-jump'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Jumping Squats',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    26500,
    'https://www.muscleandstrength.com/exercises/barbell-jumping-squats.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Leg Extension (Toes Out)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    21799,
    'https://www.muscleandstrength.com/exercises/toes-out-leg-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Muscle Clean',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4699,
    'https://www.muscleandstrength.com/exercises/muscle-clean'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bottoms Up 1 Kettlebell Split Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599,
    'https://www.muscleandstrength.com/exercises/bottoms-up-1-kettlebell-split-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Quad Stretch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/half-kneeling-quad-stretch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Step Ups',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    54500,
    'https://www.muscleandstrength.com/exercises/barbell-step-ups.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strongman'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Tire'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Tire Flip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3200,
    'https://www.muscleandstrength.com/exercises/tire-flip'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Valslide'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Valslide Reverse Lunges',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/valslide-reverse-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Box Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11199,
    'https://www.muscleandstrength.com/exercises/smith-machine-squat-to-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'High Bar Back Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3500,
    'https://www.muscleandstrength.com/exercises/high-bar-back-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Split Squat With Jump',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    48099,
    'https://www.muscleandstrength.com/exercises/dumbbell-split-jump.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Power Clean',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5300,
    'https://www.muscleandstrength.com/exercises/power-clean'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Snatch Balance',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1700,
    'https://www.muscleandstrength.com/exercises/snatch-balance'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Lunge Elbow to Instep with Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/reverse-lunge-elbow-to-instep-with-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Offset Single Kettlebell Front Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299,
    'https://www.muscleandstrength.com/exercises/offset-single-kettlebell-front-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Box Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15600,
    'https://www.muscleandstrength.com/exercises/dumbbell-squat-to-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Snatch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2200,
    'https://www.muscleandstrength.com/exercises/snatch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Lunge with Lateral Flexion',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2400,
    'https://www.muscleandstrength.com/exercises/reverse-lunge-with-lateral-flexion'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Double Kettlebell Front Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7199,
    'https://www.muscleandstrength.com/exercises/double-kettlebell-front-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '2 KB Kettlebell Snatch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1700,
    'https://www.muscleandstrength.com/exercises/2-kb-kettlebell-snatch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Ipsilateral Load Dumbbell Front Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2900,
    'https://www.muscleandstrength.com/exercises/ipsilateral-load-dumbbell-front-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Zercher Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12600,
    'https://www.muscleandstrength.com/exercises/smith-machine-zercher-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Power Jerk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5500,
    'https://www.muscleandstrength.com/exercises/power-jerk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Speed Squats',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    26899,
    'https://www.muscleandstrength.com/exercises/speed-squats.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Split Squat with Banded Adduction',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5500,
    'https://www.muscleandstrength.com/exercises/split-squat-with-banded-adduction'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Jerk Balance',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2500,
    'https://www.muscleandstrength.com/exercises/jerk-balance'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Barbell Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    28100,
    'https://www.muscleandstrength.com/exercises/decline-bench-barbell-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '1 KB Kettlebell Split Snatch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2299,
    'https://www.muscleandstrength.com/exercises/1-kb-kettlebell-split-snatch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Split Jerk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1899,
    'https://www.muscleandstrength.com/exercises/split-jerk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Half Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    33799,
    'https://www.muscleandstrength.com/exercises/half-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Stance Front Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4900,
    'https://www.muscleandstrength.com/exercises/wide-stance-front-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Leg Hack Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    24600,
    'https://www.muscleandstrength.com/exercises/one-leg-hack-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '2 KB Kettlebell Split Snatch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1399,
    'https://www.muscleandstrength.com/exercises/2-kb-kettlebell-split-snatch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Narrow Stance Front Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5000,
    'https://www.muscleandstrength.com/exercises/narrow-stance-front-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Lunge Sled Walk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1700,
    'https://www.muscleandstrength.com/exercises/reverse-lunge-sled-walk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cycled Split Squat Jump',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11399,
    'https://www.muscleandstrength.com/exercises/cycled-split-squat-jump'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Pistol Squat (On Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9600,
    'https://www.muscleandstrength.com/exercises/bench-one-leg-dumbbell-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '2 KB Kettlebell Clean',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1799,
    'https://www.muscleandstrength.com/exercises/2-kb-kettlebell-clean'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Band Back Squats',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599,
    'https://www.muscleandstrength.com/exercises/reverse-band-back-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Bodyweight Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6500,
    'https://www.muscleandstrength.com/exercises/incline-bench-bodyweight-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Thruster',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3200,
    'https://www.muscleandstrength.com/exercises/kettlebell-thruster'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Clean &amp; Jerk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5800,
    'https://www.muscleandstrength.com/exercises/clean-and-jerk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Front Box Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14899,
    'https://www.muscleandstrength.com/exercises/front-squat-to-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Front Barbell Step Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799,
    'https://www.muscleandstrength.com/exercises/front-barbell-step-up'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Band Box Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2099,
    'https://www.muscleandstrength.com/exercises/reverse-band-box-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Clean',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299,
    'https://www.muscleandstrength.com/exercises/clean'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Belt Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10500,
    'https://www.muscleandstrength.com/exercises/weighted-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Lateral Split Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14500,
    'https://www.muscleandstrength.com/exercises/barbell-side-split-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Leg Extension (Toes In)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13899,
    'https://www.muscleandstrength.com/exercises/toes-in-leg-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '2 KB Kettlebell Clean &amp; Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1799,
    'https://www.muscleandstrength.com/exercises/2-kb-kettlebell-clean-and-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Tiger Tail'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Quad Tiger Tail',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2000,
    'https://www.muscleandstrength.com/exercises/quad-tiger-tail'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Dumbbell Wall Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15699,
    'https://www.muscleandstrength.com/exercises/weighted-swiss-ball-wall-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '1 KB Kettlebell Jerk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1799,
    'https://www.muscleandstrength.com/exercises/1-kb-kettlebell-jerk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Counterbalanced Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4699,
    'https://www.muscleandstrength.com/exercises/counterbalanced-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Sissy Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12699,
    'https://www.muscleandstrength.com/exercises/weighted-sissy-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '2 KB Kettlebell Jerk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1500,
    'https://www.muscleandstrength.com/exercises/2-kb-kettlebell-jerk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Bench Dumbbell Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10800,
    'https://www.muscleandstrength.com/exercises/incline-bench-dumbbell-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Box'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '2 to 1 Box Jump',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1899,
    'https://www.muscleandstrength.com/exercises/2-to-1-box-jump'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bodyweight Bulgarian Split Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    16200,
    'https://www.muscleandstrength.com/exercises/one-leg-bodyweight-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Muscle Snatch',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299,
    'https://www.muscleandstrength.com/exercises/muscle-snatch'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Bulgarian Split Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    32599,
    'https://www.muscleandstrength.com/exercises/one-leg-barbell-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Box'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Depth Jump to Hurdle Hop',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599,
    'https://www.muscleandstrength.com/exercises/depth-jump-to-hurdle-hop'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Sled Push',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13699,
    'https://www.muscleandstrength.com/exercises/sled-push'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Chains'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Back Squat Against Chains',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1500,
    'https://www.muscleandstrength.com/exercises/back-squat-against-chains'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Anti-Rotation Forward Sled Walk',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1600,
    'https://www.muscleandstrength.com/exercises/anti-rotation-forward-sled-walk'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Overhead Banded Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5199,
    'https://www.muscleandstrength.com/exercises/overhead-banded-squat'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Valslide'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Valslide Lateral Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799,
    'https://www.muscleandstrength.com/exercises/valslide-lateral-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Narrow Stance Machine Hack Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    27500,
    'https://www.muscleandstrength.com/exercises/narrow-hack-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Sled Sprint',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2000,
    'https://www.muscleandstrength.com/exercises/sled-sprint'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Lateral Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    29600,
    'https://www.muscleandstrength.com/exercises/barbell-side-lunge.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Chains'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Back Squat to Box Against Chains',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1500,
    'https://www.muscleandstrength.com/exercises/back-squat-to-box-against-chains'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Squat (Feet Forward)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    29200,
    'https://www.muscleandstrength.com/exercises/feet-forward-smith-machine-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Ipsilateral Load Dumbbell Rear Lunge',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4599,
    'https://www.muscleandstrength.com/exercises/ipsilateral-load-dumbbell-reverse-lunge'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Backward Sled Push',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4900,
    'https://www.muscleandstrength.com/exercises/backward-sled-push'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Quads'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Leg Wall Squat',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13000,
    'https://www.muscleandstrength.com/exercises/one-leg-bodyweight-wall-squat.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Lateral Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10100000,
    'https://www.muscleandstrength.com/exercises/dumbbell-lateral-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Military Press (AKA Overhead Press)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6199999,
    'https://www.muscleandstrength.com/exercises/military-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2900000,
    'https://www.muscleandstrength.com/exercises/standing-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Dumbbell Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4199999,
    'https://www.muscleandstrength.com/exercises/seated-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bent Over Dumbbell Reverse Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3799999,
    'https://www.muscleandstrength.com/exercises/bent-over-dumbbell-reverse-fly.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299999,
    'https://www.muscleandstrength.com/exercises/smith-machine-shoulder-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Arnold Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799999,
    'https://www.muscleandstrength.com/exercises/seated-arnold-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Bent Over Dumbbell Reverse Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799999,
    'https://www.muscleandstrength.com/exercises/dumbbell-reverse-fly.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Dumbbell Lateral Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1500000,
    'https://www.muscleandstrength.com/exercises/seated-dumbbell-lateral-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Machine Reverse Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    458899,
    'https://www.muscleandstrength.com/exercises/machine-reverse-fly'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Face Pull',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/cable-face-pull'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Cable Reverse Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1299999,
    'https://www.muscleandstrength.com/exercises/standing-cable-flys.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Machine Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    604299,
    'https://www.muscleandstrength.com/exercises/machine-shoulder-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Barbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599999,
    'https://www.muscleandstrength.com/exercises/seated-shoulder-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Single Arm Cable Lateral Raise (Crossbody)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    640099,
    'https://www.muscleandstrength.com/exercises/one-arm-cable-lateral-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Lateral Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    974000,
    'https://www.muscleandstrength.com/exercises/two-arm-cable-lateral-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Dumbbell Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    719099,
    'https://www.muscleandstrength.com/exercises/dumbbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Behind the Neck Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    896000,
    'https://www.muscleandstrength.com/exercises/seated-barbell-press-behind-neck.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Upright Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    254199,
    'https://www.muscleandstrength.com/exercises/cable-upright-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lateral Raise Machine',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    384500,
    'https://www.muscleandstrength.com/exercises/machine-lateral-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    668900,
    'https://www.muscleandstrength.com/exercises/barbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Front Raise (Bilateral)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    123699,
    'https://www.muscleandstrength.com/exercises/cable-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bent Over Low Pulley Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    77599,
    'https://www.muscleandstrength.com/exercises/bent-over-cable-rear-delt-fly'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bent Over Rear Delt Fly (Head on Bench)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    87300,
    'https://www.muscleandstrength.com/exercises/bent-over-rear-delt-fly-head-on-bench'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Activation'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Band Pull Apart',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    186600,
    'https://www.muscleandstrength.com/exercises/band-pull-apart'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Arnold Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    164199,
    'https://www.muscleandstrength.com/exercises/standing-arnold-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Upright Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    277200,
    'https://www.muscleandstrength.com/exercises/smith-machine-upright-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Dumbbell Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    79400,
    'https://www.muscleandstrength.com/exercises/seated-dumbbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Dumbbell Lateral Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    236500,
    'https://www.muscleandstrength.com/exercises/one-arm-dumbbell-lateral-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Upright Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    433899,
    'https://www.muscleandstrength.com/exercises/dumbbell-upright-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Face Pull with External Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    25500,
    'https://www.muscleandstrength.com/exercises/cable-face-pull-with-external-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Neutral Grip Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    67900,
    'https://www.muscleandstrength.com/exercises/seated-palms-in-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Clean and Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    205800,
    'https://www.muscleandstrength.com/exercises/clean-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weight Plate Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    257700,
    'https://www.muscleandstrength.com/exercises/weight-plate-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Halo',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    54500,
    'https://www.muscleandstrength.com/exercises/kettlebell-halo'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Lateral Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    45000,
    'https://www.muscleandstrength.com/exercises/banded-lateral-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Overhead Front Raise (with Weight Plate)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    50400,
    'https://www.muscleandstrength.com/exercises/high-weight-plate-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Dumbbell Front Raise On Incline Bench',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    33599,
    'https://www.muscleandstrength.com/exercises/dumbbell-front-raise-on-incline-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable External Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    18399,
    'https://www.muscleandstrength.com/exercises/cable-external-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    88599,
    'https://www.muscleandstrength.com/exercises/dumbbell-reverse-fly-on-incline-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Overhead Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    23100,
    'https://www.muscleandstrength.com/exercises/high-barbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Activation'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Quadruped Push Up Plus',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4699,
    'https://www.muscleandstrength.com/exercises/quadruped-push-up-plus'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Single Arm Trap Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3500,
    'https://www.muscleandstrength.com/exercises/lying-single-arm-trap-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Serrano Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10600,
    'https://www.muscleandstrength.com/exercises/serrano-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Upright Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14800,
    'https://www.muscleandstrength.com/exercises/banded-upright-row'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Internal Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3700,
    'https://www.muscleandstrength.com/exercises/banded-internal-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Activation'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Back to Wall Alternating Shoulder Flexion',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599,
    'https://www.muscleandstrength.com/exercises/back-to-wall-alternating-shoulder-flexion'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Cable Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    26600,
    'https://www.muscleandstrength.com/exercises/one-arm-cable-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    127500,
    'https://www.muscleandstrength.com/exercises/swiss-ball-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rotational Medicine Ball Throw',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799,
    'https://www.muscleandstrength.com/exercises/rotational-med-ball-throw'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Dumbbell Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    50900,
    'https://www.muscleandstrength.com/exercises/alternate-standing-dumbbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Barbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13100,
    'https://www.muscleandstrength.com/exercises/swiss-ball-barbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Lying Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7699,
    'https://www.muscleandstrength.com/exercises/alternate-lying-dumbbell-reverse-fly.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Battling Ropes',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6900,
    'https://www.muscleandstrength.com/exercises/seated-battle-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Alternating Dumbbell Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12000,
    'https://www.muscleandstrength.com/exercises/alternate-seated-dumbbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing External Rotation (&quot;No Money Drill&quot;)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6699,
    'https://www.muscleandstrength.com/exercises/standing-external-rotation-no-money'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    19399,
    'https://www.muscleandstrength.com/exercises/alternate-bent-over-dumbbell-reverse-fly.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Landmine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Landmine Lateral Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    32400,
    'https://www.muscleandstrength.com/exercises/landmine-lateral-raise'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Knee to Elbow Dumbbell External Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8000,
    'https://www.muscleandstrength.com/exercises/knee-to-elbow-dumbbell-external-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Banded Face Pull to Chest',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4000,
    'https://www.muscleandstrength.com/exercises/standing-banded-face-pull-to-chest'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rings'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Face Pulls on Rings',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7500,
    'https://www.muscleandstrength.com/exercises/face-pull-on-rings'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dublin Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    57700,
    'https://www.muscleandstrength.com/exercises/dublin-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Dumbbell Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    49299,
    'https://www.muscleandstrength.com/exercises/one-arm-standing-dumbbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Neutral Grip Alternating Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    21200,
    'https://www.muscleandstrength.com/exercises/alternate-one-arm-standing-palms-in-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rings'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Flys on Rings',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6099,
    'https://www.muscleandstrength.com/exercises/reverse-fly-on-rings'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Jumping Jacks Battling Ropes',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3200,
    'https://www.muscleandstrength.com/exercises/jumping-jacks-battle-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Activation'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Back to Wall Shoulder Flexion',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5000,
    'https://www.muscleandstrength.com/exercises/back-to-wall-shoulder-flexion'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lunge Jump with Alternating Waves Battling Ropes',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2299,
    'https://www.muscleandstrength.com/exercises/lunge-jump-with-alternating-waves-battle-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Anti-Gravity Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6599,
    'https://www.muscleandstrength.com/exercises/anti-gravity-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Bent Over Reverse Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11600,
    'https://www.muscleandstrength.com/exercises/bent-over-banded-reverse-fly'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Seated Bent Over Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    21200,
    'https://www.muscleandstrength.com/exercises/alternate-seated-bent-over-dumbbell-reverse-fly.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    31299,
    'https://www.muscleandstrength.com/exercises/lying-dumbbell-reverse-fly.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Box'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Modified Handstand Push Up (Off Box)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3900,
    'https://www.muscleandstrength.com/exercises/modified-handstand-push-up-off-box'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Forearm Wall Slide',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4400,
    'https://www.muscleandstrength.com/exercises/forearm-wall-slide'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Bradford Press (AKA Seated Rocky Press)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14699,
    'https://www.muscleandstrength.com/exercises/seated-alternating-front-back-barbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Standing Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    51400,
    'https://www.muscleandstrength.com/exercises/one-arm-standing-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Cable External Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4599,
    'https://www.muscleandstrength.com/exercises/half-kneeling-cable-external-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bench'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Shoulder Pin Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    32299,
    'https://www.muscleandstrength.com/exercises/shoulder-pin-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Dumbbell Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8399,
    'https://www.muscleandstrength.com/exercises/half-kneeling-dumbbell-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Spider Crawls',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9000,
    'https://www.muscleandstrength.com/exercises/spider-crawls'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Cable Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    25500,
    'https://www.muscleandstrength.com/exercises/lying-cable-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Barbell Overhead Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8600,
    'https://www.muscleandstrength.com/exercises/seated-high-barbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lateral Slam Battling Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2299,
    'https://www.muscleandstrength.com/exercises/lateral-slam-battle-rope'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Lateral Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    24299,
    'https://www.muscleandstrength.com/exercises/exercise-ball-lateral-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Waves with Kneeling Get Ups Battling Ropes',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2400,
    'https://www.muscleandstrength.com/exercises/alternating-waves-with-kneeling-get-ups-battle-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rotational Medicine Ball Step Behind Shot Put',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1399,
    'https://www.muscleandstrength.com/exercises/rotational-med-ball-step-behind-shot-put'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Dumbbell Lateral Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9699,
    'https://www.muscleandstrength.com/exercises/seated-one-arm-dumbbell-lateral-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Power Slam Battling Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4500,
    'https://www.muscleandstrength.com/exercises/power-slam-battle-rope'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Incline Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    38599,
    'https://www.muscleandstrength.com/exercises/alternate-dumbbell-reverse-fly-on-incline-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Alternating Neutral Grip Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9399,
    'https://www.muscleandstrength.com/exercises/alternate-seated-palms-in-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Kettlebell Arm Bar',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2900,
    'https://www.muscleandstrength.com/exercises/kettlebell-arm-bar'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '3-D Band Pull Apart',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6400,
    'https://www.muscleandstrength.com/exercises/3d-band-pull-apart'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Battling Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2000,
    'https://www.muscleandstrength.com/exercises/half-kneeling-battle-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Bottoms Up Kettlebell Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4800,
    'https://www.muscleandstrength.com/exercises/half-kneeling-bottoms-up-kettlebell-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Standing Arnold Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11399,
    'https://www.muscleandstrength.com/exercises/one-arm-standing-arnold-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Pronated 90 Degree Band Pull Apart',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2099,
    'https://www.muscleandstrength.com/exercises/pronated-90-degree-band-pull-apart'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'No Counter Movement Rotational Medicine Ball Throw',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1399,
    'https://www.muscleandstrength.com/exercises/no-counter-movement-rotational-med-ball-throw'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Lunge with Alternating Waves Battling Ropes',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2000,
    'https://www.muscleandstrength.com/exercises/reverse-lunge-with-alternating-waves-battle-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    33400,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Warmup'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Supinated 90 Degree Band Pull Apart',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4099,
    'https://www.muscleandstrength.com/exercises/supinated-90-degree-band-pull-apart'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Shuffle Into Rotational Medicine Ball Throw',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1399,
    'https://www.muscleandstrength.com/exercises/shuffle-into-rotational-medicine-ball-throw'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7599,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-bent-over-dumbbell-reverse-fly.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Lying Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8000,
    'https://www.muscleandstrength.com/exercises/one-arm-lying-dumbbell-reverse-fly.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Double Arm Circles Battling Ropes',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2500,
    'https://www.muscleandstrength.com/exercises/double-arm-circles-battle-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Arnold Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10600,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-arnold-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Step Behind Rotational Medicine Ball Throw',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1299,
    'https://www.muscleandstrength.com/exercises/step-behind-rotational-medicine-ball-throw'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Y&#039;s',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6400,
    'https://www.muscleandstrength.com/exercises/banded-y'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Alternating Dumbbell Lateral Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10399,
    'https://www.muscleandstrength.com/exercises/seated-alternate-dumbbell-lateral-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Behind The Neck Push Press ',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4500,
    'https://www.muscleandstrength.com/exercises/behind-the-neck-push-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Seated Kettlebell Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2400,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-kettlebell-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Dumbbell Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8399,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-dumbbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Split Stance Anti-Rotational Medicine Ball Scoop Toss',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2900,
    'https://www.muscleandstrength.com/exercises/split-stance-anti-rotational-medicine-ball-scoop-toss'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Neutral Grip Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8899,
    'https://www.muscleandstrength.com/exercises/one-arm-standing-palms-in-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Dumbbell Rear Delt Fly',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    19399,
    'https://www.muscleandstrength.com/exercises/one-arm-bent-over-dumbbell-reverse-fly.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Neutral Grip Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    19399,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-palms-in-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Trap Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Trap Bar Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6500,
    'https://www.muscleandstrength.com/exercises/trap-bar-overhead-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Half Kneeling Banded External Rotation',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299,
    'https://www.muscleandstrength.com/exercises/half-kneeling-banded-external-rotation'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Kettlebell Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3599,
    'https://www.muscleandstrength.com/exercises/seated-kettlebell-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing One Arm Bottoms Up Kettlebell Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3500,
    'https://www.muscleandstrength.com/exercises/standing-one-arm-bottoms-up-kettlebell-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Fly Sled Drag',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1899,
    'https://www.muscleandstrength.com/exercises/reverse-fly-sled-drag'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Landmine'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Band Resistance Single Arm Standing Landmine Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5000,
    'https://www.muscleandstrength.com/exercises/band-resistance-single-arm-landmine-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Incline Dumbbell Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8800,
    'https://www.muscleandstrength.com/exercises/one-arm-dumbbell-front-raise-on-incline-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Dumbbell Rear Delt Fly On Incline Bench',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13800,
    'https://www.muscleandstrength.com/exercises/one-arm-dumbbell-reverse-fly-on-incline-bench.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rotational Medicine Ball Scoop Toss Facing Wall',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599,
    'https://www.muscleandstrength.com/exercises/rotational-med-ball-scoop-toss-facing-wall'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Barbell Front Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    18899,
    'https://www.muscleandstrength.com/exercises/seated-barbell-front-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Small Waves Battling Ropes',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2200,
    'https://www.muscleandstrength.com/exercises/alternating-small-waves-battling-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Standing Kettlebell Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2000,
    'https://www.muscleandstrength.com/exercises/alternating-standing-kettlebell-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Tall Kneeling One Arm Kettlebell Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2900,
    'https://www.muscleandstrength.com/exercises/tall-kneeling-one-arm-kettlebell-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rotational Med Ball Shot Put',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2400,
    'https://www.muscleandstrength.com/exercises/rotational-med-ball-shot-put'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Rear Delt Barbell Raise',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    49099,
    'https://www.muscleandstrength.com/exercises/lying-rear-delt-barbell-raise.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Double Wave Battling Rope',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2099,
    'https://www.muscleandstrength.com/exercises/double-waves-battle-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Standing Dumbbell Shoulder Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    45599,
    'https://www.muscleandstrength.com/exercises/alternate-standing-dumbbell-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Dublin Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    39000,
    'https://www.muscleandstrength.com/exercises/standing-dublin-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Rope'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Tall Kneeling Battling Ropes',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/tall-kneeling-battle-ropes'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Tall Kneeling One Arm Bottoms Up Kettlebell Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1700,
    'https://www.muscleandstrength.com/exercises/tall-kneeling-one-arm-bottoms-up-kettlebell-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Shoulders'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Plyometrics'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Medicine Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rotational Medicine Ball Shuffle Into Shot Put',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2400,
    'https://www.muscleandstrength.com/exercises/rotational-med-ball-shuffle-into-shot-put'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Upright Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4000000,
    'https://www.muscleandstrength.com/exercises/upright-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3299999,
    'https://www.muscleandstrength.com/exercises/dumbbell-shrugs.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Barbell Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1700000,
    'https://www.muscleandstrength.com/exercises/barbell-shrug.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Dumbbell Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    242100,
    'https://www.muscleandstrength.com/exercises/seated-dumbbell-shrug.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Wide Grip Upright Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    231399,
    'https://www.muscleandstrength.com/exercises/wide-grip-upright-rows.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Row to Neck',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    34299,
    'https://www.muscleandstrength.com/exercises/cable-row-to-neck.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Behind-The-Back Barbell Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    93300,
    'https://www.muscleandstrength.com/exercises/behind-the-back-barbell-shrug.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Dumbbell Upright Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    153899,
    'https://www.muscleandstrength.com/exercises/one-arm-dumbbell-upright-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Trap Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Trap Bar Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    26799,
    'https://www.muscleandstrength.com/exercises/trap-bar-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'High Pull',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    32299,
    'https://www.muscleandstrength.com/exercises/high-pull'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Gittleson Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10300,
    'https://www.muscleandstrength.com/exercises/gittleson-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Cable Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    43400,
    'https://www.muscleandstrength.com/exercises/seated-cable-shrug.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Smith Machine Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    153800,
    'https://www.muscleandstrength.com/exercises/smith-machine-shrug.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Snatch Grip High Pull',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10399,
    'https://www.muscleandstrength.com/exercises/snatch-grip-high-pull'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'T-Bar Machine Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8199,
    'https://www.muscleandstrength.com/exercises/t-bar-machine-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Machine Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15300,
    'https://www.muscleandstrength.com/exercises/machine-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Overhead Barbell Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12600,
    'https://www.muscleandstrength.com/exercises/overhead-barbell-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Tate Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    89300,
    'https://www.muscleandstrength.com/exercises/tate-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    94599,
    'https://www.muscleandstrength.com/exercises/cable-shrug.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Inverted Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7699,
    'https://www.muscleandstrength.com/exercises/inverted-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Snatch Grip Barbell Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11600,
    'https://www.muscleandstrength.com/exercises/snatch-grip-barbell-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '1 KB Kettlebell Sumo Deadlift High Pull',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8199,
    'https://www.muscleandstrength.com/exercises/1-kb-kettlebell-sumo-deadlift-high-pull'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Calf Machine Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8199,
    'https://www.muscleandstrength.com/exercises/standing-calf-machine-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '2 KB Kettlebell Sumo Deadlift High Pull',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2900,
    'https://www.muscleandstrength.com/exercises/2-kb-kettlebell-sumo-deadlift-high-pull'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Snatch Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3900,
    'https://www.muscleandstrength.com/exercises/snatch-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Sumo High Pull',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3099,
    'https://www.muscleandstrength.com/exercises/sumo-high-pull'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Cable Upright Row',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    45700,
    'https://www.muscleandstrength.com/exercises/lying-cable-upright-row.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Lacrosse Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Trap Lacrosse Ball',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    4099,
    'https://www.muscleandstrength.com/exercises/trap-lacrosse-ball'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Cable Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14600,
    'https://www.muscleandstrength.com/exercises/lying-cable-shrug.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Traps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Olympic Weightlifting'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Clean Shrug',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5500,
    'https://www.muscleandstrength.com/exercises/clean-shrug'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Straight Bar Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    5900000,
    'https://www.muscleandstrength.com/exercises/tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Dumbbell Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3400000,
    'https://www.muscleandstrength.com/exercises/two-arm-dumbbell-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Dumbbell Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2400000,
    'https://www.muscleandstrength.com/exercises/lying-dumbbell-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Rope Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599999,
    'https://www.muscleandstrength.com/exercises/rope-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Floor Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2099999,
    'https://www.muscleandstrength.com/exercises/dumbbell-floor-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'EZ Bar Skullcrusher',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2900000,
    'https://www.muscleandstrength.com/exercises/ez-bar-skullcrusher.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Close Grip Bench Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2599999,
    'https://www.muscleandstrength.com/exercises/close-grip-bench-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Lying Barbell Tricep Extension (Skull Crusher)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2799999,
    'https://www.muscleandstrength.com/exercises/lying-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Tricep Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2299999,
    'https://www.muscleandstrength.com/exercises/tricep-dip.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Dumbbell Tricep Kickback',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/tricep-kickback.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bent Over Dumbbell Tricep Kickback',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/bent-over-dumbbell-kickback.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Two Arm Standing Dumbbell Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/two-arm-standing-dumbbell-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'French Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1500000,
    'https://www.muscleandstrength.com/exercises/french-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Standing Dumbbell Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1100000,
    'https://www.muscleandstrength.com/exercises/one-arm-dumbbell-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Advanced')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Tricep Dips',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    694299,
    'https://www.muscleandstrength.com/exercises/weighted-tricep-dips.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Cable Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    472100,
    'https://www.muscleandstrength.com/exercises/reverse-grip-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Bench Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    1299999,
    'https://www.muscleandstrength.com/exercises/tricep-bench-dip.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '45 Degree Lying Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    192699,
    'https://www.muscleandstrength.com/exercises/back-of-the-head-lying-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'High Pulley Overhead Tricep Extension (Rope Extension)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    345299,
    'https://www.muscleandstrength.com/exercises/overhead-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Low Pulley Overhead Tricep Extension (Rope Extension)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    251100,
    'https://www.muscleandstrength.com/exercises/standing-low-pulley-overhead-tricep-extension-(rope-extension).html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Dumbbell Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    563400,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-dumbbell-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated French Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    940900,
    'https://www.muscleandstrength.com/exercises/overhead-barbell-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Close Grip Push Up',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    425700,
    'https://www.muscleandstrength.com/exercises/close-grip-push-up.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Cable Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    359500,
    'https://www.muscleandstrength.com/exercises/one-arm-cable-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse One-Arm Cable Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    180800,
    'https://www.muscleandstrength.com/exercises/reverse-grip-one-arm-tricep-pushdown.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Standing Overhead EZ Bar Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    88099,
    'https://www.muscleandstrength.com/exercises/standing-overhead-ez-bar-tricep-extension'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Skull Crusher',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    284100,
    'https://www.muscleandstrength.com/exercises/incline-skullcrusher.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Tricep Extension With V-Bar',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    203500,
    'https://www.muscleandstrength.com/exercises/cable-tricep-extension-with-v-bar.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Concentration Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11899,
    'https://www.muscleandstrength.com/exercises/cable-concentration-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Kettle Bells'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Kettlebell Floor Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    60200,
    'https://www.muscleandstrength.com/exercises/one-arm-kettlebell-floor-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Eccentric Only Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    109199,
    'https://www.muscleandstrength.com/exercises/eccentric-only-dip'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Machine'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Machine Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    36000,
    'https://www.muscleandstrength.com/exercises/machine-tricep-extension'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One Arm Bent Over Dumbbell Tricep Kickback',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    47599,
    'https://www.muscleandstrength.com/exercises/one-arm-bent-over-dumbbell-kickback.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Band Assisted Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    42799,
    'https://www.muscleandstrength.com/exercises/band-assisted-dip'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Inline Bench French Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    91900,
    'https://www.muscleandstrength.com/exercises/inline-bench-french-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Close Grip Press Behind-The-Neck',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13100,
    'https://www.muscleandstrength.com/exercises/close-grip-press-behind-neck.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Skull Crusher',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    19700,
    'https://www.muscleandstrength.com/exercises/reverse-grip-skullcrusher.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'EZ Bar Incline Skullcrusher',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    45299,
    'https://www.muscleandstrength.com/exercises/ez-bar-incline-skullcrusher.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Cable Tricep Kickback',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    87599,
    'https://www.muscleandstrength.com/exercises/cable-tricep-kickback.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Overhead Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    41400,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-overhead-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Bench Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    53900,
    'https://www.muscleandstrength.com/exercises/weighted-bench-dips.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip French Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    13000,
    'https://www.muscleandstrength.com/exercises/reverse-grip-french-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Cable Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    15399,
    'https://www.muscleandstrength.com/exercises/incline-cable-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bodyweight'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Three Bench Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9500,
    'https://www.muscleandstrength.com/exercises/three-bench-dip.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Incline Cable Tricep Extension (Rope Extension)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10199,
    'https://www.muscleandstrength.com/exercises/incline-bench-rope-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Dumbbell Kickback',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6400,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-dumbbell-kickback.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Lying Pronated Dumbbell Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    33299,
    'https://www.muscleandstrength.com/exercises/one-arm-pronated-dumbbell-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Reverse Grip One-Arm Overhead Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10100,
    'https://www.muscleandstrength.com/exercises/reverse-grip-one-arm-seated-overhead-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Conditioning'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Sled'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Overhead Tricep Extension Sled Drag',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    2299,
    'https://www.muscleandstrength.com/exercises/overhead-tricep-extension-sled-drag'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Seated Bent Over Dumbbell Kickback',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    16399,
    'https://www.muscleandstrength.com/exercises/one-arm-seated-bent-over-dumbbell-kickback.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Other'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Weighted Three Bench Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6099,
    'https://www.muscleandstrength.com/exercises/weighted-three-bench-dips.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip Seated French Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8800,
    'https://www.muscleandstrength.com/exercises/reverse-grip-seated-french-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Two-Arm Tricep Cable Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    14100,
    'https://www.muscleandstrength.com/exercises/standing-two-arm-tricep-cable-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Barbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Close Grip Pin Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    12600,
    'https://www.muscleandstrength.com/exercises/close-grip-pin-press'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Bands'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Banded Skullcrusher',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3000,
    'https://www.muscleandstrength.com/exercises/banded-skullcrusher'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Seated Alternating Bent Over Dumbbell Kickback',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7800,
    'https://www.muscleandstrength.com/exercises/alternate-seated-bent-over-dumbbell-kickback.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Dumbbell Kickbacks',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    10800,
    'https://www.muscleandstrength.com/exercises/exercise-ball-dumbbell-kickbacks.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    '45 Degree Lying Tricep Extension (EZ Bar)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    26799,
    'https://www.muscleandstrength.com/exercises/ez-bar-back-of-the-head-lying-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Alternating Lying Dumbbell Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    49000,
    'https://www.muscleandstrength.com/exercises/alternate-lying-dumbbell-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Cable'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Reverse Grip One-Arm Overhead Cable Tricep Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    9699,
    'https://www.muscleandstrength.com/exercises/reverse-grip-one-arm-standing-overhead-cable-tricep-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='SMR'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Lacrosse Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Triceps Lacrosse Ball',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    3200,
    'https://www.muscleandstrength.com/exercises/triceps-lacrosse-ball'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Compound'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Dip',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    8500,
    'https://www.muscleandstrength.com/exercises/exercise-ball-dip.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'One-Arm Lying Dumbbell Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    11800,
    'https://www.muscleandstrength.com/exercises/one-arm-lying-dumbbell-extension.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='EZ Bar'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Beginner')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Decline Lying Tricep Extension (Skullcrusher)',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    60299,
    'https://www.muscleandstrength.com/exercises/decline-lying-tricep-extension-skullcrusher.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Exercise Ball'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball French Press',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    6900,
    'https://www.muscleandstrength.com/exercises/swiss-ball-french-press.html'
  ON CONFLICT DO NOTHING;

  WITH
    target_lookup AS (SELECT id FROM muscle WHERE name='Triceps'),
    focus_lookup AS (SELECT id FROM focus WHERE name='Strength'),
    equipment_lookup AS (SELECT id FROM equipment WHERE name='Dumbbell'),
    force_lookup AS (SELECT id FROM force WHERE name='Isolation'),
    experience_lookup AS (SELECT id FROM experience WHERE name='Intermediate')
  INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
  SELECT
    'Exercise Ball Two-Arm Dumbbell Extension',
    (SELECT id FROM target_lookup),
    (SELECT id FROM focus_lookup),
    (SELECT id FROM equipment_lookup),
    (SELECT id FROM force_lookup),
    (SELECT id FROM experience_lookup),
    7199,
    'https://www.muscleandstrength.com/exercises/exercise-ball-two-arm-dumbbell-extension.html'
  ON CONFLICT DO NOTHING;

COMMIT;
