DROP TABLE IF EXISTS ipl_matches;

CREATE TABLE ipl_matches (
    id TEXT, city TEXT, match_date TEXT, player_of_match TEXT, venue TEXT, 
    team1 TEXT, team2 TEXT, toss_winner TEXT, toss_decision TEXT, 
    winner TEXT, result TEXT, result_margin TEXT, target_runs TEXT, 
    target_overs TEXT, super_over TEXT, method TEXT, umpire1 TEXT, umpire2 TEXT,
    extra_col1 TEXT, extra_col2 TEXT -- Indha rendu extra columns thaan "Extra Data" error-ah thadukkum
);
SELECT * FROM ipl_matches LIMIT 10;
ALTER TABLE IPL_MATCHES
DROP COLUMN EXTRA_COL1,
DROP COLUMN EXTRA_COL2;
UPDATE IPL_MATCHES SET METHOD = NULL WHERE METHOD = 'NA';
UPDATE IPL_MATCHES SET RESULT = NULL WHERE RESULT = 'NA';
UPDATE IPL_MATCHES SET RESULT_MARGIN = '0' WHERE RESULT_MARGIN = 'NA' OR RESULT_MARGIN IS NULL;
SELECT winner, venue, result_margin 
FROM ipl_matches 
WHERE winner IS NOT NULL 
LIMIT 10;
SELECT * FROM IPL_MATCHES;