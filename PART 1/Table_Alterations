-- Updating blank/NULL palette_tag entris to 'accent'
UPDATE COLORS
SET palette_tag = 'Accent'
Where palette_tag is NULL

-- adding column for accessibility evaluation
Alter Table Colors
ADD contrast_status VARCHAR(10) Default 'review';

-- deleting rows matching 'deprecated' criteria
DELETE From COLORS
Where palette_tag = 'deprecated';
