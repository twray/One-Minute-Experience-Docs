CREATE TABLE `artwork` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(20) DEFAULT 'published',
  `created_by` int(10) unsigned DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(10) unsigned DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `artist_name` varchar(200) DEFAULT NULL,
  `artist_nationality` varchar(200) DEFAULT NULL,
  `story_segment_1` varchar(160) DEFAULT NULL COMMENT 'Begin storytelling by describing the immediately noticeable element(s) in the artwork. This being, what the viewer can see, simply with her eyes.',
  `story_segment_2` varchar(160) DEFAULT NULL COMMENT 'Evoke curiosity with a statement and (if you wish) a question that leads up to the main interpretive content (the plot).',
  `story_segment_3` varchar(160) DEFAULT NULL COMMENT 'Explain and enlighten the reader with the plot of the story. Break the story up on two sections.',
  `story_segment_4` varchar(160) DEFAULT NULL COMMENT 'Explain and enlighten the reader with the plot of the story. Break the story into two sections.',
  `story_segment_5` varchar(160) DEFAULT NULL COMMENT 'Round up the story, leaving the reader with a curious mind, perhaps wanting more.',
  `image` int(10) unsigned DEFAULT NULL COMMENT 'A high resolution, digitised copy of the artwork, or a high quality photo of the artwork as on display. The photo should be taken directly facing the artwork, with no flash. The artwork should be entirely contained within the image, and it should occupy most or all of the image.',
  `image_recognition_tag_id` varchar(200) DEFAULT NULL COMMENT 'An internal tag ID that is used to help recognise this artwork. ',
  `year` varchar(200) DEFAULT NULL,
  `is_example` int(1) unsigned DEFAULT NULL COMMENT 'Determines whether this artwork should be displayed as an example.',
  `notes` text COMMENT 'Any useful notes about this object.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=478 DEFAULT CHARSET=latin1
;

CREATE TABLE `event_log` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `duration` int(11) DEFAULT '0',
  `session_code` varchar(200) DEFAULT NULL,
  `metadata` varchar(200) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3552 DEFAULT CHARSET=utf8mb4
;
