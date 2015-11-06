#!/bin/sh

# script to create all the data pipelines in AWS
./create-data-pipeline.sh "archived_medium_stats to Redshift" 			archived_medium_stats 			./configurations/archived_medium_stats.json		
./create-data-pipeline.sh "channels to Redshift" 				channels				./configurations/channels.json		
./create-data-pipeline.sh "featured_items to Redshift" 				featured_items				./configurations/featured_items.json		
./create-data-pipeline.sh "features to Redshift" 				features				./configurations/features.json		
./create-data-pipeline.sh "features_archives to Redshift" 			features_archives			./configurations/features_archives.json		
./create-data-pipeline.sh "mailing_list_subscriptions to Redshift"		mailing_list_scbscriptions		./configurations/mailing_list_subscriptions.json		
./create-data-pipeline.sh "mailing_lists to Redshift"				mailing_lists				./configurations/mailing_lists.json		
./create-data-pipeline.sh "media to Redshift"					media					./configurations/media.json		
./create-data-pipeline.sh "media_text to Redshift"				media_text				./configurations/media_text.json		
./create-data-pipeline.sh "medium_stats to Redshift"				medium_stats				./configurations/medium_stats.json		
./create-data-pipeline.sh "participants to Redshift"				participants				./configurations/participants.json		
./create-data-pipeline.sh "playlist_media to Redshift"				playlist_media				./configurations/playlist_media.json		
./create-data-pipeline.sh "playlist_medium_feature_archives to Redshift"	playlist_medium_feature_archives	./configurations/playlist_medium_feature_archives.json		
./create-data-pipeline.sh "playlists to Redshift"				playlists				./configurations/playlists.json		
