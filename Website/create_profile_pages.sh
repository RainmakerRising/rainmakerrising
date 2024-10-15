^/#!/bin/bash

# Directory for profile pages
profile_dir="profile_pages"

# Create the profile_pages directory if it doesn't exist
mkdir -p $profile_dir

# Define an associative array with profile titles and content
declare -A profiles=(
    ["practical-achiever"]="Practical Achiever: The Practical Achiever thrives on structure, goal-setting, and detailed planning."
    ["compassionate-creator"]="Compassionate Creator: The Compassionate Creator uses empathy and creativity to connect with others."
    ["bold-leader"]="Bold Leader: The Bold Leader thrives on taking charge and inspiring others to take action."
    ["curious-innovator"]="Curious Innovator: The Curious Innovator loves to explore new ideas and bring creative solutions to challenges."
    ["visionary-strategist"]="Visionary Strategist: The Visionary Strategist excels at seeing the big picture and planning for long-term success."
    ["fearless-explorer"]="Fearless Explorer: The Fearless Explorer is unafraid to take risks and seek out new adventures."
    ["resilient-optimist"]="Resilient Optimist: The Resilient Optimist stays positive and keeps moving forward despite challenges."
    ["grounded-guardian"]="Grounded Guardian: The Grounded Guardian seeks stability and safety for themselves and others."
    ["inspiring-mentor"]="Inspiring Mentor: The Inspiring Mentor thrives on helping others grow and succeed."
    ["balanced-harmonizer"]="Balanced Harmonizer: The Balanced Harmonizer excels at maintaining balance in all areas of life."
    ["creative-dreamer"]="Creative Dreamer: The Creative Dreamer is driven by imagination and vision."
    ["steady-builder"]="Steady Builder: The Steady Builder is focused on creating solid foundations and incremental progress."
)

# Function to create the HTML file with the content
create_profile_page() {
    local profile_key=$1
    local profile_title=$(echo "${profiles[$profile_key]}" | cut -d':' -f1)
    local profile_description=$(echo "${profiles[$profile_key]}" | cut -d':' -f2)

    # Create the HTML file with the corresponding content
    cat <<EOL > "$profile_dir/$profile_key.html"
---
layout: default
title: $profile_title
---
<section class="profile-section">
    <h1>$profile_title</h1>
    <p>$profile_description</p>
    <ul>
        <li><a href="/assets/resources/guide.pdf">Download Guide</a></li>
        <li><a href="/assets/resources/workbook.pdf">Download Workbook</a></li>
        <li><a href="/assets/resources/journal.pdf">Download Journal</a></li>
    </ul>
</section>
EOL
}

# Iterate over the profiles array and create each profile page
for profile in "${!profiles[@]}"; do
    create_profile_page "$profile"
    echo "Created $profile.html"
done

echo "All profile pages have been created successfully!"
/bin/bash

# Directory for profile pages
profile_dir="profile_pages"

# Create the profile_pages directory if it doesn't exist
mkdir -p $profile_dir

# Define an associative array with profile titles and content
declare -A profiles=(
    ["practical-achiever"]="Practical Achiever: The Practical Achiever thrives on structure, goal-setting, and detailed planning."
    ["compassionate-creator"]="Compassionate Creator: The Compassionate Creator uses empathy and creativity to connect with others."
    ["bold-leader"]="Bold Leader: The Bold Leader thrives on taking charge and inspiring others to take action."
    ["curious-innovator"]="Curious Innovator: The Curious Innovator loves to explore new ideas and bring creative solutions to challenges."
    ["visionary-strategist"]="Visionary Strategist: The Visionary Strategist excels at seeing the big picture and planning for long-term success."
    ["fearless-explorer"]="Fearless Explorer: The Fearless Explorer is unafraid to take risks and seek out new adventures."
    ["resilient-optimist"]="Resilient Optimist: The Resilient Optimist stays positive and keeps moving forward despite challenges."
    ["grounded-guardian"]="Grounded Guardian: The Grounded Guardian seeks stability and safety for themselves and others."
    ["inspiring-mentor"]="Inspiring Mentor: The Inspiring Mentor thrives on helping others grow and succeed."
    ["balanced-harmonizer"]="Balanced Harmonizer: The Balanced Harmonizer excels at maintaining balance in all areas of life."
    ["creative-dreamer"]="Creative Dreamer: The Creative Dreamer is driven by imagination and vision."
    ["steady-builder"]="Steady Builder: The Steady Builder is focused on creating solid foundations and incremental progress."
)

# Function to create the HTML file with the content
create_profile_page() {
    local profile_key=$1
    local profile_title=$(echo "${profiles[$profile_key]}" | cut -d':' -f1)
    local profile_description=$(echo "${profiles[$profile_key]}" | cut -d':' -f2)

    # Create the HTML file with the corresponding content
    cat <<EOL > "$profile_dir/$profile_key.html"
---
layout: default
title: $profile_title
---
<section class="profile-section">
    <h1>$profile_title</h1>
    <p>$profile_description</p>
    <ul>
        <li><a href="/assets/resources/guide.pdf">Download Guide</a></li>
        <li><a href="/assets/resources/workbook.pdf">Download Workbook</a></li>
        <li><a href="/assets/resources/journal.pdf">Download Journal</a></li>
    </ul>
</section>
EOL
}

# Iterate over the profiles array and create each profile page
for profile in "${!pro
