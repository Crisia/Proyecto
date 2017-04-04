<p>Lista de usuarios:</p>

<?php foreach($users as $user) { ?>
  <p>
    <a href='/users/show/?id=<?php echo $user->id; ?>'><?php echo $user->name; ?></a>
  </p>
<?php } ?>