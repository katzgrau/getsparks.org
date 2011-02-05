<?php $this->load->view('global/_header.php'); ?>

<form action="<?php echo base_url(); ?>packages/add" method="post">
    <div class="input-field">
        <div class="field-name">
            Name
        </div>
        <div class="field-value">
            <input type="text" name="name" value="" /><br />
            <small>(only lowercase letters, dashes, underscores, and numbers)</small>
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Display Name
        </div>
        <div class="field-value">
            <input type="text" name="display_name" value="" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Description
        </div>
        <div class="field-value">
            <textarea name="description"></textarea>
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Repository Type
        </div>
        <div class="field-value">
            <select name="repository_type">
                <option value="hg">Mercurial (hg)</option>
                <option value="git">Git (git)</option>
                <option value="zip">Zip (zip)</option>
            </select>
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Clone URL (or zip location)
        </div>
        <div class="field-value">
            <input type="text" name="base_location" value="" /><br />
            <small>e.g., https://bitbucket.org/katzgrau/ci-sparks-repo</small>
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Submit
        </div>
        <div class="field-value">
            <input type="submit" name="submit" value="Submit" />
        </div>
    </div>
</form>

<?php $this->load->view('global/_footer.php'); ?>