#!/bin/bash

# TOD): make this interactive or make it consume variables from a text file

# Set variables
title="My Awesome Website"
description="This is the best website ever"
keywords="portfolio, developer, front-end developer, front end developer"
author="Alex H"
robots="index, follow"
canonical="https://www.myawesomewebsite.com"

# Generate meta tag with SEO data
meta_tag="<meta name=\"title\" content=\"$title\" />\n<meta name=\"description\" content=\"$description\" />\n<meta name=\"keywords\" content=\"$keywords\" />\n<meta name=\"author\" content=\"$author\" />\n<meta name=\"robots\" content=\"$robots\" />\n<link rel=\"canonical\" href=\"$canonical\" />"

# Output meta tag to terminal
echo $meta_tag

# Output meta tag to file
echo $meta_tag > meta-tags.html
