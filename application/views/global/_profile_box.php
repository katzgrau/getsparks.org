<div class="profile-image">
    <a href="/contributors/profile/<?php echo UserHelper::getUsername(); ?>" title="View Your Profile">
        <img src="<?php echo UserHelper::getAvatarURL(80); ?>" alt="Gravatar" />
    </a>
</div>
<div class="profile-links">
    <dl>
        <dd><a href="/contributors/profile/<?php echo UserHelper::getUsername(); ?>" title="View Your Profile">View Your Profile</a></dd>
        <dd><a href="/contributors/<?php echo UserHelper::getUsername(); ?>/profile/edit" title="Update Your Profile">Update Your Profile</a></dd>
        <dd><a href="/packages/add" title="Create a Spark">Create a Spark</a></dd>
        <dd class="last"><a href="/logout" title="Logout">Logout</a></dd>
    </dl>
</div>